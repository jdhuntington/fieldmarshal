$:.unshift(File.expand_path(File.join(File.dirname(__FILE__), '..')))
load 'ec2'

describe EC2Command do

  before do
    @ec2command = EC2Command.new
  end

  describe '#create' do
    it 'should spin up a new instance' do
      $all_instances.should_receive(:create).with('myserver1')
      @ec2command.create %w{ myserver1 }
    end

    it 'should raise an error if no arguments were passed' do
      lambda { @ec2command.create [] }.should raise_exception(FieldMarshalCommandException)
    end

    it 'should name the instance in SDB' do
      $all_instances.should_receive(:name_instance).with("myserver1", 'i-999999999')
      $all_instances.stub!(:create).and_return({:aws_instance_id => 'i-999999999'})
      @ec2command.create %w{ myserver1 }
    end
  end
end

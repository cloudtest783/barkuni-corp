import boto3
def create_ec2_instance(subnet_id, ami_id, instance_type, key_name):
    ec2 = boto3.client('ec2')
    instance = ec2.run_instances(
        ImageId=ami_id,
        InstanceType=instance_type,
        KeyName=key_name,
        SubnetId=subnet_id,
        MinCount=1,
        MaxCount=1
    )
    return instance
# Example usage
if __name__ == "__main__":
    subnet_id = 'subnet-12345678'
    ami_id = 'ami-12345678'
    instance_type = 't2.micro'
    key_name = 'my-key-pair'
    instance = create_ec2_instance(subnet_id, ami_id, instance_type, key_name)
    print(instance)
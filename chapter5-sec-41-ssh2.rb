control 'SEC-41-SSH2' do
    impact 1.0
    title 'SEC-41-SSH2'
    desc 'Only SSH2 is allowed'
    ref 'PCI_DSS-QRG-v3_2_1.pdf Req.4.1.e'
    
    describe sshd_config do
       its('Protocol') { should eq('2') }
    end
 end
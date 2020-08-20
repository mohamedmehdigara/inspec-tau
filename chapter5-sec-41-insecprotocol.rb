control 'SEC-41-INSECPROTOCOL' do 
   impact 1.0
   title 'SEC-41-SSH2'
   desc 'Only secure protocols are allowed'
   ref 'PCI_DSS-QRG-v3_2_1.pdf Req.4.1.e'
   
   describe package('telnetd') do
      it { should_not be_installed }
   end
end

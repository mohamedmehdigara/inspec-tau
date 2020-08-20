control 'SEC-41-HTTPSONLY' do
   impact 1.0
   title 'SEC-41-HTTPSONLY'
   desc 'Only HTTPS is allowed'
   ref 'PCI_DSS-QRG-v3_2_1.pdf Req.4.1.e'
   
   describe port(80) do
      it { should_not be_listening }
   end
   
   describe port(443) do
      it { should be_listening }
      its('protocols') {should include 'tcp'}
   end
end
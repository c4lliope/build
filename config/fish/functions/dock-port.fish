function dock-port --description 'Set up port forwarding for the VBox virtual machine `default`'
  VBoxManage modifyvm "default" --natpf1 "tcp-port$argv[1],tcp,,$argv[1],,$argv[1]";
  VBoxManage modifyvm "default" --natpf1 "udp-port$argv[1],udp,,$argv[1],,$argv[1]";
end

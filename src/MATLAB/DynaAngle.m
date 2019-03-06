function angles = DynaAngle(mode, JpubORsub, angle)

    if mode == 1
        msg = rosmessage(JpubORsub);
        msg.Data = angle;
        send(JpubORsub, msg);
    elseif mode == 0
        n = length(JpubORsub);
    angles = zeros(n);
      for i = 1:n
        data = receive(JpubORsub(i), 1);
        angles(i) = data.CurrentPos;
      end
    end
        
end

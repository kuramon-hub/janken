loop do
puts "1(グー)  2(チョキ) ３(パー) を選んでね"

#相手の手をランダムで表示する
    janken_type = gets.to_s
    janken_type = janken_type.chomp

    type_array = ["グー","チョキ","パー"]
    direction_array = ["上","下","左","右"]
    
#じゃんけんで出した手ごとに処理する
    case janken_type
      when "1" then #グーを出した場合 　
        puts "あなた：グー"
        opponent = type_array[rand(3)]
        puts"相手：#{opponent}"   
        
        case opponent
            when type_array[1] then #勝った場合
               puts "指す方向を選んでね"
                puts "1(上) 2(下) 3(左) 4(右)"
                direction_type = gets.to_s
                direction_type = direction_type.chomp 
                opponent = direction_array[rand(4)]
                puts "あなた：#{direction_type}"
                puts "相手：#{opponent}"       
                if opponent =="上" then
                    opponent = "1"
                elsif opponent =="下" then
                    opponent = "2"
                elsif opponent =="左" then
                    opponent = "3"
                elsif opponent =="右" then
                    opponent = "4"
                end
                    if direction_type == opponent then
                         puts "おめでとう。あなたの勝ちです！"
                         break
                    else
                        puts "もう一回！"
                    end
                    
            when type_array[0] then #あいこの場合
               puts "あいこです。やり直し！"

            when type_array[2] then #負けた場合
               puts "向く方向を選んでね"
                puts "1(上) 2(下) 3(左) 4(右)"
                direction_type = gets.to_s
                direction_type = direction_type.chomp 
                opponent = direction_array[rand(4)]
                puts "あなた：#{direction_type}"
                puts "相手：#{opponent}"   
                if opponent =="上" then
                    opponent = "1"
                elsif opponent =="下" then
                    opponent = "2"
                elsif opponent =="左" then
                    opponent = "3"
                elsif opponent =="右" then
                    opponent = "4"
                end
               
                    if direction_type == opponent then
                         puts "あなたの負けです。どんまい！"
                         break
                    else
                        puts "もう一回！"
                    end
        end
            
      when "2" then #チョキ
        puts "あなた：チョキ"
        opponent = type_array[rand(3)]
        puts"相手：#{opponent}"    
        
        case opponent
            when type_array[2] then #勝った場合
               puts "指す方向を選んでね"
                puts "1(上) 2(下) 3(左) 4(右)"
                direction_type = gets.to_s
                direction_type = direction_type.chomp 
                opponent = direction_array[rand(4)]
                puts "あなた：#{direction_type}"
                puts "相手：#{opponent}"     
                if opponent =="上" then
                    opponent = "1"
                elsif opponent =="下" then
                    opponent = "2"
                elsif opponent =="左" then
                    opponent = "3"
                elsif opponent =="右" then
                    opponent = "4"
                end

                    if direction_type == opponent then
                         puts "おめでとう。あなたの勝ちです！"
                         break
                    else
                        puts "もう一回！"
                    end
                    
            when type_array[1] then #あいこの場合
               puts "あいこです。やり直し！"

            when type_array[0] then #負けた場合
               puts "向く方向を選んでね"
                puts "1(上) 2(下) 3(左) 4(右)"
                direction_type = gets.to_s
                direction_type = direction_type.chomp 
                opponent = direction_array[rand(4)]
                puts "あなた：#{direction_type}"
                puts "相手：#{opponent}"   
                if opponent =="上" then
                    opponent = "1"
                elsif opponent =="下" then
                    opponent = "2"
                elsif opponent =="左" then
                    opponent = "3"
                elsif opponent =="右" then
                    opponent = "4"
                end

                    if direction_type == opponent then
                         puts "あなたの負けです。どんまい！"
                         break
                    else
                        puts "もう一回！"
                    end
        end     

      when "3" #パー
        puts "あなた：パー"
        opponent = type_array[rand(3)]
        puts"相手：#{opponent}"
        
        case opponent
            when type_array[0] then #勝った場合
               puts "指す方向を選んでね"
                puts "1(上) 2(下) 3(左) 4(右)"
                direction_type = gets.to_s
                direction_type = direction_type.chomp 
                opponent = direction_array[rand(4)]
                puts "あなた：#{direction_type}"
                puts "相手：#{opponent}"    
                if opponent =="上" then
                    opponent = "1"
                elsif opponent =="下" then
                    opponent = "2"
                elsif opponent =="左" then
                    opponent = "3"
                elsif opponent =="右" then
                    opponent = "4"
                end

                    if direction_type == opponent then
                         puts "おめでとう。あなたの勝ちです！"
                         break
                    else
                        puts "もう一回！"
                    end
                    
            when type_array[2] then #あいこの場合
               puts "あいこです。やり直し！"

            when type_array[1] then #負けた場合
               puts "向く方向を選んでね"
                puts "1(上) 2(下) 3(左) 4(右)"
                direction_type = gets.to_s
                direction_type = direction_type.chomp 
                opponent = direction_array[rand(4)]
                puts "あなた：#{direction_type}"
                puts "相手：#{opponent}"      
                if opponent =="上" then
                    opponent = "1"
                elsif opponent =="下" then
                    opponent = "2"
                elsif opponent =="左" then
                    opponent = "3"
                elsif opponent =="右" then
                    opponent = "4"
                end

                    if direction_type == opponent then
                         puts "あなたの負けです。どんまい！"
                         break
                    else
                        puts "もう一回！"
                    end
        end
    else
      puts "そんな手があったなんて。。。やり直してくださいね♪"
    end
end
#!/home/y/var/yinst/last-active/yruby22/bin64/ruby2.2
#
#
#

require 'mysql'


Hostname = `echo $HOSTNAME`
#@date = `date +%Y-%m-%d`
datte = `date +%Y%m%d`
Path = "/net/direct/dashboard/sajeesh/ydaily03.direct.gq1.yahoo.com/Homerun_3.#{datte}".strip
#Path = "/home/sajeesh/ydaily03.direct.gq1.yahoo.com/Homerun_3.#{datte}".strip

def watch_for(file, pattern, pattern2, pattern3, pattern4)

                 f = File.open(file,"r")
                 f.seek(0,IO::SEEK_END)
                        

             while true do
               select([f])
               line = f.gets
                  if line =~ pattern
                       start_time  = line.sub(/ .*$/, "")
                       bucket_name = line.sub(/^.*bucket : /, "").chomp

                            if bucket_name == "East4"

                                       a = "E4"
                                      

                                  elsif bucket_name == "East6"
 
                                        a = "E6"

                                  elsif bucket_name == "East8"

                                        a = "E8"

                                  elsif bucket_name == "East10"

                                        a = "E10"
                                     
                                  elsif bucket_name == "East12"

                                        a = "E12"

                                   elsif bucket_name == "East14"

                                        a = "E14"

                                  elsif bucket_name == "East16"

                                        a = "E16"

                                  elsif bucket_name == "West2"

                                        a = "W2"

                                  elsif bucket_name == "West4"

                                        a = "W4"
                                  
                                  elsif bucket_name == "West6"

                                        a = "W6"

                                  elsif bucket_name == "West8"

                                        a = "W8"
              
                                  elsif bucket_name == "West10"
 
                                        a = "W10"

                                   elsif bucket_name == "West12"

                                        a = "W12"
                      
                                  elsif bucket_name == "West14"
                     
                                        a = "W14"
                  
                    end    
  
                            start_input(start_time, a)


                     elsif line =~ pattern2

                            end_time =  line.sub(/ .*$/, "")
                          
                            end_input(end_time, a) 
                              
                
                     elsif line =~ pattern3

                             flag = 1
                             
                             errror_flag(flag, a)

                                           
                     elsif line =~ pattern4

                             system "echo \"Log file completed\" > /home/sajeesh/end.txt"

                             exit 0 

                   end
        end

end



def start_input(time, bucket)
             
              date = `date +%Y-%m-%d`
              #a = bucket.chomp
              puts "bucket"
              db = Mysql.new('localhost', 'sajeesh', 'sajeesh123', 'dashboard')


              begin
                  db.query "update offgrid_processing set start_time = STR_TO_DATE('#{time}', '%Y%m%d%H:%i:%s') where dated = '#{date}' and zone = '#{bucket}';" 
                  #db.query "INSERT INTO data (Start_time, Bucket_name) values ('#{time}', '#{bucket}');"
                  
             ensure

                 db.close

             end

end


def end_input(time, bucket)

              date = `date +%Y-%m-%d`

              db = Mysql.new('localhost', 'sajeesh', 'sajeesh123', 'dashboard')

              begin
                   db.query "update offgrid_processing set end_time = STR_TO_DATE('#{time}', '%Y%m%d%H:%i:%s') where dated = '#{date}' and zone = '#{bucket}';"
                   #db.query "INSERT INTO data (End_time, Bucket_name) values ('#{time}', '#{bucket}');"
                 
               ensure
                 
                   db.close
                 
                end
                 
end

def errror_flag(value, bucket)

                date = `date +%Y-%m-%d`

                db = Mysql.new('localhost', 'sajeesh', 'sajeesh123', 'dashboard')

                begin
                       db.query "update offgrid_processing set error_flag = #{value} where dated = '#{date}' and zone = '#{bucket}';" 
                     # db.query "INSERT INTO data (End_time, Bucket_name) values ('#{time}', '#{bucket}');"
 
                ensure

                     db.close

                end

end

if File.file?(Path)

      watch_for(Path.to_s, /Processing bucket/, /Homerun processing completed for/, /FATAL/, /Terminating the script/)
  
      else
     
      puts "end #{Path}"
      puts "No file"
      exit

end

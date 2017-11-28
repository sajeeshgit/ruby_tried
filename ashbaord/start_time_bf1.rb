#!/home/y/var/yinst/last-active/yruby22/bin64/ruby2.2
#
#
#

require 'mysql'


Hostname = `echo $HOSTNAME`
#@date = `date +%Y-%m-%d`
datte = `date +%Y%m%d`
Path = "/net/direct/dashboard/sajeesh/ydaily01.direct.bf1.yahoo.com/Homerun_3.#{datte}".strip
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

                            if bucket_name == "East3"

                                       a = "E3"
                                      

                                  elsif bucket_name == "East5"
 
                                        a = "E5"

                                  elsif bucket_name == "East7"

                                        a = "E7"

                                  elsif bucket_name == "East9"

                                        a = "E9"
                                     
                                  elsif bucket_name == "East11"

                                        a = "E11"

                                   elsif bucket_name == "East13"

                                        a = "E13"

                                  elsif bucket_name == "East15"

                                        a = "E15"

                                  elsif bucket_name == "West1"

                                        a = "W1"

                                  elsif bucket_name == "West3"

                                        a = "W3"
                                  
                                  elsif bucket_name == "West5"

                                        a = "W5"

                                  elsif bucket_name == "West7"

                                        a = "W7"
              
                                  elsif bucket_name == "West9"
 
                                        a = "W9"

                                   elsif bucket_name == "West11"

                                        a = "W11"
                      
                                  elsif bucket_name == "West13"
                     
                                        a = "W13"
                  
                    end    
  
                            start_input(start_time, a)


                     elsif line =~ pattern2

                            end_time =  line.sub(/ .*$/, "")
                          
                            end_input(end_time, a) 
                              
                
                     elsif line =~ pattern3

                             flag = 1
                             
                             errror_flag(flag, a)

                                           
                     elsif line =~ pattern4

                             system "echo \"Log file completed\" > /dev/null"

                             exit 0 

                   end
        end

end



def start_input(time, bucket)
             
              date = `date +%Y-%m-%d`
              #a = bucket.chomp

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

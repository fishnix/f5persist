class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def parse_persist_records(listdata)
    regex =/^-+\s+TMM\s+(\d+)\s+Mode\s+(\w+)\s+Value\s+\"?(.*)\"?\s+Age\s+\(sec\.\)\s+(\d+)\s+Virtual\s+Name\s+(\S*)\s+Virtual\s+Addr\s+(\S*)\s+Node\s+Addr\s+(\S*)\s+Pool\s+Name\s+(\S*)\s+Client\s+Addr\s+(\S*)/
    
    prs = Array.new
    
    logger.debug "DEBUG: parsing listdata"
    
    listdata.scan(regex).each do |m|
      c = Hash.new
      
      logger.debug "DEBUG: parsing listdata"
      
      #c[:full] = m[0]
      c[:tmm] = m[0]
      c[:mode] = m[1]
      c[:value] = m[2]
      c[:age] = m[3]
      c[:virtual_name] = m[4]
      c[:virtual_addr] = m[5]
      c[:node_addr] = m[6]
      c[:pool_name] = m[7]
      c[:client_addr] = m[8]
      
      c.each do |k,v|
        logger.debug "DEBUG: Key: " + k.to_s + ", Value: " + v.to_s
      end
      
      logger.debug "DEBUG: pushing hash onto array, array now has " + prs.length.to_s + " entries."
      prs.push(c)
      
    end
    
    prs
        
  end
  
end

require 'selenium-webdriver'


module Page_utils


  def title
    @driver.title
  end

  def openPage(arg1)
    @driver.get(arg1)
    self
  end

  def element(elem)
    begin
      el = @driver.find_element(elem)
      if block_given?
        #return '123'
        yield(el)
      else
        el
      end
    rescue
      nil
    end
  end

end

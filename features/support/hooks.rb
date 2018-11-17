Before do
    #Capybara.page.current_window.resize_to(1280,720)
    Capybara.page.current_window.maximize
end
After do
    puts "fim do teste"
end
Deface::Override.new(:virtual_path => 'spree/contact_us/contacts/new',
                     :name => 'remove_content_for_sidebar',
                     :sequence => {:before => 'remove_form_on_contact_us'},
                     :remove => "erb[silent]:contains('content_for :sidebar do ')",
                     :closing_selector => "erb[silent]:contains('end')")
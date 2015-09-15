Deface::Override.new(:virtual_path => 'spree/contact_us/contacts/new',
                     :name => 'new_contact_view',
                     :insert_after => "h1",
                     :sequence => {:after => 'remove_content_for_sidebar'},
                     :partial => 'spree/shared/contact_us')
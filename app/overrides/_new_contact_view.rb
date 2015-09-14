Deface::Override.new(:virtual_path => 'spree/contact_us/contacts/new',
                     :name => 'new_contact_view',
                     :insert_after => "h1",
                     :partial => 'spree/contact_us/contacts/new')
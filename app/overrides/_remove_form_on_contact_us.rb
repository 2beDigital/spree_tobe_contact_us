Deface::Override.new(:virtual_path => 'spree/contact_us/contacts/new',
                     :name => 'remove_form_on_contact_us',
                     :sequence => {:before => 'new_contact_view'},
                     :remove => "erb[loud]:contains('form_for @contact, :url => contacts_path, :html => { :novalidate => '' } do |f|')")
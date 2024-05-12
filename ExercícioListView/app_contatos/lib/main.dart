import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact Manager',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContactListScreen(),
    );
  }
}

class Contact {
  final String name;
  final String phone;
  final String email;

  Contact({
    required this.name,
    required this.phone,
    required this.email,
  });
}

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({Key? key}) : super(key: key);

  @override
  _ContactListScreenState createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  List<Contact> contacts = [
    Contact(
        name: 'Luiz Felipe', phone: '1234567890', email: 'lfng@example.com'),
    Contact(
        name: 'Aysha Rodrigues',
        phone: '9876543210',
        email: 'ysha@example.com'),
  ];

  void _addContact(Contact newContact) {
    setState(() {
      contacts.add(newContact);
    });
  }

  void _editContact(int index, Contact editedContact) {
    setState(() {
      contacts[index] = editedContact;
    });
  }

  void _deleteContact(int index) {
    setState(() {
      contacts.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          final contact = contacts[index];
          return ListTile(
            title: Text(contact.name),
            subtitle: Text(contact.phone),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactDetailScreen(
                    contact: contact,
                    index: index,
                    editContact: _editContact,
                    deleteContact: _deleteContact,
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddContactScreen(addContact: _addContact),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class ContactDetailScreen extends StatelessWidget {
  final Contact contact;
  final int index;
  final Function(int, Contact) editContact;
  final Function(int) deleteContact;

  const ContactDetailScreen({
    required this.contact,
    required this.index,
    required this.editContact,
    required this.deleteContact,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController =
        TextEditingController(text: contact.name);
    final TextEditingController phoneController =
        TextEditingController(text: contact.phone);
    final TextEditingController emailController =
        TextEditingController(text: contact.email);

    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                final editedContact = Contact(
                  name: nameController.text,
                  phone: phoneController.text,
                  email: emailController.text,
                );
                editContact(index, editedContact);
                Navigator.pop(context);
              },
              child: Text('Save Changes'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                deleteContact(index);
                Navigator.pop(context);
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: Text('Delete Contact'),
            ),
          ],
        ),
      ),
    );
  }
}

class AddContactScreen extends StatelessWidget {
  final Function(Contact) addContact;

  const AddContactScreen({required this.addContact});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                final newContact = Contact(
                  name: nameController.text,
                  phone: phoneController.text,
                  email: emailController.text,
                );
                addContact(newContact);
                Navigator.pop(context);
              },
              child: Text('Add Contact'),
            ),
          ],
        ),
      ),
    );
  }
}

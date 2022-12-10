import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        bottom: const TabBar(
          tabs: [
            Tab(
              child: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("Chats"),
            ),
            Tab(
              child: Text("Status"),
            ),
            Tab(
              child: Text("Calls"),
            ),
          ],
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => const [
                PopupMenuItem(value: 1,child: Text("New Group"),),
                PopupMenuItem(value: 2,child: Text("Settings"),),
                PopupMenuItem(value: 3,child: Text("Log out"),),
              ]
          ),
        ],
      ),
      body: TabBarView(
        children: [
          const Text("Camera"),
          ListView.builder(
            //CHATS
              itemCount: 2,
              itemBuilder: (context,index){
                return const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage("https://images.pexels.com/photos/13950527/pexels-photo-13950527.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                  ),
                  title: Text("Hod sir"),
                  subtitle: Text("Tereko fail nahi hone dunga"),
                  // trailing: Text("7:07 PM"),
                );
              }),
          ListView.builder(
            //Status
              itemCount: 2,
              itemBuilder: (context,index){
                if(index==0){
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 4,
                                )
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage("https://images.pexels.com/photos/13950527/pexels-photo-13950527.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: CircleAvatar(
                                  radius: 7,
                                  backgroundColor: Colors.green,
                                  child: Icon(
                                    Icons.add_a_photo,size: 10,color: Colors.green,),
                                ),
                              ),
                            ),
                          ),
                          title:  const Text("My Status"),
                          subtitle: const Text("Tap to add status"),
                          // trailing: Icon(index/2==0 ? Icons.phone: Icons.video_call),
                        ),
                        const Text("Viewed Status"),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 4,
                                )
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage("https://images.pexels.com/photos/13950527/pexels-photo-13950527.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                            ),
                          ),
                          title: Text("Chinmay"),
                          subtitle: Text("35 min ago"),
                          // trailing: Icon(index/2==0 ? Icons.phone: Icons.video_call),
                        ),
                        const Text("New Updates"),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 4,
                                )
                            ),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage("https://images.pexels.com/photos/13950527/pexels-photo-13950527.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                            ),
                          ),
                          title: Text("Chinmay"),
                          subtitle: Text("35 min ago"),
                          // trailing: Icon(index/2==0 ? Icons.phone: Icons.video_call),
                        ),
                      ],
                    ),
                  );
                }
                else{
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 4,
                          )
                      ),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage("https://images.pexels.com/photos/13950527/pexels-photo-13950527.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                      ),
                    ),
                    title: Text("Chinmay"),
                    subtitle: Text("35 min ago"),
                    // trailing: Icon(index/2==0 ? Icons.phone: Icons.video_call),
                  );
                }
              }),
          ListView.builder(
            //CALLS
              itemCount: 2,
              itemBuilder: (context,index){
                return ListTile(
                  leading: Container(
                    child: const CircleAvatar(
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/13950527/pexels-photo-13950527.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
                    ),
                  ),
                  title: Text("Chinmay"),
                  subtitle: Text(index/2==1 ? "You missed a audio call" : "You missed a video call"),
                  trailing: Icon(index/2==0 ? Icons.phone: Icons.video_call),
                );
              }),
          // ListView.builder(
          //     itemCount: 2,
          //     itemBuilder: (context,index){
          //     }),
        ],


      ),
    ),

    );

  }
}

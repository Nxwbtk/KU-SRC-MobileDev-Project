import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:ku_app/admin/admin_patch_news.dart';
import 'package:ku_app/admin/admin_post_news_form.dart';

class PostNewsPage extends StatefulWidget {
  const PostNewsPage({super.key});

  @override
  State<PostNewsPage> createState() => _PostNewsPageState();
}

class _PostNewsPageState extends State<PostNewsPage> {
  CollectionReference blogCollection =
      FirebaseFirestore.instance.collection('admin_blog');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('บทความข่าวสาร'),
      ),
      body: StreamBuilder(
          stream: blogCollection.snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  DocumentSnapshot blog = snapshot.data!.docs[index];
                  return Card(
                    child: ListTile(
                      // ignore: prefer_interpolation_to_compose_strings
                      title: Text("หัวข้อ: " + blog['title'],
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: Text(
                        // ignore: prefer_interpolation_to_compose_strings
                        "รายละเอียด: " +
                            (blog['detail'].length > 20
                                ? blog['detail'].substring(0, 20) + '...'
                                : blog['detail']),
                      ),
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text("ลบบทความ?"),
                                content: const Text(
                                    "คุณต้องการลบบทความนี้ใช่หรือไม่?"),
                                actions: [
                                  TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("ยกเลิก")),
                                  TextButton(
                                      onPressed: () {
                                        blogCollection.doc(blog.id).delete();
                                        Navigator.pop(context);
                                      },
                                      child: const Text("ยืนยัน")),
                                ],
                              );
                            });
                      },
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PatchNewsForm(),
                                settings: RouteSettings(
                                  arguments: blog
                                )
                              )
                            );
                      },
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const NewsForm()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

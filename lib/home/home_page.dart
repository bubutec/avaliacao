
import 'package:flutter/material.dart';
import '../sentences/get_sentence.dart';
import 'home_page_controler.dart';

class Homepage extends StatefulWidget {
  
@override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final controller = SentenceController(repository: SentenceRepository());
   
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('Harry Potter API'),  
      ),
      body: FutureBuilder(
				future: controller.getList(),
				builder: (context, snapshot) {
					if (!snapshot.hasData && !snapshot.hasError) {
						return const Center(
							child: Text('Aguardando'),
						);
					} else if (snapshot.hasError) {
						return const Center(
							child: Text('Erro'),
						);
					} else if (snapshot.hasData && snapshot.hasError) {
						return const Center(
							child: Text('Não há dados para mostrar.'),
						);
					}
					return ListView.builder(
						itemCount: snapshot.data!.length,
						itemBuilder: (context, index) {

              String charImg;
              snapshot.data![index].image == "" ? 
              charImg = 'https://static.vecteezy.com/system/resources/thumbnails/007/873/452/small/wizard-hat-icon-illustration-designs-that-are-suitable-for-websites-apps-and-more-free-vector.jpg' :
							charImg = snapshot.data![index].image!;

              return 
                Card(
                  
                  shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.horizontal( 
                      left: Radius.circular(0),
                      right: Radius.circular(0),
                    ),
                  ),             
								
                child: Row(
									children: [
                    
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Image(
                        image: NetworkImage(charImg),
                        height: 100,
                        width: 80,
                        fit: BoxFit.cover,
                        ),
                      ),
                    
                     
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [ 
                              const Text( 'Nome: ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              Text( snapshot.data![index].name! , style: const TextStyle(fontSize: 14,),)
                            ],
                          ),
                          Row(
                            children: [ 
                              const Text( 'Genero: ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              Text( snapshot.data![index].gender! , style: const TextStyle(fontSize: 14,),)
                            ],
                          ),
                          Row(
                            children: [ 
                              const Text( 'Casa: ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              Text( snapshot.data![index].house! , style: const TextStyle(fontSize: 14,),)
                            ],
                          ),
                          Row(
                            children: [ 
                              const Text( 'Ator: ', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                              Text( snapshot.data![index].actor! , style: const TextStyle(fontSize: 14,),)
                            ],
                          ),                          
                        ],
                      ),
                    ),
									],
								),
							);
						},
					);				
				}			
      ),
    );  
  }
}

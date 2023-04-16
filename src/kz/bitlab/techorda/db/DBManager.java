package kz.bitlab.techorda.db;

import java.util.ArrayList;

public class DBManager {
    private static final ArrayList<Item> items = new ArrayList<>();

    private static long id = 6;

    static {
        items.add(
              new Item(1,
                       "Iphone 13 Pro Max",
                       450000,
                       10,
                      "The iPhone 13 Pro and Pro Max use an Apple-designed A15 Bionic processor featuring a 16-core neural engine, 6-core CPU (with 2 performance cores and 4 efficiency cores), and 5-core GPU. The A15 Bionic also contains a next-generation image processor.")
        );
        items.add(
                new Item(2,
                        "XIAOMI REDMI NOTE 8",
                        82000,
                        20,
                        "The smartphone is fueled by a Non-removable Li-Po 4000 mAh battery + Fast battery charging 18W. The phone runs on Android 9.0 (Pie) + MIUI 10. The Xiaomi Redmi Note 8 comes in different colors like Crystal Green and Crystal Blue. It features 2.0, Type-C 1.0 reversible connector, USB On-The-Go.")
        );
        items.add(
                new Item(3,
                        "Oppo 3 Model X",
                        350000,
                        15,
                        "1 Billion Colour Dual Primary Cameras\n" +
                                "1 Billion Colour Display\n" +
                                "10-bit Full-path Colour Engine\n" +
                                "Futuristic Curved Design\n" +
                                "65W SuperVOOC Flash Charge\n" +
                                "Qualcomm® Snapdragon™ 888 Mobile Platform")
        );
        items.add(
                new Item(4,
                        "MacBook Pro M1 13",
                        750000,
                        15,
                        "That configuration gives you Apple's powerful M1 chip with an 8-core CPU and 8-core GPU, plus 8GB of unified memory (RAM). You get 256GB of storage to start, but the $1,499 model of the MacBook Pro M1 includes 512GB of storage.")
        );
        items.add(
                new Item(5,
                        "ASUS TUF Gaming",
                        340000,
                        7,
                        "Jump right into the action with the TUF Gaming A16 Advantage™ Edition. Stream and multitask with ease thanks to the latest AMD Ryzen™ 9 7940HS CPU and up to 32GB of blisteringly fast 4800MHz DDR5 RAM on Windows 11. Leverage the full gaming performance of up to a AMD Radeon™ RX 7700S GPU with AMD Smart Access Graphics. When your game library gets full, an empty M.2 NVMe SSD slot makes upgrading storage capacity a breeze.")
        );
    }

    public static ArrayList<Item> getItems() {return items;}

    public static void addItem(Item item){
        item.setId(id);
        items.add(item);
        id++;
    }

    public static Item getItem (long id) {
        return items
                .stream()
                .filter(item -> item.getId()==id)
                .findFirst()
                .orElse(null);
    }

    public static void uodateItem(Item item) {
        for(int i=0;i<items.size();i++) {
            if (items.get(i).getId() == item.getId()) {
                items.set(i, item);
                break;
            }
        }
    }

    public static void deleteItem(long id){
        for(int i=0;i< items.size();i++){
            if(items.get(i).getId()==id){
                items.remove(i);
                break;
            }
        }
    }
}

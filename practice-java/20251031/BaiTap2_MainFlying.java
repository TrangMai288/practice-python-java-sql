/*
👉 Đề bài:
Tạo interface Flyable, và hai lớp Bird và Airplane đều implements Flyable,
sau đó trong main tạo danh sách các Flyable rồi gọi .fly() để thể hiện đa hình qua interface.
 */

public class BaiTap2_MainFlying {
    public static void main(String[] args) {
        BaiTap2_Flyable bird = new BaiTap2_Bird();
        BaiTap2_Flyable airplane = new BaiTap2_Airplane();

        bird.fly();
        airplane.fly();
    }   
}
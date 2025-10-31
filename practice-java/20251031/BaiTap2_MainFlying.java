public class BaiTap2_MainFlying {
    public static void main(String[] args) {
        BaiTap2_Flyable bird = new BaiTap2_Bird();
        BaiTap2_Flyable airplane = new BaiTap2_Airplane();

        bird.fly();
        airplane.fly();
    }   
}

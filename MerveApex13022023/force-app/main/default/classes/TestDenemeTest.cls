@isTest
public class TestDenemeTest {
   @isTest
    public static void TestTopla(){
        Integer s=TestDeneme.Toplama(3,3);
        System.assertEquals(6,s);
    }
@isTest
    public static void TestSub(){
        Integer s1=TestDeneme.Sub(-1,-3);
        System.assertEquals(2,s1);
    }
    @isTest
    public static void TestMul(){
        Integer s2=TestDeneme.Mul(2,3);
        System.AssertEquals(6,s2);
    }
    @isTest
    public static void TestDiv(){
        Decimal s3=TestDeneme.Div(5,3);
        System.AssertEquals(2.5,s3);
    }
}
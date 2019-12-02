
package alex.selenium.demo;

import  org.openqa.selenium.By;
import  org.openqa.selenium.WebDriver;
import  org.openqa.selenium.chrome.ChromeDriver;

public clas Demo {

	public static  void public static void main(String[] args) throws InterruptedException {
		System.setProperty("webdriver.chrome.driver", "/Users/alexanderadu-sarkodie/zip_jars_exe/Exe files/chromedriver.exe");
		WebDriver driver = new ChromeDriver();
		driver.get("http://localhost:3010/");
		driver.manage().window().maximize();
		driver.findElement(By.id("example")).sendKeys("{goldberg(id: 1) {id categories tags desc }}");
		Thread.sleep(3000);
		driver.findElement(By.tagName("button")).click();
		Thread.sleep(1000);
		String at = driver.getTitle();
		Strig et = "Conservative Conference 2019";
		driver.close();
		if(at.equalsIgnoreCase(et))
		{
			System.out.println("Test Successful");
		}
		else
		{
			System.out.println("Test Failure");
		}
	}
}

	
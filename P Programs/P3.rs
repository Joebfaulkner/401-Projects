use std::convert::TryInto;
use std::fs::File;
use std::io::Read;
use std::io::Write;

fn main()
{
    let _thread = std::thread::spawn(|| { 
        a_thread("thread_output_0.txt"); 
        std::thread::sleep(std::time::Duration::from_millis(1));
    });
    let _thread2 = std::thread::spawn(|| { 
        a_thread("thread_output_1.txt"); 
        std::thread::sleep(std::time::Duration::from_millis(1));
    });
    let _thread3 = std::thread::spawn(|| { 
        a_thread("thread_output_2.txt"); 
        std::thread::sleep(std::time::Duration::from_millis(1));
    });
    for _i in 0..1800 {
        std::thread::sleep(std::time::Duration::from_millis(1));
    }
}

fn a_thread(file_name:&str)
{
    let k = 4; // Number of iterations
    let mut n = 0;
    let mut f = File::create(file_name).expect("Unable to create file");
    while n < 900
    {
        let rand: i64 = loop {
            let mut f = File::open("/dev/urandom").unwrap();
            let mut buf = [0u8; 2];
            f.read_exact(&mut buf).unwrap();
            
            let num = i16::from_be_bytes(buf);
            break num.into();
            };
        if is_prime(rand.try_into().unwrap(), k)
        {
            n = n + 1;
            let mut data: String = rand.to_string();
            let new_line_token: &str = "\n";
            data.push_str(new_line_token);
            f.write(data.as_bytes()).expect("Unable to write file");
        }
    }
}
    // Utility function to do modular
    // exponentiation. It returns (x^y) % p
fn power(mut x:i32 ,mut y:i32 , p:i32) -> i32
{
        
    let mut res = 1; // Initialize result
        
    // Update x if it is more than
    // or equal to p
    x = x % p;

    while y > 0
    {
            
        // If y is odd, multiply x with result
        if (y & 1) == 1
        {
            res = (res * x) % p;
        }
        // y must be even now
        y = y >> 1; // y = y/2
        x = (x * x) % p;
    }
        
    return res;
}

// This function is called for all k trials.
// It returns false if n is composite and
// returns false if n is probably prime.
// d is an odd number such that d*2<sup>r</sup>
// = n-1 for some r >= 1
fn miller_test(mut d: i32, n: i32) -> bool 
{
        
    // Pick a random number in [2..n-2]
    // Corner cases make sure that n > 4
    let rand: i64 = loop {
        let mut f = File::open("/dev/urandom").unwrap();
        let mut buf = [0u8; 2];
        f.read_exact(&mut buf).unwrap();
        
        let num = i16::from_be_bytes(buf);
        break num.into();
        };
       
    let a = 2 + (rand % i64::from(n - 4)) as i32;

    // Compute a^d % n
    let mut x = power(a, d, n.try_into().unwrap());

    if x == 1 || i64::from(x) == (n - 1).into()
    {
        return true;
    }
    // Keep squaring x while one of the
    // following doesn't happen
    // (i) d does not reach n-1
    // (ii) (x^2) % n is not 1
    // (iii) (x^2) % n is not n-1
    while i64::from(d) != (n - 1).into()
    {
        x = (x * x) % n;
        d *= 2;
        
        if x == 1
        {
            return false;
        }
        if i64::from(x) == (n - 1).into()
        {
            return true;
        }
    }

    // Return composite
    return false;
}

// It returns false if n is composite
// and returns true if n is probably
// prime. k is an input parameter that
// determines accuracy level. Higher
// value of k indicates more accuracy.
fn is_prime(n: i32, k: i32) -> bool
{
    
    // Corner cases
    if n <= 1 || n == 4
    {
        return false;
    }
    if n <= 3
    {
        return true;
    }

    // Find r such that n = 2^d * r + 1
    // for some r >= 1
    let mut d = n - 1;
        
    while d % 2 == 0
    {
        d /= 2;
    }
    // Iterate given number of 'k' times
    let mut i = 0;
    while i < k
    {
        i = i + 1;
        if miller_test(d, n.into()) == false
        {
            return false;
        }
    }
    return true;
}
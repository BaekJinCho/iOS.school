#2017. 02. 09
- for - in
- Stack
- Queue
- 정렬 알고리즘(selection, insert, bubble)
- 복잡 효율 정렬 알고리즘

<br>
##- for - in & data
: for문을 가지고 하는 행위중 많은 비율이 배열이나 dictionary에 있는 데이터를 가지고 오는데 있다.

: for문의 i값으로 하는 일은 배열의 데이터는 가져오는데만 필요하다.

	ex)
	NSArray *list = @[@"1", @"2", @"3", @"4"];
	
	for(NSString *number in list)
	{
		NSLog(@"%@", number);
	}
	
예제)

![](https://github.com/BaekJinCho/iOS.school/blob/master/Study/Image/for-in.png?raw=true)

<br>
##- Stack
: 한 쪽 끝에서만 자료를 넣거나 뺄 수 있는 선형 구조(LIFO - Last In First Out)으로 되어 있다.

<br>
![](https://www.tutorialspoint.com/data_structures_algorithms/images/stack_representation.jpg)

- Push 메소드 : 자료를 밀어 넣는다.

- pop 메소드 : 넣어둔 자료를 꺼내는 것
- isEmpty 메소드

<br>
##- Queue
: 먼저 집어 넣은 데이터가 먼저 나오는 FIFO(First In First Out) 구조로 저장하는 형식<br>
: 나중에 집어 넣은 데이터가 먼저 나오는 스택과는 반대되는 개념

<br>
![](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAP0AAADHCAMAAADlCqUFAAAAwFBMVEX///+5ubkAAAC2tra8vLybm5v7+/uKiorm5ubh4eHp6enGxsbe3t60tLT+AADU1NTOzs6BgYHv7+8mJiZCQkJHR0enp6d1dXVRUVGSkpKhoaFfX1/19fVWVlYfHx+tra03NzcwMDD/yspnZ2f+LSv/d3hxcXEVFRX/7e0ODg6NjY1NTU08PDwlJSX/8/L8QkH9i4v/09L+tLT93dv+YF//Ojr+mpn/bm3+ubv9EhL9rqz+Uk/8pKX+kI7/np//dHYtU7T2AAAIyElEQVR4nO2da2OiOhCGYeSighdURBAVyq6u1brtdrvbvZ3+/391EiLWtihRiELg/VBsG0cek0wmAySCUKnMUuoZ69pAJ6nZqmWq1rWBTlKzJmaq2rWBThINvUSUml5RLoZFKQp6yVphTVop6N360ApGo8DOl1+goR8D9O+m3uxs+p68hkjypQmPiZJe085v+U0D9mVcHvKgaOnP7/c2vJN0BcwDoqS3rLlNhf+eXvffw4OZH+dHSY80OYfe+cCOlB/Px7blhz1+Lre63ZZ9t6OfXYn1o2jpqdDf0yN4Q9u18107uL085gGxrHsZHHf/s4a58/qU9I4sy1Qx8R59d9R7+1nKqoj02zFreCL9x5FNJobUC/IdF1Wcj2v+9Lr/KC1v4R7dHC+bWY7QJfTapeASdakZbuj5t3XfvCDfcV0quyE3hGjMW7oHylxerq43spR+4HO6uL2T6c74ooD5kAe2Mgjp7WufyhWEWj2Bh861T+UK6kRx7uLaZ3INudFUd9zMj9fLQopnesmlJlHlT/2BqfaS3xBJHgzyMyv8KAUhJZdSXyf4g9YJ8PiN+YkOP4qOvhax92enJXe4oI/cnnVKvWNxQa8T+NNzmvzQ98/I6XFB31gCjM5J53JBr58b4XNCPznPPBf0neWpzn4rLui17pnmuaA/+/oVF/Rnq6JnaD6tKnqG5it6hubTqqJnaL6iZ2g+rSp6huYreobm06qiZ2i+omdoPq0qeobmK3qG5tOqomdovij0vYyfbiNJ4KLQdzO+/4vc41Ic+mzv/eOP/pSn27ijlwarlbmyWjT8/NFrAAt/CdMhBT6X9HNt5sGgtPSSZAA4yfic0otDALW09BKiN0pNX+K6twEoHu3kk16TJjClCIy4pJ84AVW355BeCp/Ju6OB55BerMmy7Mzonmjmj16knuQUjp6OilZFo8/28baCZTeamT7c1tCLldlio4qeofm0qujDF71mtipWvy+3zy/5eE8FRZ3SLho9VaQrj0cTq5w5XVEcASzw4htlzG5IEwBbk5dwV0b6WZjTxau4lJBeUrcZPRq/xx+9AUDj8PilD9t8KTNbkhwmNKWZ4yQvUsodvSgBrCVJQ54/ObfHIf0tTmnPAUYl9PkYHy8/shyX8moGwq/Jtkzl93mkp89pF42eCp5aRaMvdXajrmcrshBfUejZqKJnaD6tKnqG5otC39GyFVmmsij0idFO7fVFSSNdenFIP2sh1biMdKnu2ULyqTZi4JLeVD2qm5T5pA80p6z362H6rkF1oyqf9FhBafu9P17DhGZs5JI+0FoeTVKTU3qc0F6UMtYL637m01zC5ZPen/hlHfEkY4pk3pbT54uSJkmU281xSH+CikafKXzh6FvZqlj0bFTRMzSfVhU9Q/MVPUPzaVXRMzRf0TM0n1YVPUPzFT1D82lV0TM0X9EzNJ9WFT1D8xX9/u+bL6EEtxm3sa7ruvslz96phVoXpr9ph8JbqsfsP+T3X7fZ/tn+9YXhiRFdnv6/5+dnYRZLv7/F+uf2Jx7pH/Gxq6quK9uSK+uCoMm2U0d/kwFMOdqQGdO7t7Zes+Uzd6miUAb0+qE9lIXD9LjuewswAURhHl4X1wSyWX20HRmm75FL5h6zjVhT0+v+MaceQ//v9+8bQt9Hn200urjIOjyL9y0f0fsKKnrGtoR0SknvWjA89v94r/dzRy+Fe24G29YTQz8TpNzSd/y9841TDP2DslEiehP/De8vfqfi4a1Y9C2AwfEScfT4uKUnsLqK+n8gYHprVzL39GjQhiMeD4uCXjdXmjCBKXo5hYUR7cSXd3pEAGpCmaP0U1L3I1hMiKXWns9/iehFlvS+6Z/3TnwH1zRpKJYH6zf7YD88PYUjnrhe93qTtY1fu/ZqMBHDf9c7nagx3T9937j+WhS0tRcXFV9X9SVAgsvjWOFKgwm9nlthj0cGrBJKCUNQK7kglyIxucPuA9jP7VOITD+27jzXZ8pA2/uVbfKborKbg+ZRpOHvIpPZQkx6h3ITSnG1bsxX1WzsBzTKw83N47sS9UZ+Bv0xoUeT8lCKB5OEvaK/kJTWprN701t7e8PH41dU8NfnN/3JHYQTgXxosKXvkzuzwqB3JB1LQiD6H4+Pj0JnMY35nsZ7s6XNU/vp4Vu7fb9fAH2/+aEfQSS1ETKHX4dvdA46AET/DR8blqULRmA3jJYg1Kxgjmf4QR8W82j4/BZOBX7gpKYTzNFUIVCF2ngB/XlecuMqvMoPDMPwtr8sAlvs9GIGgYgetfyusAZ/Cbd4Yu8DOnYXKGr2o9r/2f6Efj7g8haegQ1gJThTgGU/L+FFB47Jiaf/fn//l9DjlmLrdYA5/h6VNy1/86f9FR0e2+1/hN6EESqRp5YvBIfZ4zNdxOv92dGjdo/m9/0a+aL26b+iUoj+1xt614PxRcDoZB5gnx9wfYj+GR+39Av8WsJvGOCxbt/rfW8/CWHd/31Ln6O6RzP3WPiY0YzoTb8fRJGCiPiWAqb3diXv0bgoCM849W3hf3ohvY96f57kDsfv2f3GwdLv6EfoZW+Kpkmk389RG7BfS34WNp/aL2G+E6d2cL+fAKxmB61fRUq95tza6q3tzLAjGBwJ+BHTb3zc+vywIp1wnUqc0mpgPxgV/Y1inXb762YXUJvIbnf9GlrmT6iaVsdmO5ufLzf42JjPdeHWIhWtGZZF+orS672GCg/3Ly/fNmEBa961LVshJZhd0kmt4GjNcy7FnDJLvOZfPT9hlsO1Gkev5vGu8vb5SpUqxamevP5s+PyiSLOKESojXRvoJNWzfcaVV3rKVar5pKdZmp1XerxC+6y89Otwdf5y0ktosk+15SSf9AF4AFSLWnBI3wJQV2CWkx7vTFCzAYalpK95cGcYdGt4cUcvRfnxBcWgxx/9BMDv+1OqlYy4ox8CmGKr1lqAV766l1RzJUuSKFmmmbw3AW/0uz0JqLYm4I7+JFX0xVGd7CmYna4NVOma+h8PjcbEAGeckQAAAABJRU5ErkJggg==)

<br>

- put : 큐에 자료를 넣는 것

- get : 큐에서 자료를 꺼내는 것

<br>
##- 정렬 알고리즘
: 일정한 순서대로 열거하는 알고리즘

- selection sort(선택 정렬)

- insertion sort(삽입 정렬)
- bubble sort(버블 정렬)
- merge sort(합병 정렬)
- quick sort(퀵 정렬)
- heatp sort(힙 정렬)
- radix sort(기수 정렬)

<br>
####- 정렬 알고리즘 효율
: 비교연산의 횟수와 이동연산의 횟수를 통해 효율을 측정

- 단순 비효율 정렬 : insertion sort, selection sort, bubble sort
- 복잡 효율 정렬 : merge sort, quick sort, heap sort, radix sofrt

####- 알고리즘 복잡도
: 가장 최악의 경우 걸리는 시간<br>
: big O 표기법으로 표시 ex)O(n), O(n logn)

####- Selection sort
: 가장 쉬운 정렬 방법<br>
: 리스트의 데이터중 가장 작은 데이터 순으로 앞쪽에 정렬하는 방식<br>
: 빅O = n*n

![](http://cfs3.tistory.com/upload_control/download.blog?fhandle=YmxvZzEyNDIxQGZzMy50aXN0b3J5LmNvbTovYXR0YWNoLzAvMTAucG5n)

![](http://cfs2.tistory.com/upload_control/download.blog?fhandle=YmxvZzEyNDIxQGZzMi50aXN0b3J5LmNvbTovYXR0YWNoLzAvMjEucG5n)

<br>
####- Insert sort
: 데이터의 비교에 따라 적절한 자리에 삽입하는 방식
![](https://upload.wikimedia.org/wikipedia/commons/e/ea/Insertion_sort_001.PNG)

<br>
####- bubble sort
: 인접한 데이터와 비교하여 정렬<br>
: 리스트의 왼쪽에서 오른쪽 끝까지 한번 비교 - 교환 과정이 완료되면 가장 큰 수가 오른쪽 끝에 이동<br>
: 모든 숫자가 정렬 될 때까지 실행

<br>
![](http://cfs2.tistory.com/upload_control/download.blog?fhandle=YmxvZzEyNDIxQGZzMi50aXN0b3J5LmNvbTovYXR0YWNoLzAvMjIucG5n)

<br>
##- 복잡 효율 정렬 알고리즘

####- Divide and conquer algorithms
문제를 해결이 가능한 정도까지 포갠다. 해결한 다음에 문제를 다시 합친다. 다시 합치면 해결이 가능한 정도로 쉬운 문제가 되거나 해결되어 있다.
: 그대로 해결할 수 없는 문제를 작은 문제로 분할하여 문제를 해결하는 방법

: 보통 재귀 함수(recursive function)를 통해 자연스럽게 구현된다.

<br>
####- merge sort

<br>	
![](https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Merge_sort_algorithm_diagram.svg/1064px-Merge_sort_algorithm_diagram.svg.png)

<br>
: divide and conquer 방법 적용

- 순서
	
	- 1. 리스트 길이가 0 or 1이면 이미 정렬된 것으로 본다. 그렇지 않은 경우에는
	- 2. 정렬되지 않은 리스트를 절반으로 잘라 비슷한 크기의 두 부분 리스트로 나눈다.
	- 3. 각 부분 리스트를 재귀적으로 합병 정렬을 이용해 정렬한다.
	- 4. 두 부분 리스트를 다시 하나의 정렬된 리스트로 합병한다.

<br>
####- quick sort

<br>
![](http://cfile23.uf.tistory.com/image/121267394EF3CA2430A139)

<br>
: divide and conquer 방법 적용

- 순서
	
	- 1. 피벗 데이터를 선택한다.
	- 2. 피벗을 중심으로 작은수는 왼쪽, 큰수는 오른쪽으로 이동
	- 3. 각 부분 리스트를 통해 과정을 반복한다.
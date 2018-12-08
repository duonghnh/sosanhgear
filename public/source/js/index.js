var button = document.getElementsByClassName('concac')
var height = window.innerHeight
button[0].onclick = () => {
    console.log(height)
    window.open()
}

// tại sao id lại lấy được còn class lại không lấy được
// tại vị trí button Áp 
<template>
<main>
    <div class="container-fluid">
        <div id="mainSlider" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="/img/slidePizza_1.jpg" class="d-block w-100" alt="Pizza">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="/img/slidePizza_2.jpg" class="d-block w-100" alt="Pizza 2">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="/img/slidePizza_3.png" class="d-block w-100" alt="Pizza 3 ">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="/img/slidePizza_4.jpg" class="d-block w-100" alt="Pizza 4 ">
                    <div class="carousel-caption d-none d-md-block">
                    </div>
                </div>
            </div>
            <a href="#mainSlider" class="carousel-control-prev" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a href="#mainSlider" class="carousel-control-next" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
</main>
</template>

<script>

export default {
  name: 'CarouselHome'
}

</script>

<style scoped>

img {
    object-fit: cover;
    /* width: 90vh; */
    height: 90vh;
}
.container-fluid {
    margin-top: 3%;
    padding: 0;
}

#mainSlider .carousel-inner, #mainSlider .carousel-item {
    height: 75vh;
}

#mainSlider .carouse-control-prev:hover {
    color: black;
}

#mainSlider .carouse-control-next:hover {
    color: black;
}

</style>

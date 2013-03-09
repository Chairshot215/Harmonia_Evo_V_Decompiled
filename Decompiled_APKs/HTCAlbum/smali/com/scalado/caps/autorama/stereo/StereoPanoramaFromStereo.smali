.class public Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromStereo;
.super Lcom/scalado/caps/autorama/stereo/StereoPanorama;
.source "StereoPanoramaFromStereo.java"


# instance fields
.field private stitcherLeft:Lcom/scalado/caps/autorama/Stitcher;

.field private stitcherRight:Lcom/scalado/caps/autorama/Stitcher;


# direct methods
.method public constructor <init>(Lcom/scalado/caps/autorama/Stitcher;Lcom/scalado/caps/autorama/Stitcher;)V
    .locals 3
    .parameter "stitcherLeft"
    .parameter "stitcherRight"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 40
    :cond_0
    if-nez p2, :cond_1

    .line 41
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 45
    :cond_1
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Stitcher;->getImageCount()I

    move-result v1

    invoke-virtual {p2}, Lcom/scalado/caps/autorama/Stitcher;->getImageCount()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 46
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 48
    :cond_2
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Stitcher;->getImageDimensions()Lcom/scalado/base/Size;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scalado/caps/autorama/Stitcher;->getImageDimensions()Lcom/scalado/base/Size;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scalado/base/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Stitcher;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scalado/caps/autorama/Stitcher;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 54
    :cond_4
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Stitcher;->getDirection()Lcom/scalado/caps/autorama/Direction;

    move-result-object v1

    sget-object v2, Lcom/scalado/caps/autorama/Direction;->RIGHT:Lcom/scalado/caps/autorama/Direction;

    if-eq v1, v2, :cond_5

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 57
    :cond_5
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Stitcher;->getBlendMode()Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scalado/caps/autorama/Stitcher;->getBlendMode()Lcom/scalado/caps/autorama/Stitcher$BlendMode;

    move-result-object v2

    if-eq v1, v2, :cond_6

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 60
    :cond_6
    invoke-virtual {p1}, Lcom/scalado/caps/autorama/Stitcher;->getBlendModeOptions()Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    move-result-object v1

    invoke-virtual {p2}, Lcom/scalado/caps/autorama/Stitcher;->getBlendModeOptions()Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/scalado/caps/autorama/Stitcher$BlendModeOptions;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 64
    :cond_7
    iput-object p1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromStereo;->stitcherLeft:Lcom/scalado/caps/autorama/Stitcher;

    .line 65
    iput-object p2, p0, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromStereo;->stitcherRight:Lcom/scalado/caps/autorama/Stitcher;

    .line 67
    iget-object v1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromStereo;->stitcherLeft:Lcom/scalado/caps/autorama/Stitcher;

    iget-object v2, p0, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromStereo;->stitcherRight:Lcom/scalado/caps/autorama/Stitcher;

    invoke-direct {p0, v1, v2}, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromStereo;->nativeCreate(Lcom/scalado/caps/autorama/Stitcher;Lcom/scalado/caps/autorama/Stitcher;)I

    move-result v0

    .line 68
    .local v0, error:I
    return-void
.end method

.method private native nativeCreate(Lcom/scalado/caps/autorama/Stitcher;Lcom/scalado/caps/autorama/Stitcher;)I
.end method

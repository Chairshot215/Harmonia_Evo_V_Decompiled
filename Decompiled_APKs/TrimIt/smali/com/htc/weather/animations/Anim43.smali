.class public Lcom/htc/weather/animations/Anim43;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim43.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingSnow:Lcom/htc/weather/animations/FallingSnowFlake;

.field private flurries01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private moon:Lcom/htc/weather/animations/Moon;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 11
    .parameter "context"
    .parameter "env"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const v5, 0x3f4ccccd

    const/high16 v7, 0x3f80

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 53
    new-instance v0, Lcom/htc/weather/animations/Anim43$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim43$1;-><init>(Lcom/htc/weather/animations/Anim43;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim43;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 150
    new-instance v0, Lcom/htc/weather/animations/Anim43$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim43$2;-><init>(Lcom/htc/weather/animations/Anim43;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim43;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 248
    new-instance v0, Lcom/htc/weather/animations/Anim43$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim43$3;-><init>(Lcom/htc/weather/animations/Anim43;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim43;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 347
    new-instance v0, Lcom/htc/weather/animations/Anim43$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim43$4;-><init>(Lcom/htc/weather/animations/Anim43;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim43;->flurries01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 22
    new-instance v0, Lcom/htc/weather/animations/Moon;

    const/16 v3, 0x14

    const/16 v4, -0xa

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Moon;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim43;->moon:Lcom/htc/weather/animations/Moon;

    .line 23
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake;

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move v4, v10

    move v5, v7

    move v6, v7

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/FallingSnowFlake;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim43;->fallingSnow:Lcom/htc/weather/animations/FallingSnowFlake;

    .line 24
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 7

    .prologue
    .line 28
    iget-object v5, p0, Lcom/htc/weather/animations/Anim43;->moon:Lcom/htc/weather/animations/Moon;

    invoke-virtual {v5}, Lcom/htc/weather/animations/Moon;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v3

    .line 29
    .local v3, moonSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v5, p0, Lcom/htc/weather/animations/Anim43;->fallingSnow:Lcom/htc/weather/animations/FallingSnowFlake;

    invoke-virtual {v5}, Lcom/htc/weather/animations/FallingSnowFlake;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    .line 30
    .local v0, fallingSnowSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v5, v3

    array-length v6, v0

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    new-array v4, v5, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 33
    .local v4, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v2, 0x0

    .local v2, index:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_0

    .line 34
    aget-object v5, v3, v2

    aput-object v5, v4, v2

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 37
    aget-object v5, v0, v1

    aput-object v5, v4, v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 41
    :cond_1
    iget-object v5, p0, Lcom/htc/weather/animations/Anim43;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    iget-object v5, p0, Lcom/htc/weather/animations/Anim43;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    iget-object v5, p0, Lcom/htc/weather/animations/Anim43;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v2

    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    iget-object v5, p0, Lcom/htc/weather/animations/Anim43;->flurries01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    return-object v4
.end method

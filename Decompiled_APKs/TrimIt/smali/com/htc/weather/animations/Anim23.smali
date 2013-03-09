.class public Lcom/htc/weather/animations/Anim23;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim23.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

.field private snowFlurries04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun3:Lcom/htc/weather/animations/Sun3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 13
    .parameter "context"
    .parameter "env"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 50
    new-instance v0, Lcom/htc/weather/animations/Anim23$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim23$1;-><init>(Lcom/htc/weather/animations/Anim23;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim23;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 159
    new-instance v0, Lcom/htc/weather/animations/Anim23$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim23$2;-><init>(Lcom/htc/weather/animations/Anim23;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim23;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 269
    new-instance v0, Lcom/htc/weather/animations/Anim23$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim23$3;-><init>(Lcom/htc/weather/animations/Anim23;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim23;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 378
    new-instance v0, Lcom/htc/weather/animations/Anim23$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim23$4;-><init>(Lcom/htc/weather/animations/Anim23;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim23;->snowFlurries04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 23
    new-instance v0, Lcom/htc/weather/animations/Sun3;

    const/4 v3, 0x0

    const/16 v4, -0x14

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Sun3;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim23;->sun3:Lcom/htc/weather/animations/Sun3;

    .line 24
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake;

    const v2, 0x208067d

    const v3, 0x3dcccccd

    const v4, 0x3dcccccd

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    const/high16 v10, 0x3f80

    const-wide/16 v11, 0x0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v12}, Lcom/htc/weather/animations/FallingSnowFlake;-><init>(Landroid/content/Context;IFFLcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim23;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    .line 25
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 7

    .prologue
    .line 29
    iget-object v5, p0, Lcom/htc/weather/animations/Anim23;->sun3:Lcom/htc/weather/animations/Sun3;

    invoke-virtual {v5}, Lcom/htc/weather/animations/Sun3;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v4

    .line 30
    .local v4, sunSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v5, p0, Lcom/htc/weather/animations/Anim23;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    invoke-virtual {v5}, Lcom/htc/weather/animations/FallingSnowFlake;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    .line 31
    .local v0, fallingSnowFlakeSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v5, v4

    array-length v6, v0

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    new-array v3, v5, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 32
    .local v3, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v2, 0x0

    .line 33
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 34
    aget-object v5, v4, v1

    aput-object v5, v3, v2

    .line 33
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    iget-object v5, p0, Lcom/htc/weather/animations/Anim23;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v2

    .line 37
    add-int/lit8 v2, v2, 0x1

    .line 38
    iget-object v5, p0, Lcom/htc/weather/animations/Anim23;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 40
    iget-object v5, p0, Lcom/htc/weather/animations/Anim23;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v2

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 42
    iget-object v5, p0, Lcom/htc/weather/animations/Anim23;->snowFlurries04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v2

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 45
    aget-object v5, v0, v1

    aput-object v5, v3, v2

    .line 44
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 47
    :cond_1
    return-object v3
.end method

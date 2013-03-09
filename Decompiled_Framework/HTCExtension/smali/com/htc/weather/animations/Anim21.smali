.class public Lcom/htc/weather/animations/Anim21;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim21.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

.field private snowIce03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun:Lcom/htc/weather/animations/Sun;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10

    const/16 v3, 0x14

    const/high16 v5, 0x3f80

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim21$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim21$1;-><init>(Lcom/htc/weather/animations/Anim21;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim21;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim21$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim21$2;-><init>(Lcom/htc/weather/animations/Anim21;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim21;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim21$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim21$3;-><init>(Lcom/htc/weather/animations/Anim21;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim21;->snowIce03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Sun;

    invoke-direct {v0, p1, p2}, Lcom/htc/weather/animations/Sun;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim21;->sun:Lcom/htc/weather/animations/Sun;

    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake;

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/FallingSnowFlake;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim21;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 7

    iget-object v5, p0, Lcom/htc/weather/animations/Anim21;->sun:Lcom/htc/weather/animations/Sun;

    invoke-virtual {v5}, Lcom/htc/weather/animations/Sun;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/weather/animations/Anim21;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    invoke-virtual {v5}, Lcom/htc/weather/animations/FallingSnowFlake;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    array-length v5, v4

    array-length v6, v0

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x3

    new-array v3, v5, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v5, v4, v1

    aput-object v5, v3, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/htc/weather/animations/Anim21;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/htc/weather/animations/Anim21;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v5, p0, Lcom/htc/weather/animations/Anim21;->snowIce03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_1

    aget-object v5, v0, v1

    aput-object v5, v3, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v3
.end method

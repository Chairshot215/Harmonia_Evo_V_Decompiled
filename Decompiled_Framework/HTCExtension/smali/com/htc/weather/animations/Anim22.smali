.class public Lcom/htc/weather/animations/Anim22;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim22.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

.field private snow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 13

    const v3, 0x3dcccccd

    const/high16 v8, 0x3f80

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim22$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim22$1;-><init>(Lcom/htc/weather/animations/Anim22;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim22;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim22$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim22$2;-><init>(Lcom/htc/weather/animations/Anim22;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim22;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim22$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim22$3;-><init>(Lcom/htc/weather/animations/Anim22;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim22;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim22$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim22$4;-><init>(Lcom/htc/weather/animations/Anim22;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim22;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim22$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim22$5;-><init>(Lcom/htc/weather/animations/Anim22;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim22;->cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim22$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim22$6;-><init>(Lcom/htc/weather/animations/Anim22;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim22;->snow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake;

    const v2, 0x208067d

    const/16 v6, 0xa

    const/16 v7, 0x14

    const-wide/16 v11, 0x0

    move-object v1, p1

    move v4, v3

    move-object v5, p2

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v12}, Lcom/htc/weather/animations/FallingSnowFlake;-><init>(Landroid/content/Context;IFFLcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim22;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 5

    iget-object v4, p0, Lcom/htc/weather/animations/Anim22;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    invoke-virtual {v4}, Lcom/htc/weather/animations/FallingSnowFlake;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    array-length v4, v0

    add-int/lit8 v4, v4, 0x6

    new-array v3, v4, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/htc/weather/animations/Anim22;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim22;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim22;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim22;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim22;->cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim22;->snow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    aget-object v4, v0, v1

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

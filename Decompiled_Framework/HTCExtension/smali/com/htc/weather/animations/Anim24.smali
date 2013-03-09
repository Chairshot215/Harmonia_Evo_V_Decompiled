.class public Lcom/htc/weather/animations/Anim24;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim24.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingIce:Lcom/htc/weather/animations/FallingIce;

.field private snowIce05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10

    const/high16 v5, 0x3f80

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim24$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim24$1;-><init>(Lcom/htc/weather/animations/Anim24;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim24;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim24$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim24$2;-><init>(Lcom/htc/weather/animations/Anim24;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim24;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim24$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim24$3;-><init>(Lcom/htc/weather/animations/Anim24;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim24;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim24$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim24$4;-><init>(Lcom/htc/weather/animations/Anim24;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim24;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim24$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim24$5;-><init>(Lcom/htc/weather/animations/Anim24;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim24;->snowIce05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/FallingIce;

    const/16 v3, 0x14

    const/4 v4, 0x5

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/FallingIce;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim24;->fallingIce:Lcom/htc/weather/animations/FallingIce;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 5

    iget-object v4, p0, Lcom/htc/weather/animations/Anim24;->fallingIce:Lcom/htc/weather/animations/FallingIce;

    invoke-virtual {v4}, Lcom/htc/weather/animations/FallingIce;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    array-length v4, v0

    add-int/lit8 v4, v4, 0x5

    new-array v3, v4, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v2, 0x0

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
    iget-object v4, p0, Lcom/htc/weather/animations/Anim24;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim24;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim24;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim24;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim24;->snowIce05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    return-object v3
.end method

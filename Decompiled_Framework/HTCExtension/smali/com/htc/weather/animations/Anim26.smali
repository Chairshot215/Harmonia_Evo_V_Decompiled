.class public Lcom/htc/weather/animations/Anim26;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim26.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingIce:Lcom/htc/weather/animations/FallingIce;

.field private shower:Lcom/htc/weather/animations/Shower;

.field private snow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim26$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim26$1;-><init>(Lcom/htc/weather/animations/Anim26;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim26;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim26$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim26$2;-><init>(Lcom/htc/weather/animations/Anim26;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim26;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim26$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim26$3;-><init>(Lcom/htc/weather/animations/Anim26;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim26;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim26$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim26$4;-><init>(Lcom/htc/weather/animations/Anim26;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim26;->snow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/FallingIce;

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/FallingIce;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim26;->fallingIce:Lcom/htc/weather/animations/FallingIce;

    new-instance v0, Lcom/htc/weather/animations/Shower;

    const/4 v3, 0x0

    const/16 v4, -0xf

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim26;->shower:Lcom/htc/weather/animations/Shower;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 8

    iget-object v6, p0, Lcom/htc/weather/animations/Anim26;->fallingIce:Lcom/htc/weather/animations/FallingIce;

    invoke-virtual {v6}, Lcom/htc/weather/animations/FallingIce;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/weather/animations/Anim26;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v5

    array-length v6, v0

    add-int/lit8 v6, v6, 0x4

    array-length v7, v5

    add-int/2addr v6, v7

    new-array v4, v6, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/htc/weather/animations/Anim26;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/htc/weather/animations/Anim26;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    add-int/lit8 v3, v2, 0x1

    aget-object v6, v5, v1

    aput-object v6, v4, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-object v6, v0, v1

    aput-object v6, v4, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v2, 0x1

    iget-object v6, p0, Lcom/htc/weather/animations/Anim26;->snow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    iget-object v6, p0, Lcom/htc/weather/animations/Anim26;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v3

    return-object v4
.end method

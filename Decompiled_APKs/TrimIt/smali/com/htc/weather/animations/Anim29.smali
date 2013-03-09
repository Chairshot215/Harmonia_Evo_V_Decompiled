.class public Lcom/htc/weather/animations/Anim29;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim29.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingIce:Lcom/htc/weather/animations/FallingIce;

.field private rain01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private shower:Lcom/htc/weather/animations/Shower;

.field private snow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10
    .parameter "context"
    .parameter "env"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v3, 0x14

    const/high16 v5, 0x3f80

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 65
    new-instance v0, Lcom/htc/weather/animations/Anim29$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim29$1;-><init>(Lcom/htc/weather/animations/Anim29;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim29;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 144
    new-instance v0, Lcom/htc/weather/animations/Anim29$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim29$2;-><init>(Lcom/htc/weather/animations/Anim29;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim29;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 223
    new-instance v0, Lcom/htc/weather/animations/Anim29$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim29$3;-><init>(Lcom/htc/weather/animations/Anim29;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim29;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 302
    new-instance v0, Lcom/htc/weather/animations/Anim29$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim29$4;-><init>(Lcom/htc/weather/animations/Anim29;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim29;->snow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 388
    new-instance v0, Lcom/htc/weather/animations/Anim29$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim29$5;-><init>(Lcom/htc/weather/animations/Anim29;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim29;->rain01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 23
    new-instance v0, Lcom/htc/weather/animations/Shower;

    const/16 v4, -0xf

    const v7, 0x3f4ccccd

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim29;->shower:Lcom/htc/weather/animations/Shower;

    .line 24
    new-instance v0, Lcom/htc/weather/animations/FallingIce;

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/FallingIce;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim29;->fallingIce:Lcom/htc/weather/animations/FallingIce;

    .line 25
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 8

    .prologue
    .line 29
    iget-object v6, p0, Lcom/htc/weather/animations/Anim29;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v5

    .line 30
    .local v5, showerSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v6, p0, Lcom/htc/weather/animations/Anim29;->fallingIce:Lcom/htc/weather/animations/FallingIce;

    invoke-virtual {v6}, Lcom/htc/weather/animations/FallingIce;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    .line 31
    .local v0, fallingIceSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v6, v5

    array-length v7, v0

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x5

    new-array v4, v6, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 33
    .local v4, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v2, 0x0

    .line 34
    .local v2, index:I
    iget-object v6, p0, Lcom/htc/weather/animations/Anim29;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 37
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 38
    aget-object v6, v5, v1

    aput-object v6, v4, v2

    .line 39
    add-int/lit8 v2, v2, 0x1

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    iget-object v6, p0, Lcom/htc/weather/animations/Anim29;->rain01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    iget-object v6, p0, Lcom/htc/weather/animations/Anim29;->snow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 46
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    aget-object v6, v0, v1

    aput-object v6, v4, v2

    .line 45
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 49
    :cond_1
    iget-object v6, p0, Lcom/htc/weather/animations/Anim29;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 53
    iget-object v6, p0, Lcom/htc/weather/animations/Anim29;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 60
    return-object v4
.end method

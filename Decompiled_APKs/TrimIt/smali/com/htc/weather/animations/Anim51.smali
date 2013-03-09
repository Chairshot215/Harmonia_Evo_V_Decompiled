.class public Lcom/htc/weather/animations/Anim51;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim51.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private hailstone01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private shower:Lcom/htc/weather/animations/Shower;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10
    .parameter "context"
    .parameter "env"

    .prologue
    const/high16 v5, 0x3f80

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 49
    new-instance v0, Lcom/htc/weather/animations/Anim51$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim51$1;-><init>(Lcom/htc/weather/animations/Anim51;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim51;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 128
    new-instance v0, Lcom/htc/weather/animations/Anim51$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim51$2;-><init>(Lcom/htc/weather/animations/Anim51;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim51;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 207
    new-instance v0, Lcom/htc/weather/animations/Anim51$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim51$3;-><init>(Lcom/htc/weather/animations/Anim51;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim51;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 286
    new-instance v0, Lcom/htc/weather/animations/Anim51$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim51$4;-><init>(Lcom/htc/weather/animations/Anim51;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim51;->hailstone01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 23
    new-instance v0, Lcom/htc/weather/animations/Shower;

    const/4 v3, 0x0

    const/16 v4, -0xf

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim51;->shower:Lcom/htc/weather/animations/Shower;

    .line 24
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 6

    .prologue
    .line 28
    iget-object v5, p0, Lcom/htc/weather/animations/Anim51;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v5}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v4

    .line 30
    .local v4, showerSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v5, v4

    add-int/lit8 v5, v5, 0x4

    new-array v3, v5, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 32
    .local v3, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v1, 0x0

    .line 33
    .local v1, index:I
    iget-object v5, p0, Lcom/htc/weather/animations/Anim51;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v1

    .line 34
    add-int/lit8 v1, v1, 0x1

    .line 35
    iget-object v5, p0, Lcom/htc/weather/animations/Anim51;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v1

    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    .line 38
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aget-object v5, v4, v0

    aput-object v5, v3, v1

    .line 37
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 41
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    iget-object v5, p0, Lcom/htc/weather/animations/Anim51;->hailstone01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v1

    .line 43
    iget-object v5, p0, Lcom/htc/weather/animations/Anim51;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v2

    .line 46
    return-object v3
.end method

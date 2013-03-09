.class public Lcom/htc/weather/animations/Anim39;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim39.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private moon:Lcom/htc/weather/animations/Moon;

.field private rain01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private shower:Lcom/htc/weather/animations/Shower;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10
    .parameter "context"
    .parameter "env"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 49
    new-instance v0, Lcom/htc/weather/animations/Anim39$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim39$1;-><init>(Lcom/htc/weather/animations/Anim39;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim39;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 146
    new-instance v0, Lcom/htc/weather/animations/Anim39$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim39$2;-><init>(Lcom/htc/weather/animations/Anim39;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim39;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 244
    new-instance v0, Lcom/htc/weather/animations/Anim39$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim39$3;-><init>(Lcom/htc/weather/animations/Anim39;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim39;->rain01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 23
    new-instance v0, Lcom/htc/weather/animations/Moon;

    const/16 v3, 0x14

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Moon;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim39;->moon:Lcom/htc/weather/animations/Moon;

    .line 24
    new-instance v0, Lcom/htc/weather/animations/Shower;

    const/16 v3, 0xa

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim39;->shower:Lcom/htc/weather/animations/Shower;

    .line 25
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 7

    .prologue
    .line 29
    iget-object v5, p0, Lcom/htc/weather/animations/Anim39;->moon:Lcom/htc/weather/animations/Moon;

    invoke-virtual {v5}, Lcom/htc/weather/animations/Moon;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    .line 30
    .local v2, moonSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v5, p0, Lcom/htc/weather/animations/Anim39;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v5}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v4

    .line 31
    .local v4, showerSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v5, v2

    add-int/lit8 v5, v5, 0x3

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v3, v5, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 33
    .local v3, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 34
    aget-object v5, v2, v1

    aput-object v5, v3, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 37
    aget-object v5, v4, v0

    aput-object v5, v3, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 40
    :cond_1
    iget-object v5, p0, Lcom/htc/weather/animations/Anim39;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    iget-object v5, p0, Lcom/htc/weather/animations/Anim39;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v1

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 44
    iget-object v5, p0, Lcom/htc/weather/animations/Anim39;->rain01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v3, v1

    .line 45
    return-object v3
.end method

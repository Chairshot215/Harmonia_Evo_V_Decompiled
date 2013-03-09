.class public Lcom/htc/weather/animations/Anim18;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim18.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private rain04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrops:Lcom/htc/weather/animations/Raindrops;

.field private shower:Lcom/htc/weather/animations/Shower;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10
    .parameter "context"
    .parameter "env"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x3f80

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 59
    new-instance v0, Lcom/htc/weather/animations/Anim18$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim18$1;-><init>(Lcom/htc/weather/animations/Anim18;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim18;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 143
    new-instance v0, Lcom/htc/weather/animations/Anim18$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim18$2;-><init>(Lcom/htc/weather/animations/Anim18;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim18;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 222
    new-instance v0, Lcom/htc/weather/animations/Anim18$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim18$3;-><init>(Lcom/htc/weather/animations/Anim18;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim18;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 301
    new-instance v0, Lcom/htc/weather/animations/Anim18$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim18$4;-><init>(Lcom/htc/weather/animations/Anim18;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim18;->rain04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 23
    new-instance v0, Lcom/htc/weather/animations/Shower;

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim18;->shower:Lcom/htc/weather/animations/Shower;

    .line 24
    new-instance v0, Lcom/htc/weather/animations/Raindrops;

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Raindrops;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim18;->raindrops:Lcom/htc/weather/animations/Raindrops;

    .line 26
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 8

    .prologue
    .line 30
    iget-object v6, p0, Lcom/htc/weather/animations/Anim18;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v5

    .line 31
    .local v5, showerSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v6, p0, Lcom/htc/weather/animations/Anim18;->raindrops:Lcom/htc/weather/animations/Raindrops;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Raindrops;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v3

    .line 33
    .local v3, raindropsSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v6, v5

    array-length v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    new-array v4, v6, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 35
    .local v4, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v1, 0x0

    .line 37
    .local v1, index:I
    iget-object v6, p0, Lcom/htc/weather/animations/Anim18;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 41
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aget-object v6, v5, v0

    aput-object v6, v4, v1

    .line 40
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 43
    :cond_0
    iget-object v6, p0, Lcom/htc/weather/animations/Anim18;->rain04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 46
    iget-object v6, p0, Lcom/htc/weather/animations/Anim18;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 49
    iget-object v6, p0, Lcom/htc/weather/animations/Anim18;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 52
    const/4 v0, 0x0

    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 53
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .restart local v2       #index:I
    aget-object v6, v3, v0

    aput-object v6, v4, v1

    .line 52
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_1

    .line 56
    :cond_1
    return-object v4
.end method

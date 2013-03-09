.class public Lcom/htc/weather/animations/Anim13;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim13.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private raindrops:Lcom/htc/weather/animations/Raindrops;

.field private shower:Lcom/htc/weather/animations/Shower;

.field private sun:Lcom/htc/weather/animations/Sun3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim13$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim13$1;-><init>(Lcom/htc/weather/animations/Anim13;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim13;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim13$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim13$2;-><init>(Lcom/htc/weather/animations/Anim13;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim13;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim13$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim13$3;-><init>(Lcom/htc/weather/animations/Anim13;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim13;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Sun3;

    invoke-direct {v0, p1, p2}, Lcom/htc/weather/animations/Sun3;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim13;->sun:Lcom/htc/weather/animations/Sun3;

    new-instance v0, Lcom/htc/weather/animations/Shower;

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim13;->shower:Lcom/htc/weather/animations/Shower;

    new-instance v0, Lcom/htc/weather/animations/Raindrops;

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Raindrops;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim13;->raindrops:Lcom/htc/weather/animations/Raindrops;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 9

    iget-object v7, p0, Lcom/htc/weather/animations/Anim13;->sun:Lcom/htc/weather/animations/Sun3;

    invoke-virtual {v7}, Lcom/htc/weather/animations/Sun3;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/weather/animations/Anim13;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v7}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/weather/animations/Anim13;->raindrops:Lcom/htc/weather/animations/Raindrops;

    invoke-virtual {v7}, Lcom/htc/weather/animations/Raindrops;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v3

    array-length v7, v6

    array-length v8, v5

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    array-length v8, v3

    add-int/2addr v7, v8

    new-array v4, v7, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    :goto_0
    array-length v7, v6

    if-ge v1, v7, :cond_0

    aget-object v7, v6, v1

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/htc/weather/animations/Anim13;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/htc/weather/animations/Anim13;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/htc/weather/animations/Anim13;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    :goto_1
    array-length v7, v5

    if-ge v0, v7, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-object v7, v5, v0

    aput-object v7, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_2

    add-int/lit8 v2, v1, 0x1

    aget-object v7, v3, v0

    aput-object v7, v4, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_2

    :cond_2
    return-object v4
.end method

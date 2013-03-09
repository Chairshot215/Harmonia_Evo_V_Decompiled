.class public Lcom/htc/weather/animations/Anim06;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim06.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun:Lcom/htc/weather/animations/Sun;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 3
    .parameter "context"
    .parameter "env"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 41
    new-instance v0, Lcom/htc/weather/animations/Anim06$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim06$1;-><init>(Lcom/htc/weather/animations/Anim06;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim06;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 136
    new-instance v0, Lcom/htc/weather/animations/Anim06$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim06$2;-><init>(Lcom/htc/weather/animations/Anim06;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim06;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 231
    new-instance v0, Lcom/htc/weather/animations/Anim06$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim06$3;-><init>(Lcom/htc/weather/animations/Anim06;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim06;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 326
    new-instance v0, Lcom/htc/weather/animations/Anim06$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim06$4;-><init>(Lcom/htc/weather/animations/Anim06;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim06;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 21
    new-instance v0, Lcom/htc/weather/animations/Sun;

    iget-object v1, p0, Lcom/htc/weather/animations/Anim06;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/weather/animations/Anim06;->mEnv:Lcom/htc/weather/EnvSetting$Env;

    invoke-direct {v0, v1, v2}, Lcom/htc/weather/animations/Sun;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim06;->sun:Lcom/htc/weather/animations/Sun;

    .line 22
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 5

    .prologue
    .line 26
    iget-object v3, p0, Lcom/htc/weather/animations/Anim06;->sun:Lcom/htc/weather/animations/Sun;

    invoke-virtual {v3}, Lcom/htc/weather/animations/Sun;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    .line 27
    .local v2, sunSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v3, v2

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 29
    .local v1, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 30
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/htc/weather/animations/Anim06;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v3, v1, v0

    .line 33
    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim06;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v1, v3

    .line 34
    add-int/lit8 v3, v0, 0x2

    iget-object v4, p0, Lcom/htc/weather/animations/Anim06;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v1, v3

    .line 35
    add-int/lit8 v3, v0, 0x3

    iget-object v4, p0, Lcom/htc/weather/animations/Anim06;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v1, v3

    .line 36
    return-object v1
.end method

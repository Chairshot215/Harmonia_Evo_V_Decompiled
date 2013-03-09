.class public Lcom/htc/weather/animations/Anim36;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim36.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private moon:Lcom/htc/weather/animations/Moon;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10
    .parameter "context"
    .parameter "env"

    .prologue
    const/high16 v5, 0x3f80

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 43
    new-instance v0, Lcom/htc/weather/animations/Anim36$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim36$1;-><init>(Lcom/htc/weather/animations/Anim36;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim36;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 127
    new-instance v0, Lcom/htc/weather/animations/Anim36$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim36$2;-><init>(Lcom/htc/weather/animations/Anim36;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim36;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 211
    new-instance v0, Lcom/htc/weather/animations/Anim36$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim36$3;-><init>(Lcom/htc/weather/animations/Anim36;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim36;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 22
    new-instance v0, Lcom/htc/weather/animations/Moon;

    const/16 v3, 0x14

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Moon;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim36;->moon:Lcom/htc/weather/animations/Moon;

    .line 23
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 4

    .prologue
    .line 27
    iget-object v3, p0, Lcom/htc/weather/animations/Anim36;->moon:Lcom/htc/weather/animations/Moon;

    invoke-virtual {v3}, Lcom/htc/weather/animations/Moon;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v1

    .line 28
    .local v1, moonSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v3, v1

    add-int/lit8 v3, v3, 0x3

    new-array v2, v3, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 30
    .local v2, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 31
    aget-object v3, v1, v0

    aput-object v3, v2, v0

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iget-object v3, p0, Lcom/htc/weather/animations/Anim36;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v3, v2, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    iget-object v3, p0, Lcom/htc/weather/animations/Anim36;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v3, v2, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    iget-object v3, p0, Lcom/htc/weather/animations/Anim36;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v3, v2, v0

    .line 39
    return-object v2
.end method

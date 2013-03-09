.class public Lcom/htc/weather/animations/Anim02;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim02.java"


# instance fields
.field private cloud:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun:Lcom/htc/weather/animations/Sun;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 38
    new-instance v0, Lcom/htc/weather/animations/Anim02$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim02$1;-><init>(Lcom/htc/weather/animations/Anim02;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim02;->cloud:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 21
    new-instance v0, Lcom/htc/weather/animations/Sun;

    invoke-direct {v0, p1, p2}, Lcom/htc/weather/animations/Sun;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim02;->sun:Lcom/htc/weather/animations/Sun;

    .line 22
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 4

    .prologue
    .line 26
    iget-object v3, p0, Lcom/htc/weather/animations/Anim02;->sun:Lcom/htc/weather/animations/Sun;

    invoke-virtual {v3}, Lcom/htc/weather/animations/Sun;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    .line 27
    .local v2, sunSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 28
    .local v1, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v0, 0x0

    .line 29
    .local v0, i:I
    const/4 v0, 0x0

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
    iget-object v3, p0, Lcom/htc/weather/animations/Anim02;->cloud:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v3, v1, v0

    .line 33
    return-object v1
.end method

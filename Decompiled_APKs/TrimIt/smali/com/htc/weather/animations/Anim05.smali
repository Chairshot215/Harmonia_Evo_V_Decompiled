.class public Lcom/htc/weather/animations/Anim05;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim05.java"


# instance fields
.field private hazeSun:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun:Lcom/htc/weather/animations/Sun;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 37
    new-instance v0, Lcom/htc/weather/animations/Anim05$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim05$1;-><init>(Lcom/htc/weather/animations/Anim05;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim05;->hazeSun:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 20
    new-instance v0, Lcom/htc/weather/animations/Sun;

    invoke-direct {v0, p1, p2}, Lcom/htc/weather/animations/Sun;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim05;->sun:Lcom/htc/weather/animations/Sun;

    .line 21
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 4

    .prologue
    .line 25
    iget-object v3, p0, Lcom/htc/weather/animations/Anim05;->sun:Lcom/htc/weather/animations/Sun;

    invoke-virtual {v3}, Lcom/htc/weather/animations/Sun;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    .line 26
    .local v2, sunSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 28
    .local v1, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 29
    aget-object v3, v2, v0

    aput-object v3, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v3, p0, Lcom/htc/weather/animations/Anim05;->hazeSun:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v3, v1, v0

    .line 32
    return-object v1
.end method

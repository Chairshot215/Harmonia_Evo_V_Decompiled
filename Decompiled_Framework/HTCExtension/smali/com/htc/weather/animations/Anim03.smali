.class public Lcom/htc/weather/animations/Anim03;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim03.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun:Lcom/htc/weather/animations/Sun;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim03$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim03$1;-><init>(Lcom/htc/weather/animations/Anim03;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim03;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim03$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim03$2;-><init>(Lcom/htc/weather/animations/Anim03;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim03;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Sun;

    iget-object v1, p0, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/htc/weather/animations/Sun;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim03;->sun:Lcom/htc/weather/animations/Sun;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 5

    iget-object v3, p0, Lcom/htc/weather/animations/Anim03;->sun:Lcom/htc/weather/animations/Sun;

    invoke-virtual {v3}, Lcom/htc/weather/animations/Sun;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    array-length v3, v2

    add-int/lit8 v3, v3, 0x2

    new-array v1, v3, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v0, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/htc/weather/animations/Anim03;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v3, v1, v0

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/htc/weather/animations/Anim03;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v4, v1, v3

    return-object v1
.end method

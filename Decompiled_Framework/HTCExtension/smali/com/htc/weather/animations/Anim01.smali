.class public Lcom/htc/weather/animations/Anim01;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim01.java"


# instance fields
.field private sun:Lcom/htc/weather/animations/Sun;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Sun;

    iget-object v1, p0, Lcom/htc/weather/animations/WeatherAnimationData;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/htc/weather/animations/Sun;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim01;->sun:Lcom/htc/weather/animations/Sun;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 1

    iget-object v0, p0, Lcom/htc/weather/animations/Anim01;->sun:Lcom/htc/weather/animations/Sun;

    invoke-virtual {v0}, Lcom/htc/weather/animations/Sun;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    return-object v0
.end method

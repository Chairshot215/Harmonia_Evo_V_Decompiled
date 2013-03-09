.class public Lcom/htc/weather/animations/Anim54;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim54.java"


# instance fields
.field private mTornado:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 33
    new-instance v0, Lcom/htc/weather/animations/Anim54$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim54$1;-><init>(Lcom/htc/weather/animations/Anim54;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim54;->mTornado:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 21
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 26
    const/4 v1, 0x1

    new-array v0, v1, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim54;->mTornado:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    .line 30
    .local v0, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    return-object v0
.end method

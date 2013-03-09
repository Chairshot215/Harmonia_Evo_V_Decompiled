.class public Lcom/htc/weather/animations/Anim53;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim53.java"


# instance fields
.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dust07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dustlow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dustlow05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dustlow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private dustup03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 30
    new-instance v0, Lcom/htc/weather/animations/Anim53$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim53$1;-><init>(Lcom/htc/weather/animations/Anim53;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim53;->dustlow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 102
    new-instance v0, Lcom/htc/weather/animations/Anim53$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim53$2;-><init>(Lcom/htc/weather/animations/Anim53;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim53;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 197
    new-instance v0, Lcom/htc/weather/animations/Anim53$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim53$3;-><init>(Lcom/htc/weather/animations/Anim53;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim53;->dustup03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 355
    new-instance v0, Lcom/htc/weather/animations/Anim53$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim53$4;-><init>(Lcom/htc/weather/animations/Anim53;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim53;->dustlow05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 459
    new-instance v0, Lcom/htc/weather/animations/Anim53$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim53$5;-><init>(Lcom/htc/weather/animations/Anim53;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim53;->dustlow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 563
    new-instance v0, Lcom/htc/weather/animations/Anim53$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim53$6;-><init>(Lcom/htc/weather/animations/Anim53;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim53;->dust07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 21
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53;->dustlow01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53;->dustup03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53;->dustlow05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53;->dustlow06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/weather/animations/Anim53;->dust07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method

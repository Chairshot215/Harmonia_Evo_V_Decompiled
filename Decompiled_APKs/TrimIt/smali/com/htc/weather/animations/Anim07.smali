.class public Lcom/htc/weather/animations/Anim07;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim07.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 31
    new-instance v0, Lcom/htc/weather/animations/Anim07$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim07$1;-><init>(Lcom/htc/weather/animations/Anim07;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim07;->cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 135
    new-instance v0, Lcom/htc/weather/animations/Anim07$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim07$2;-><init>(Lcom/htc/weather/animations/Anim07;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim07;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 239
    new-instance v0, Lcom/htc/weather/animations/Anim07$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim07$3;-><init>(Lcom/htc/weather/animations/Anim07;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim07;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 343
    new-instance v0, Lcom/htc/weather/animations/Anim07$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim07$4;-><init>(Lcom/htc/weather/animations/Anim07;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim07;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 22
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07;->cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/weather/animations/Anim07;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method

.class public Lcom/htc/weather/animations/Sun2;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Sun2.java"


# instance fields
.field private extremeHeat:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private flare:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun1:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 37
    new-instance v0, Lcom/htc/weather/animations/Sun2$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Sun2$1;-><init>(Lcom/htc/weather/animations/Sun2;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Sun2;->flare:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 125
    new-instance v0, Lcom/htc/weather/animations/Sun2$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Sun2$2;-><init>(Lcom/htc/weather/animations/Sun2;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Sun2;->sun1:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 222
    new-instance v0, Lcom/htc/weather/animations/Sun2$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Sun2$3;-><init>(Lcom/htc/weather/animations/Sun2;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Sun2;->sun2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 313
    new-instance v0, Lcom/htc/weather/animations/Sun2$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Sun2$4;-><init>(Lcom/htc/weather/animations/Sun2;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Sun2;->extremeHeat:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V
    .locals 1
    .parameter "context"
    .parameter "env"
    .parameter "shift_x"
    .parameter "shift_y"
    .parameter "scale_x"
    .parameter "scale_y"
    .parameter "alpha"
    .parameter "delay"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p9}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    .line 37
    new-instance v0, Lcom/htc/weather/animations/Sun2$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Sun2$1;-><init>(Lcom/htc/weather/animations/Sun2;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Sun2;->flare:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 125
    new-instance v0, Lcom/htc/weather/animations/Sun2$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Sun2$2;-><init>(Lcom/htc/weather/animations/Sun2;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Sun2;->sun1:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 222
    new-instance v0, Lcom/htc/weather/animations/Sun2$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Sun2$3;-><init>(Lcom/htc/weather/animations/Sun2;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Sun2;->sun2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 313
    new-instance v0, Lcom/htc/weather/animations/Sun2$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Sun2$4;-><init>(Lcom/htc/weather/animations/Sun2;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Sun2;->extremeHeat:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 23
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Sun2;->flare:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Sun2;->extremeHeat:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method

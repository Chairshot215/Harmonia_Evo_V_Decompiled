.class public Lcom/htc/weather/animations/Heatwaves;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Heatwaves.java"


# instance fields
.field private wave01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private wave02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private wave03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private wave04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 35
    new-instance v0, Lcom/htc/weather/animations/Heatwaves$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Heatwaves$1;-><init>(Lcom/htc/weather/animations/Heatwaves;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Heatwaves;->wave01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 114
    new-instance v0, Lcom/htc/weather/animations/Heatwaves$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Heatwaves$2;-><init>(Lcom/htc/weather/animations/Heatwaves;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Heatwaves;->wave02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 193
    new-instance v0, Lcom/htc/weather/animations/Heatwaves$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Heatwaves$3;-><init>(Lcom/htc/weather/animations/Heatwaves;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Heatwaves;->wave03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 272
    new-instance v0, Lcom/htc/weather/animations/Heatwaves$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Heatwaves$4;-><init>(Lcom/htc/weather/animations/Heatwaves;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Heatwaves;->wave04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 20
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
    .line 24
    invoke-direct/range {p0 .. p9}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    .line 35
    new-instance v0, Lcom/htc/weather/animations/Heatwaves$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Heatwaves$1;-><init>(Lcom/htc/weather/animations/Heatwaves;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Heatwaves;->wave01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 114
    new-instance v0, Lcom/htc/weather/animations/Heatwaves$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Heatwaves$2;-><init>(Lcom/htc/weather/animations/Heatwaves;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Heatwaves;->wave02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 193
    new-instance v0, Lcom/htc/weather/animations/Heatwaves$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Heatwaves$3;-><init>(Lcom/htc/weather/animations/Heatwaves;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Heatwaves;->wave03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 272
    new-instance v0, Lcom/htc/weather/animations/Heatwaves$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Heatwaves$4;-><init>(Lcom/htc/weather/animations/Heatwaves;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Heatwaves;->wave04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 26
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Heatwaves;->wave01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Heatwaves;->wave02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/Heatwaves;->wave03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/weather/animations/Heatwaves;->wave04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method

.class public Lcom/htc/weather/animations/Wiper;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Wiper.java"


# instance fields
.field private Streaks:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private Wiper:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private Wiper2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private Wiper3:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 51
    new-instance v0, Lcom/htc/weather/animations/Wiper$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Wiper$1;-><init>(Lcom/htc/weather/animations/Wiper;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Wiper;->Wiper:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 162
    new-instance v0, Lcom/htc/weather/animations/Wiper$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Wiper$2;-><init>(Lcom/htc/weather/animations/Wiper;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Wiper;->Wiper2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 225
    new-instance v0, Lcom/htc/weather/animations/Wiper$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Wiper$3;-><init>(Lcom/htc/weather/animations/Wiper;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Wiper;->Wiper3:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 290
    new-instance v0, Lcom/htc/weather/animations/Wiper$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Wiper$4;-><init>(Lcom/htc/weather/animations/Wiper;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Wiper;->Streaks:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 40
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
    .line 35
    invoke-direct/range {p0 .. p9}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    .line 51
    new-instance v0, Lcom/htc/weather/animations/Wiper$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Wiper$1;-><init>(Lcom/htc/weather/animations/Wiper;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Wiper;->Wiper:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 162
    new-instance v0, Lcom/htc/weather/animations/Wiper$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Wiper$2;-><init>(Lcom/htc/weather/animations/Wiper;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Wiper;->Wiper2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 225
    new-instance v0, Lcom/htc/weather/animations/Wiper$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Wiper$3;-><init>(Lcom/htc/weather/animations/Wiper;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Wiper;->Wiper3:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 290
    new-instance v0, Lcom/htc/weather/animations/Wiper$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Wiper$4;-><init>(Lcom/htc/weather/animations/Wiper;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Wiper;->Streaks:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 36
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Wiper;->Wiper:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Wiper;->Wiper2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/Wiper;->Wiper3:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/weather/animations/Wiper;->Streaks:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method

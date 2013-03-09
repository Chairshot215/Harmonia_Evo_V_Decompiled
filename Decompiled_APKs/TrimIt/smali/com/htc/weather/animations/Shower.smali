.class public Lcom/htc/weather/animations/Shower;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Shower.java"


# instance fields
.field private showers01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private showers02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private showers03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private showers04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private showers05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 37
    new-instance v0, Lcom/htc/weather/animations/Shower$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$1;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 118
    new-instance v0, Lcom/htc/weather/animations/Shower$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$2;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 199
    new-instance v0, Lcom/htc/weather/animations/Shower$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$3;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 275
    new-instance v0, Lcom/htc/weather/animations/Shower$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$4;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 358
    new-instance v0, Lcom/htc/weather/animations/Shower$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$5;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

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
    new-instance v0, Lcom/htc/weather/animations/Shower$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$1;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 118
    new-instance v0, Lcom/htc/weather/animations/Shower$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$2;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 199
    new-instance v0, Lcom/htc/weather/animations/Shower$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$3;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 275
    new-instance v0, Lcom/htc/weather/animations/Shower$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$4;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 358
    new-instance v0, Lcom/htc/weather/animations/Shower$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Shower$5;-><init>(Lcom/htc/weather/animations/Shower;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Shower;->showers05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 24
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Shower;->showers01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Shower;->showers02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/Shower;->showers03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/weather/animations/Shower;->showers04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/weather/animations/Shower;->showers05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method

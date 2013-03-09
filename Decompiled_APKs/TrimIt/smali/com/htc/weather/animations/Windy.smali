.class public Lcom/htc/weather/animations/Windy;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Windy.java"


# instance fields
.field private bigleaf1:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private bigleaf2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private bigleaf3:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private bigleaf4:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private leaf02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private leaf03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private windy01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 36
    new-instance v0, Lcom/htc/weather/animations/Windy$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$1;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->leaf02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 128
    new-instance v0, Lcom/htc/weather/animations/Windy$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$2;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->bigleaf1:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 218
    new-instance v0, Lcom/htc/weather/animations/Windy$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$3;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->bigleaf2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 308
    new-instance v0, Lcom/htc/weather/animations/Windy$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$4;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->bigleaf3:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 396
    new-instance v0, Lcom/htc/weather/animations/Windy$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$5;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->bigleaf4:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 486
    new-instance v0, Lcom/htc/weather/animations/Windy$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$6;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->leaf03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 576
    new-instance v0, Lcom/htc/weather/animations/Windy$7;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$7;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->windy01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 27
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
    .line 20
    invoke-direct/range {p0 .. p9}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    .line 36
    new-instance v0, Lcom/htc/weather/animations/Windy$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$1;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->leaf02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 128
    new-instance v0, Lcom/htc/weather/animations/Windy$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$2;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->bigleaf1:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 218
    new-instance v0, Lcom/htc/weather/animations/Windy$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$3;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->bigleaf2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 308
    new-instance v0, Lcom/htc/weather/animations/Windy$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$4;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->bigleaf3:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 396
    new-instance v0, Lcom/htc/weather/animations/Windy$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$5;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->bigleaf4:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 486
    new-instance v0, Lcom/htc/weather/animations/Windy$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$6;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->leaf03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 576
    new-instance v0, Lcom/htc/weather/animations/Windy$7;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Windy$7;-><init>(Lcom/htc/weather/animations/Windy;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Windy;->windy01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 22
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Windy;->leaf02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Windy;->leaf03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/Windy;->windy01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/weather/animations/Windy;->bigleaf1:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/weather/animations/Windy;->bigleaf2:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/weather/animations/Windy;->bigleaf3:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/weather/animations/Windy;->bigleaf4:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method

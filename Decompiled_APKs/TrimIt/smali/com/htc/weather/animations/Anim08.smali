.class public Lcom/htc/weather/animations/Anim08;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim08.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 31
    new-instance v0, Lcom/htc/weather/animations/Anim08$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim08$1;-><init>(Lcom/htc/weather/animations/Anim08;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim08;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 127
    new-instance v0, Lcom/htc/weather/animations/Anim08$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim08$2;-><init>(Lcom/htc/weather/animations/Anim08;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim08;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 222
    new-instance v0, Lcom/htc/weather/animations/Anim08$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim08$3;-><init>(Lcom/htc/weather/animations/Anim08;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim08;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 317
    new-instance v0, Lcom/htc/weather/animations/Anim08$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim08$4;-><init>(Lcom/htc/weather/animations/Anim08;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim08;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 412
    new-instance v0, Lcom/htc/weather/animations/Anim08$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim08$5;-><init>(Lcom/htc/weather/animations/Anim08;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim08;->cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 507
    new-instance v0, Lcom/htc/weather/animations/Anim08$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim08$6;-><init>(Lcom/htc/weather/animations/Anim08;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim08;->cloud06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 602
    new-instance v0, Lcom/htc/weather/animations/Anim08$7;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim08$7;-><init>(Lcom/htc/weather/animations/Anim08;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim08;->cloud07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 21
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/weather/animations/Anim08;->shift_x_:I

    .line 22
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08;->cloud05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08;->cloud06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/htc/weather/animations/Anim08;->cloud07:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v0, v1

    return-object v0
.end method

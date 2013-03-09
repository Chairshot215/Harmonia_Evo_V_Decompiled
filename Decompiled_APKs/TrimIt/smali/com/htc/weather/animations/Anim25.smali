.class public Lcom/htc/weather/animations/Anim25;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim25.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingSleet:Lcom/htc/weather/animations/FallingSleet;

.field private snowSleet05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private snowSleet06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 1
    .parameter "context"
    .parameter "env"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 50
    new-instance v0, Lcom/htc/weather/animations/Anim25$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim25$1;-><init>(Lcom/htc/weather/animations/Anim25;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim25;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 134
    new-instance v0, Lcom/htc/weather/animations/Anim25$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim25$2;-><init>(Lcom/htc/weather/animations/Anim25;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim25;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 218
    new-instance v0, Lcom/htc/weather/animations/Anim25$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim25$3;-><init>(Lcom/htc/weather/animations/Anim25;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim25;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 302
    new-instance v0, Lcom/htc/weather/animations/Anim25$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim25$4;-><init>(Lcom/htc/weather/animations/Anim25;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim25;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 386
    new-instance v0, Lcom/htc/weather/animations/Anim25$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim25$5;-><init>(Lcom/htc/weather/animations/Anim25;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim25;->snowSleet05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 472
    new-instance v0, Lcom/htc/weather/animations/Anim25$6;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim25$6;-><init>(Lcom/htc/weather/animations/Anim25;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim25;->snowSleet06:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 23
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 3

    .prologue
    .line 28
    const/4 v2, 0x5

    new-array v1, v2, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 29
    .local v1, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v0, 0x0

    .line 35
    .local v0, index:I
    iget-object v2, p0, Lcom/htc/weather/animations/Anim25;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v1, v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    iget-object v2, p0, Lcom/htc/weather/animations/Anim25;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v1, v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    iget-object v2, p0, Lcom/htc/weather/animations/Anim25;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v1, v0

    .line 40
    add-int/lit8 v0, v0, 0x1

    .line 41
    iget-object v2, p0, Lcom/htc/weather/animations/Anim25;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 43
    iget-object v2, p0, Lcom/htc/weather/animations/Anim25;->snowSleet05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v2, v1, v0

    .line 47
    return-object v1
.end method

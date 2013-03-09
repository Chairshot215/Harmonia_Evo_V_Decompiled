.class public Lcom/htc/weather/animations/Anim20;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim20.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

.field private snowFlurries04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun3:Lcom/htc/weather/animations/Sun3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10
    .parameter "context"
    .parameter "env"

    .prologue
    const-wide/16 v8, 0x0

    const/high16 v5, 0x3f80

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 48
    new-instance v0, Lcom/htc/weather/animations/Anim20$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim20$1;-><init>(Lcom/htc/weather/animations/Anim20;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim20;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 154
    new-instance v0, Lcom/htc/weather/animations/Anim20$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim20$2;-><init>(Lcom/htc/weather/animations/Anim20;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim20;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 261
    new-instance v0, Lcom/htc/weather/animations/Anim20$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim20$3;-><init>(Lcom/htc/weather/animations/Anim20;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim20;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 356
    new-instance v0, Lcom/htc/weather/animations/Anim20$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim20$4;-><init>(Lcom/htc/weather/animations/Anim20;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim20;->snowFlurries04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 24
    new-instance v0, Lcom/htc/weather/animations/Sun3;

    const/4 v3, 0x0

    const/16 v4, -0x14

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Sun3;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim20;->sun3:Lcom/htc/weather/animations/Sun3;

    .line 25
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake;

    const/16 v3, 0x14

    const/4 v4, 0x5

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/FallingSnowFlake;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim20;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    .line 26
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 8

    .prologue
    .line 30
    iget-object v6, p0, Lcom/htc/weather/animations/Anim20;->sun3:Lcom/htc/weather/animations/Sun3;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Sun3;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v5

    .line 31
    .local v5, sunSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v6, p0, Lcom/htc/weather/animations/Anim20;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    invoke-virtual {v6}, Lcom/htc/weather/animations/FallingSnowFlake;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    .line 32
    .local v0, fallingSnowFlakeSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v6, v5

    array-length v7, v0

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    new-array v4, v6, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 33
    .local v4, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v2, 0x0

    .line 34
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 35
    aget-object v6, v5, v1

    aput-object v6, v4, v2

    .line 34
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 37
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v6, p0, Lcom/htc/weather/animations/Anim20;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 38
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    iget-object v6, p0, Lcom/htc/weather/animations/Anim20;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v3

    .line 40
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    iget-object v6, p0, Lcom/htc/weather/animations/Anim20;->snowFlurries04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 41
    const/4 v1, 0x0

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 42
    aget-object v6, v0, v1

    aput-object v6, v4, v2

    .line 41
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 44
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    iget-object v6, p0, Lcom/htc/weather/animations/Anim20;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 45
    return-object v4
.end method

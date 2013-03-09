.class public Lcom/htc/weather/animations/Anim15;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim15.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private lightning:Lcom/htc/weather/animations/LightningV1;

.field private raindrops:Lcom/htc/weather/animations/Raindrops;

.field private shower:Lcom/htc/weather/animations/Shower;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10
    .parameter "context"
    .parameter "env"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 61
    new-instance v0, Lcom/htc/weather/animations/Anim15$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim15$1;-><init>(Lcom/htc/weather/animations/Anim15;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim15;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 148
    new-instance v0, Lcom/htc/weather/animations/Anim15$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim15$2;-><init>(Lcom/htc/weather/animations/Anim15;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim15;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 235
    new-instance v0, Lcom/htc/weather/animations/Anim15$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim15$3;-><init>(Lcom/htc/weather/animations/Anim15;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim15;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 322
    new-instance v0, Lcom/htc/weather/animations/Anim15$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim15$4;-><init>(Lcom/htc/weather/animations/Anim15;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim15;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 24
    new-instance v0, Lcom/htc/weather/animations/Shower;

    const/16 v3, 0xa

    const/16 v4, -0xa

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim15;->shower:Lcom/htc/weather/animations/Shower;

    .line 25
    new-instance v0, Lcom/htc/weather/animations/LightningV1;

    const/16 v3, -0x14

    const/16 v4, -0x19

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x14

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/LightningV1;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim15;->lightning:Lcom/htc/weather/animations/LightningV1;

    .line 26
    new-instance v0, Lcom/htc/weather/animations/Raindrops;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Raindrops;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim15;->raindrops:Lcom/htc/weather/animations/Raindrops;

    .line 27
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 9

    .prologue
    .line 31
    iget-object v7, p0, Lcom/htc/weather/animations/Anim15;->lightning:Lcom/htc/weather/animations/LightningV1;

    invoke-virtual {v7}, Lcom/htc/weather/animations/LightningV1;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v3

    .line 32
    .local v3, lightningSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v7, p0, Lcom/htc/weather/animations/Anim15;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v7}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v6

    .line 33
    .local v6, showerSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v7, p0, Lcom/htc/weather/animations/Anim15;->raindrops:Lcom/htc/weather/animations/Raindrops;

    invoke-virtual {v7}, Lcom/htc/weather/animations/Raindrops;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v4

    .line 35
    .local v4, raindropsSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v7, v3

    array-length v8, v6

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x4

    array-length v8, v4

    add-int/2addr v7, v8

    new-array v5, v7, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 37
    .local v5, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v1, 0x0

    .line 38
    .local v1, index:I
    iget-object v7, p0, Lcom/htc/weather/animations/Anim15;->cloud04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v5, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    iget-object v7, p0, Lcom/htc/weather/animations/Anim15;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v5, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 43
    aget-object v7, v6, v0

    aput-object v7, v5, v1

    .line 42
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget-object v7, p0, Lcom/htc/weather/animations/Anim15;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v5, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 48
    const/4 v0, 0x0

    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_1

    .line 49
    aget-object v7, v3, v0

    aput-object v7, v5, v1

    .line 48
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51
    :cond_1
    iget-object v7, p0, Lcom/htc/weather/animations/Anim15;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v5, v1

    .line 52
    add-int/lit8 v1, v1, 0x1

    .line 54
    const/4 v0, 0x0

    :goto_2
    array-length v7, v4

    if-ge v0, v7, :cond_2

    .line 55
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aget-object v7, v4, v0

    aput-object v7, v5, v1

    .line 54
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_2

    .line 58
    :cond_2
    return-object v5
.end method

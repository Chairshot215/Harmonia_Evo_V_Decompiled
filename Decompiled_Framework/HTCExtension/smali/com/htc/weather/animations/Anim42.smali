.class public Lcom/htc/weather/animations/Anim42;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim42.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private lightning:Lcom/htc/weather/animations/LightningV1;

.field private moon:Lcom/htc/weather/animations/Moon;

.field private raindrops:Lcom/htc/weather/animations/Raindrops;

.field private shower:Lcom/htc/weather/animations/Shower;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim42$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim42$1;-><init>(Lcom/htc/weather/animations/Anim42;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim42;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim42$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim42$2;-><init>(Lcom/htc/weather/animations/Anim42;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim42;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim42$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim42$3;-><init>(Lcom/htc/weather/animations/Anim42;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim42;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Moon;

    const/16 v3, 0x14

    const/16 v4, -0xa

    const v5, 0x3f4ccccd

    const v6, 0x3f4ccccd

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Moon;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim42;->moon:Lcom/htc/weather/animations/Moon;

    new-instance v0, Lcom/htc/weather/animations/Shower;

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim42;->shower:Lcom/htc/weather/animations/Shower;

    new-instance v0, Lcom/htc/weather/animations/LightningV1;

    const/16 v3, -0xa

    const/16 v4, -0xf

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/LightningV1;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim42;->lightning:Lcom/htc/weather/animations/LightningV1;

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

    iput-object v0, p0, Lcom/htc/weather/animations/Anim42;->raindrops:Lcom/htc/weather/animations/Raindrops;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 9

    iget-object v7, p0, Lcom/htc/weather/animations/Anim42;->moon:Lcom/htc/weather/animations/Moon;

    invoke-virtual {v7}, Lcom/htc/weather/animations/Moon;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v3

    iget-object v7, p0, Lcom/htc/weather/animations/Anim42;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v7}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/weather/animations/Anim42;->lightning:Lcom/htc/weather/animations/LightningV1;

    invoke-virtual {v7}, Lcom/htc/weather/animations/LightningV1;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v2

    iget-object v7, p0, Lcom/htc/weather/animations/Anim42;->raindrops:Lcom/htc/weather/animations/Raindrops;

    invoke-virtual {v7}, Lcom/htc/weather/animations/Raindrops;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v4

    array-length v7, v3

    array-length v8, v4

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    array-length v8, v6

    add-int/2addr v7, v8

    array-length v8, v2

    add-int/2addr v7, v8

    new-array v5, v7, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_0

    aget-object v7, v3, v1

    aput-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/htc/weather/animations/Anim42;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    iget-object v7, p0, Lcom/htc/weather/animations/Anim42;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_1

    aget-object v7, v6, v0

    aput-object v7, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v7, v2

    if-ge v0, v7, :cond_2

    aget-object v7, v2, v0

    aput-object v7, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v7, p0, Lcom/htc/weather/animations/Anim42;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    :goto_3
    array-length v7, v4

    if-ge v0, v7, :cond_3

    aget-object v7, v4, v0

    aput-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-object v5
.end method

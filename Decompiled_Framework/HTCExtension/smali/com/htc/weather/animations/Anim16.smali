.class public Lcom/htc/weather/animations/Anim16;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim16.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private lightning:Lcom/htc/weather/animations/LightningV1;

.field private raindrops:Lcom/htc/weather/animations/Raindrops;

.field private shower:Lcom/htc/weather/animations/Shower;

.field private sun3:Lcom/htc/weather/animations/Sun3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim16$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim16$1;-><init>(Lcom/htc/weather/animations/Anim16;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim16;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim16$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim16$2;-><init>(Lcom/htc/weather/animations/Anim16;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim16;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim16$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim16$3;-><init>(Lcom/htc/weather/animations/Anim16;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim16;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Sun3;

    const/4 v3, 0x0

    const/16 v4, -0xa

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Sun3;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim16;->sun3:Lcom/htc/weather/animations/Sun3;

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

    iput-object v0, p0, Lcom/htc/weather/animations/Anim16;->shower:Lcom/htc/weather/animations/Shower;

    new-instance v0, Lcom/htc/weather/animations/LightningV1;

    const/16 v3, -0x14

    const/16 v4, -0xf

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/LightningV1;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim16;->lightning:Lcom/htc/weather/animations/LightningV1;

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

    iput-object v0, p0, Lcom/htc/weather/animations/Anim16;->raindrops:Lcom/htc/weather/animations/Raindrops;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 10

    iget-object v8, p0, Lcom/htc/weather/animations/Anim16;->sun3:Lcom/htc/weather/animations/Sun3;

    invoke-virtual {v8}, Lcom/htc/weather/animations/Sun3;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/weather/animations/Anim16;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v8}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v6

    iget-object v8, p0, Lcom/htc/weather/animations/Anim16;->lightning:Lcom/htc/weather/animations/LightningV1;

    invoke-virtual {v8}, Lcom/htc/weather/animations/LightningV1;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v3

    iget-object v8, p0, Lcom/htc/weather/animations/Anim16;->raindrops:Lcom/htc/weather/animations/Raindrops;

    invoke-virtual {v8}, Lcom/htc/weather/animations/Raindrops;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v4

    array-length v8, v7

    array-length v9, v6

    add-int/2addr v8, v9

    array-length v9, v3

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x3

    array-length v9, v4

    add-int/2addr v8, v9

    new-array v5, v8, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v1, 0x0

    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_0

    aget-object v8, v7, v1

    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/htc/weather/animations/Anim16;->cloud03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    :goto_1
    array-length v8, v6

    if-ge v0, v8, :cond_1

    aget-object v8, v6, v0

    aput-object v8, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/htc/weather/animations/Anim16;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    :goto_2
    array-length v8, v3

    if-ge v0, v8, :cond_2

    aget-object v8, v3, v0

    aput-object v8, v5, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v8, p0, Lcom/htc/weather/animations/Anim16;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v8, v5, v1

    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x0

    :goto_3
    array-length v8, v4

    if-ge v0, v8, :cond_3

    add-int/lit8 v2, v1, 0x1

    aget-object v8, v4, v0

    aput-object v8, v5, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_3

    :cond_3
    return-object v5
.end method

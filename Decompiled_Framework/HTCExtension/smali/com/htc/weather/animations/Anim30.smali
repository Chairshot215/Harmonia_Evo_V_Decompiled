.class public Lcom/htc/weather/animations/Anim30;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim30.java"


# instance fields
.field private heatvaves:Lcom/htc/weather/animations/Heatwaves;

.field private mirage01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private mirage02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private mirage03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private mirage04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private mirage05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private sun:Lcom/htc/weather/animations/Sun2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 11

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/high16 v5, 0x3f80

    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    new-instance v0, Lcom/htc/weather/animations/Anim30$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$1;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim30$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$2;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim30$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$3;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim30$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$4;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Anim30$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$5;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    new-instance v0, Lcom/htc/weather/animations/Heatwaves;

    const/16 v3, 0x14

    const/16 v4, -0x14

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Heatwaves;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->heatvaves:Lcom/htc/weather/animations/Heatwaves;

    new-instance v0, Lcom/htc/weather/animations/Sun2;

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move v4, v10

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Sun2;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->sun:Lcom/htc/weather/animations/Sun2;

    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 8

    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->heatvaves:Lcom/htc/weather/animations/Heatwaves;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Heatwaves;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->sun:Lcom/htc/weather/animations/Sun2;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Sun2;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v5

    array-length v6, v0

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x5

    new-array v4, v6, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v2, 0x1

    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    const/4 v1, 0x0

    move v2, v3

    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    aget-object v6, v5, v1

    aput-object v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-object v6, v0, v1

    aput-object v6, v4, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    :cond_1
    return-object v4
.end method

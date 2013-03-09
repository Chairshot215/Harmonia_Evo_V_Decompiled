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
    .parameter "context"
    .parameter "env"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/high16 v5, 0x3f80

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 56
    new-instance v0, Lcom/htc/weather/animations/Anim30$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$1;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 122
    new-instance v0, Lcom/htc/weather/animations/Anim30$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$2;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 188
    new-instance v0, Lcom/htc/weather/animations/Anim30$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$3;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 265
    new-instance v0, Lcom/htc/weather/animations/Anim30$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$4;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 342
    new-instance v0, Lcom/htc/weather/animations/Anim30$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim30$5;-><init>(Lcom/htc/weather/animations/Anim30;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->mirage05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 23
    new-instance v0, Lcom/htc/weather/animations/Heatwaves;

    const/16 v3, 0x14

    const/16 v4, -0x14

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Heatwaves;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->heatvaves:Lcom/htc/weather/animations/Heatwaves;

    .line 24
    new-instance v0, Lcom/htc/weather/animations/Sun2;

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move v4, v10

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Sun2;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim30;->sun:Lcom/htc/weather/animations/Sun2;

    .line 25
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 8

    .prologue
    .line 29
    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->heatvaves:Lcom/htc/weather/animations/Heatwaves;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Heatwaves;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    .line 30
    .local v0, heatvavesSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->sun:Lcom/htc/weather/animations/Sun2;

    invoke-virtual {v6}, Lcom/htc/weather/animations/Sun2;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v5

    .line 31
    .local v5, sunSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v6, v0

    array-length v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x5

    new-array v4, v6, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 33
    .local v4, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v2, 0x0

    .line 37
    .local v2, index:I
    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage03:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage04:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v6, p0, Lcom/htc/weather/animations/Anim30;->mirage05:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v6, v4, v2

    .line 46
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 47
    aget-object v6, v5, v1

    aput-object v6, v4, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_1

    .line 51
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-object v6, v0, v1

    aput-object v6, v4, v2

    .line 50
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 53
    :cond_1
    return-object v4
.end method

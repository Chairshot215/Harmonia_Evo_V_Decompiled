.class public Lcom/htc/weather/animations/Anim17;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim17.java"


# instance fields
.field private cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private lightning:Lcom/htc/weather/animations/LightningV1;

.field private raindrops:Lcom/htc/weather/animations/Raindrops;

.field private shower:Lcom/htc/weather/animations/Shower;

.field private sun:Lcom/htc/weather/animations/Sun;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 11
    .parameter "context"
    .parameter "env"

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    const/high16 v5, 0x3f80

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 60
    new-instance v0, Lcom/htc/weather/animations/Anim17$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim17$1;-><init>(Lcom/htc/weather/animations/Anim17;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim17;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 143
    new-instance v0, Lcom/htc/weather/animations/Anim17$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim17$2;-><init>(Lcom/htc/weather/animations/Anim17;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim17;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 25
    new-instance v0, Lcom/htc/weather/animations/Sun;

    invoke-direct {v0, p1, p2}, Lcom/htc/weather/animations/Sun;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim17;->sun:Lcom/htc/weather/animations/Sun;

    .line 26
    new-instance v0, Lcom/htc/weather/animations/Shower;

    const/16 v3, -0xa

    const/16 v4, -0x14

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Shower;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim17;->shower:Lcom/htc/weather/animations/Shower;

    .line 27
    new-instance v0, Lcom/htc/weather/animations/LightningV1;

    const/16 v3, -0x41

    const/16 v4, -0x19

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/LightningV1;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim17;->lightning:Lcom/htc/weather/animations/LightningV1;

    .line 28
    new-instance v0, Lcom/htc/weather/animations/Raindrops;

    move-object v1, p1

    move-object v2, p2

    move v3, v10

    move v4, v10

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/Raindrops;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim17;->raindrops:Lcom/htc/weather/animations/Raindrops;

    .line 29
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 10

    .prologue
    .line 33
    iget-object v8, p0, Lcom/htc/weather/animations/Anim17;->sun:Lcom/htc/weather/animations/Sun;

    invoke-virtual {v8}, Lcom/htc/weather/animations/Sun;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v7

    .line 34
    .local v7, sunSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v8, p0, Lcom/htc/weather/animations/Anim17;->shower:Lcom/htc/weather/animations/Shower;

    invoke-virtual {v8}, Lcom/htc/weather/animations/Shower;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v6

    .line 35
    .local v6, showerSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v8, p0, Lcom/htc/weather/animations/Anim17;->lightning:Lcom/htc/weather/animations/LightningV1;

    invoke-virtual {v8}, Lcom/htc/weather/animations/LightningV1;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v3

    .line 36
    .local v3, lightningSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    iget-object v8, p0, Lcom/htc/weather/animations/Anim17;->raindrops:Lcom/htc/weather/animations/Raindrops;

    invoke-virtual {v8}, Lcom/htc/weather/animations/Raindrops;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v4

    .line 37
    .local v4, raindropsSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v8, v7

    array-length v9, v6

    add-int/2addr v8, v9

    array-length v9, v3

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x2

    array-length v9, v4

    add-int/2addr v8, v9

    new-array v5, v8, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 41
    .local v5, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_0

    .line 42
    aget-object v8, v7, v1

    aput-object v8, v5, v1

    .line 41
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v8, v6

    if-ge v0, v8, :cond_1

    .line 45
    aget-object v8, v6, v0

    aput-object v8, v5, v1

    .line 44
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 47
    :cond_1
    const/4 v0, 0x0

    :goto_2
    array-length v8, v3

    if-ge v0, v8, :cond_2

    .line 48
    aget-object v8, v3, v0

    aput-object v8, v5, v1

    .line 47
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 50
    :cond_2
    iget-object v8, p0, Lcom/htc/weather/animations/Anim17;->cloud02:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v8, v5, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    iget-object v8, p0, Lcom/htc/weather/animations/Anim17;->cloud01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v8, v5, v1

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    const/4 v0, 0x0

    :goto_3
    array-length v8, v4

    if-ge v0, v8, :cond_3

    .line 55
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    aget-object v8, v4, v0

    aput-object v8, v5, v1

    .line 54
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_3

    .line 58
    :cond_3
    return-object v5
.end method

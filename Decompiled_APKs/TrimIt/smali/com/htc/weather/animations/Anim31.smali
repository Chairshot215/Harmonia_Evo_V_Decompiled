.class public Lcom/htc/weather/animations/Anim31;
.super Lcom/htc/weather/animations/WeatherAnimationData;
.source "Anim31.java"


# instance fields
.field private extreme_cold01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

.field private frost_lowerleft01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private frost_lowerright01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private frost_topleft01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

.field private frost_topright01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V
    .locals 10
    .parameter "context"
    .parameter "env"

    .prologue
    const/high16 v5, 0x3f80

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/htc/weather/animations/WeatherAnimationData;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;)V

    .line 49
    new-instance v0, Lcom/htc/weather/animations/Anim31$1;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim31$1;-><init>(Lcom/htc/weather/animations/Anim31;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim31;->frost_lowerright01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 103
    new-instance v0, Lcom/htc/weather/animations/Anim31$2;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim31$2;-><init>(Lcom/htc/weather/animations/Anim31;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim31;->frost_lowerleft01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 157
    new-instance v0, Lcom/htc/weather/animations/Anim31$3;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim31$3;-><init>(Lcom/htc/weather/animations/Anim31;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim31;->frost_topright01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 208
    new-instance v0, Lcom/htc/weather/animations/Anim31$4;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim31$4;-><init>(Lcom/htc/weather/animations/Anim31;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim31;->frost_topleft01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 329
    new-instance v0, Lcom/htc/weather/animations/Anim31$5;

    invoke-direct {v0, p0}, Lcom/htc/weather/animations/Anim31$5;-><init>(Lcom/htc/weather/animations/Anim31;)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim31;->extreme_cold01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 24
    new-instance v0, Lcom/htc/weather/animations/FallingSnowFlake;

    const/16 v3, 0xf

    const/4 v4, 0x5

    const-wide/16 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lcom/htc/weather/animations/FallingSnowFlake;-><init>(Landroid/content/Context;Lcom/htc/weather/EnvSetting$Env;IIFFFJ)V

    iput-object v0, p0, Lcom/htc/weather/animations/Anim31;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    .line 25
    return-void
.end method


# virtual methods
.method public getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    .locals 6

    .prologue
    .line 29
    iget-object v5, p0, Lcom/htc/weather/animations/Anim31;->fallingSnowFlake:Lcom/htc/weather/animations/FallingSnowFlake;

    invoke-virtual {v5}, Lcom/htc/weather/animations/FallingSnowFlake;->getImageViewsAndAnimations()[Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    move-result-object v0

    .line 30
    .local v0, fallingSnowFlakeSets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    array-length v5, v0

    add-int/lit8 v5, v5, 0x5

    new-array v4, v5, [Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    .line 31
    .local v4, sets:[Lcom/htc/weather/animations/ImageViewAndAnimationSets;
    const/4 v2, 0x0

    .line 33
    .local v2, index:I
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v5, p0, Lcom/htc/weather/animations/Anim31;->frost_lowerright01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v2

    .line 34
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    iget-object v5, p0, Lcom/htc/weather/animations/Anim31;->frost_lowerleft01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v3

    .line 35
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    iget-object v5, p0, Lcom/htc/weather/animations/Anim31;->frost_topright01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v2

    .line 36
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    iget-object v5, p0, Lcom/htc/weather/animations/Anim31;->frost_topleft01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v3

    .line 38
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    iget-object v5, p0, Lcom/htc/weather/animations/Anim31;->extreme_cold01:Lcom/htc/weather/animations/ImageViewAndAnimationSets;

    aput-object v5, v4, v2

    .line 40
    const/4 v1, 0x0

    .local v1, i:I
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 41
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .restart local v3       #index:I
    aget-object v5, v0, v1

    aput-object v5, v4, v2

    .line 40
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_0

    .line 43
    :cond_0
    return-object v4
.end method

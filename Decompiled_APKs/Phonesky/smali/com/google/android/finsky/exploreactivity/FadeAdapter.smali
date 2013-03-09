.class public Lcom/google/android/finsky/exploreactivity/FadeAdapter;
.super Ljava/lang/Object;
.source "FadeAdapter.java"


# instance fields
.field private final mColor:Lcom/jme3/math/ColorRGBA;

.field private final mFadeDelay:J

.field private final mFadeInDuration:F

.field private final mFadeOutDuration:F

.field private mFadeProgress:F

.field private mFadeStartTime:J

.field private mFadingIn:Z

.field private final mGeometries:[Lcom/jme3/scene/Geometry;


# direct methods
.method public varargs constructor <init>(FFF[Lcom/jme3/scene/Geometry;)V
    .locals 2
    .parameter "fadeInDuration"
    .parameter "fadeOutDuration"
    .parameter "fadeInDelay"
    .parameter "geometries"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadingIn:Z

    .line 23
    new-instance v0, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v0}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mColor:Lcom/jme3/math/ColorRGBA;

    .line 41
    iput-object p4, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mGeometries:[Lcom/jme3/scene/Geometry;

    .line 42
    iput p1, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeInDuration:F

    .line 43
    iput p2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeOutDuration:F

    .line 44
    const/high16 v0, 0x447a

    mul-float/2addr v0, p3

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeDelay:J

    .line 45
    return-void
.end method


# virtual methods
.method public fade(Z)V
    .locals 4
    .parameter "fadeIn"

    .prologue
    .line 54
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadingIn:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeStartTime:J

    .line 57
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadingIn:Z

    .line 58
    return-void
.end method

.method public getFadeProgress()F
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    return v0
.end method

.method public isFadingIn()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadingIn:Z

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public makeInvisible()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadingIn:Z

    .line 64
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadingIn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    .line 84
    return-void

    .line 83
    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public update(F)V
    .locals 7
    .parameter "timeDelta"

    .prologue
    const/high16 v6, 0x3f80

    .line 88
    iget-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadingIn:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeDelay:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeDelay:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 105
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadingIn:Z

    if-eqz v2, :cond_2

    .line 93
    iget v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeInDuration:F

    div-float v3, p1, v3

    add-float/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    .line 97
    :goto_0
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mColor:Lcom/jme3/math/ColorRGBA;

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v6, v6, v6, v3}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mGeometries:[Lcom/jme3/scene/Geometry;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mGeometries:[Lcom/jme3/scene/Geometry;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    .line 100
    .local v1, mat:Lcom/jme3/material/Material;
    if-nez v1, :cond_3

    .line 98
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v0           #i:I
    .end local v1           #mat:Lcom/jme3/material/Material;
    :cond_2
    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    iget v4, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeOutDuration:F

    div-float v4, p1, v4

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mFadeProgress:F

    goto :goto_0

    .line 103
    .restart local v0       #i:I
    .restart local v1       #mat:Lcom/jme3/material/Material;
    :cond_3
    const-string v2, "Color"

    iget-object v3, p0, Lcom/google/android/finsky/exploreactivity/FadeAdapter;->mColor:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {v1, v2, v3}, Lcom/jme3/material/Material;->setColor(Ljava/lang/String;Lcom/jme3/math/ColorRGBA;)V

    goto :goto_2
.end method

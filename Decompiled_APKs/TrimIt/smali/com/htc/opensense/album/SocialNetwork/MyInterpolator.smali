.class Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;
.super Ljava/lang/Object;
.source "DeleteAnimation.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private mFactor:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .parameter "factor"

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;->mFactor:F

    .line 100
    iput p1, p0, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;->mFactor:F

    .line 101
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 7
    .parameter "input"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, ans:F
    const-wide/high16 v1, 0x3ff0

    const/high16 v3, 0x3f80

    sub-float/2addr v3, p1

    float-to-double v3, v3

    const/high16 v5, 0x4000

    iget v6, p0, Lcom/htc/opensense/album/SocialNetwork/MyInterpolator;->mFactor:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v0, v1

    .line 106
    return v0
.end method

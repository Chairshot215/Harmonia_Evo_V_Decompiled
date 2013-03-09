.class public Lcom/htc/ml/PhotoLockScreen/BehindObj;
.super Ljava/lang/Object;
.source "BehindObj.java"


# static fields
.field public static final diSize:I = 0x16


# instance fields
.field public BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

.field private final diPrefix:Ljava/lang/String;

.field private fxDI:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private isImageSet:[Z

.field private isReleased:Z

.field private mBmp:Landroid/graphics/Bitmap;

.field private mScaledBmp:Landroid/graphics/Bitmap;

.field private final timelinePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/htc/fusion/fx/FxScene;)V
    .locals 6
    .parameter "scene"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x16

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-array v2, v4, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->fxDI:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 12
    new-array v2, v4, [Z

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->isImageSet:[Z

    .line 13
    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 14
    const-string v2, "timeline.behindphoto_loop"

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->timelinePrefix:Ljava/lang/String;

    .line 15
    const-string v2, "dynamicimage.behind_flying.photo"

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->diPrefix:Ljava/lang/String;

    .line 16
    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mBmp:Landroid/graphics/Bitmap;

    .line 17
    iput-object v3, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mScaledBmp:Landroid/graphics/Bitmap;

    .line 19
    iput-boolean v5, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->isReleased:Z

    .line 24
    const-string v1, "timeline.behindphoto_loop"

    .line 25
    .local v1, strName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/fusion/fx/FxScene;->findControl(Ljava/lang/String;)Lcom/htc/fusion/fx/FxControl;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 26
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v2, :cond_0

    .line 28
    new-array v2, v4, [Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->fxDI:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dynamicimage.behind_flying.photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v3, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->fxDI:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v2, v1}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v2

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v2, v3, v0

    .line 33
    iget-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->isImageSet:[Z

    aput-boolean v5, v2, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    .end local v0           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 130
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 131
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->release()V

    .line 132
    return-void
.end method

.method public getIsImageSet(I)Z
    .locals 1
    .parameter "idx"

    .prologue
    .line 39
    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-ge p1, v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->isImageSet:[Z

    aget-boolean v0, v0, p1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getmBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmScaledBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mScaledBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public noBitmap()Z
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, ret:Z
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mScaledBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :cond_0
    return v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-boolean v1, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->isReleased:Z

    if-eqz v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->isReleased:Z

    .line 96
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    if-eqz v1, :cond_1

    .line 97
    iput-object v2, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->BehindFlyingTimeLine:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 100
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0x16

    if-ge v0, v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->fxDI:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aput-object v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->releaseBmp()V

    .line 104
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/BehindObj;->releaseScaledBmp()V

    goto :goto_0
.end method

.method public releaseBmp()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mBmp:Landroid/graphics/Bitmap;

    .line 71
    :cond_0
    return-void
.end method

.method public releaseScaledBmp()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mScaledBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mScaledBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mScaledBmp:Landroid/graphics/Bitmap;

    .line 79
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "idx"
    .parameter "bmp"
    .parameter "set"

    .prologue
    .line 110
    if-ltz p1, :cond_0

    const/16 v0, 0x16

    if-ge p1, v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->fxDI:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->fxDI:[Lcom/htc/fusion/fx/controls/FxDynamicImage;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 115
    if-eqz p3, :cond_1

    .line 117
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->isImageSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->isImageSet:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    goto :goto_0
.end method

.method public setmBmp(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "Bmp"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mBmp:Landroid/graphics/Bitmap;

    .line 55
    return-void
.end method

.method public setmScaledBmp(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "ScaledBmp"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/BehindObj;->mScaledBmp:Landroid/graphics/Bitmap;

    .line 63
    return-void
.end method

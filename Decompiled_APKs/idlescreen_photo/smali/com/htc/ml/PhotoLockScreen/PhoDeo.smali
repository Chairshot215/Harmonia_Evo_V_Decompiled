.class public Lcom/htc/ml/PhotoLockScreen/PhoDeo;
.super Ljava/lang/Object;
.source "PhoDeo.java"


# instance fields
.field private fxDIL:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private fxDIP:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field private fxVTL:Lcom/htc/fusion/fx/controls/FxVideoTexture;

.field private fxVTP:Lcom/htc/fusion/fx/controls/FxVideoTexture;

.field private mBmp:Landroid/graphics/Bitmap;

.field private mIsImage:Z

.field private mIsPortrait:Z

.field public mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

.field private mScaledBmp:Landroid/graphics/Bitmap;

.field public m_mediaPlayer:Landroid/media/MediaPlayer;

.field private mediaStoreIdx:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIP:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 143
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIL:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 144
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTP:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 145
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTL:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 146
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mediaStoreIdx:I

    .line 147
    iput-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mIsImage:Z

    .line 148
    iput-boolean v2, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mIsPortrait:Z

    .line 149
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->m_mediaPlayer:Landroid/media/MediaPlayer;

    .line 150
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mBmp:Landroid/graphics/Bitmap;

    .line 151
    iput-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mScaledBmp:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getFxDIL()Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIL:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    return-object v0
.end method

.method public getFxDIP()Lcom/htc/fusion/fx/controls/FxDynamicImage;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIP:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    return-object v0
.end method

.method public getFxVTL()Lcom/htc/fusion/fx/controls/FxVideoTexture;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTL:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    return-object v0
.end method

.method public getFxVTP()Lcom/htc/fusion/fx/controls/FxVideoTexture;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTP:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    return-object v0
.end method

.method public getMediaStoreIdx()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mediaStoreIdx:I

    return v0
.end method

.method public getmBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmScaledBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mScaledBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isImage()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mIsImage:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mIsPortrait:Z

    return v0
.end method

.method public noBitmap()Z
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 112
    .local v0, ret:Z
    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mScaledBmp:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 113
    const/4 v0, 0x1

    .line 115
    :cond_0
    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->releaseBmp()V

    .line 73
    invoke-virtual {p0}, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->releaseScaledBmp()V

    .line 75
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mPhoDeoGroup:Lcom/htc/fusion/fx/FxTimelineControl;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getPlaybackCompleteSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fusion/fx/IMessageSource;->unbindAll()V

    .line 76
    return-void
.end method

.method public releaseBmp()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mBmp:Landroid/graphics/Bitmap;

    .line 100
    :cond_0
    return-void
.end method

.method public releaseScaledBmp()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mScaledBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mScaledBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mScaledBmp:Landroid/graphics/Bitmap;

    .line 108
    :cond_0
    return-void
.end method

.method public setFxDIL(Lcom/htc/fusion/fx/controls/FxDynamicImage;)V
    .locals 0
    .parameter "fxDIL"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIL:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 27
    return-void
.end method

.method public setFxDIP(Lcom/htc/fusion/fx/controls/FxDynamicImage;)V
    .locals 0
    .parameter "fxDIP"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIP:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 19
    return-void
.end method

.method public setFxVTL(Lcom/htc/fusion/fx/controls/FxVideoTexture;)V
    .locals 0
    .parameter "fxVTL"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTL:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 43
    return-void
.end method

.method public setFxVTP(Lcom/htc/fusion/fx/controls/FxVideoTexture;)V
    .locals 0
    .parameter "fxVTP"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTP:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    .line 35
    return-void
.end method

.method public setIsImage(Z)V
    .locals 0
    .parameter "isImage"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mIsImage:Z

    .line 67
    return-void
.end method

.method public setIsPortrait(Z)V
    .locals 0
    .parameter "isPortrait"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mIsPortrait:Z

    .line 59
    return-void
.end method

.method public setMediaStoreIdx(I)V
    .locals 0
    .parameter "mediaStoreIdx"

    .prologue
    .line 50
    iput p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mediaStoreIdx:I

    .line 51
    return-void
.end method

.method public setmBmp(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "Bmp"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mBmp:Landroid/graphics/Bitmap;

    .line 84
    return-void
.end method

.method public setmScaledBmp(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "ScaledBmp"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->mScaledBmp:Landroid/graphics/Bitmap;

    .line 92
    return-void
.end method

.method public showPhoDeo(I)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIP:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 122
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIL:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 123
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTP:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    .line 124
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTL:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    .line 125
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIP:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxDIL:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTP:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 137
    :pswitch_3
    iget-object v0, p0, Lcom/htc/ml/PhotoLockScreen/PhoDeo;->fxVTL:Lcom/htc/fusion/fx/controls/FxVideoTexture;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxVideoTexture;->setVisibility(Z)Ljava/util/ArrayList;

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

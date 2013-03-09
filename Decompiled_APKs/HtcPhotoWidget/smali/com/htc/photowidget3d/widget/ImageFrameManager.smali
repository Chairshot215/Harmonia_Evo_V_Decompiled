.class public Lcom/htc/photowidget3d/widget/ImageFrameManager;
.super Ljava/lang/Object;
.source "ImageFrameManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/photowidget3d/widget/ImageFrameManager$1;,
        Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;,
        Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;
    }
.end annotation


# instance fields
.field private mDImageTapListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;

.field mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

.field mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

.field mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

.field protected mOnImageClickListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mOnImageClickListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;

    .line 29
    new-instance v0, Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;-><init>(Lcom/htc/photowidget3d/widget/ImageFrameManager;Lcom/htc/photowidget3d/widget/ImageFrameManager$1;)V

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mDImageTapListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;

    .line 37
    new-instance v0, Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    invoke-direct {v0}, Lcom/htc/photowidget3d/widget/PortraitImageFrame;-><init>()V

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    .line 38
    new-instance v0, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-direct {v0}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;-><init>()V

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    .line 39
    return-void
.end method


# virtual methods
.method public create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z
    .locals 1
    .parameter "host"
    .parameter "context"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    invoke-virtual {v0, p1, p2}, Lcom/htc/photowidget3d/widget/PortraitImageFrame;->create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z

    .line 44
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-virtual {v0, p1, p2}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;->create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z

    .line 46
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->setOrientation(I)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public getImageFrame()Lcom/htc/photowidget3d/widget/FusionImageFrame;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    return-object v0
.end method

.method public getScene(Landroid/content/res/Configuration;)Lcom/htc/fusion/fx/FxScene;
    .locals 2
    .parameter "config"

    .prologue
    .line 92
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    .line 94
    .local v0, orien:I
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 100
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    invoke-virtual {v1}, Lcom/htc/photowidget3d/widget/PortraitImageFrame;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    goto :goto_0
.end method

.method public onTiltChanged(F)V
    .locals 1
    .parameter "tilt"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->onTiltChanged(F)V

    .line 122
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 126
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitImageFrame;->release()V

    .line 127
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    .line 128
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;->release()V

    .line 129
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    .line 130
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    .line 131
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mOnImageClickListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;

    .line 132
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mDImageTapListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;

    .line 133
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/PortraitImageFrame;->setImage(Landroid/graphics/Bitmap;)V

    .line 106
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-virtual {v0, p1}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;->setImage(Landroid/graphics/Bitmap;)V

    .line 107
    return-void
.end method

.method public setImageClickListener(Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mOnImageClickListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$OnImageClickListener;

    .line 117
    return-void
.end method

.method public setLandscape()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    if-ne v0, v1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitImageFrame;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/PortraitImageFrame;->unbindImageTapListener()V

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    .line 74
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mDImageTapListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->bindImageTapListener(Lcom/htc/fusion/fx/MessageListener;)V

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->setLandscape()V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/ImageFrameManager;->setPortrait()V

    goto :goto_0
.end method

.method public setPortrait()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    if-ne v0, v1, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFLandscape:Lcom/htc/photowidget3d/widget/LandscapeImageFrame;

    invoke-virtual {v0}, Lcom/htc/photowidget3d/widget/LandscapeImageFrame;->unbindImageTapListener()V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mIFPortrait:Lcom/htc/photowidget3d/widget/PortraitImageFrame;

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    .line 61
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mImageFrame:Lcom/htc/photowidget3d/widget/FusionImageFrame;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/ImageFrameManager;->mDImageTapListener:Lcom/htc/photowidget3d/widget/ImageFrameManager$DImageTapListener;

    invoke-virtual {v0, v1}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->bindImageTapListener(Lcom/htc/fusion/fx/MessageListener;)V

    goto :goto_0
.end method

.class public abstract Lcom/htc/photowidget3d/widget/FusionImageFrame;
.super Lcom/htc/photowidget3d/widget/FusionWidgetBase;
.source "FusionImageFrame.java"


# static fields
.field public static final CTL_FRAME_HITBOX:Ljava/lang/String; = "photo_app_failed.hitbox"

.field public static final CTL_FRAME_IMAGE:Ljava/lang/String; = "dynamicimage.photo_multi"

.field public static final CTL_FRAME_TEXT:Ljava/lang/String; = "textlabel.missing"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final STATE_ERROR_LOADING:I = 0x5

.field public static final STATE_ERROR_MISSING:I = 0x3

.field public static final STATE_ERROR_NOT_SET:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_UNKNOWN:I = -0x1


# instance fields
.field protected mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field mFrameLoaded:I

.field protected mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

.field private mImageHeight:I

.field private mImageTapListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mImageWidth:I

.field mState:I

.field mStrErrorMissing:Ljava/lang/String;

.field mStrErrorNotSet:Ljava/lang/String;

.field protected mTextlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/htc/photowidget3d/widget/FusionImageFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Lcom/htc/photowidget3d/widget/FusionWidgetBase;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 43
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 44
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTextlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 48
    iput v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mState:I

    .line 50
    iput v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageWidth:I

    .line 51
    iput v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageHeight:I

    .line 53
    iput v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mFrameLoaded:I

    .line 55
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mStrErrorMissing:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mStrErrorNotSet:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private changeState(I)Z
    .locals 2
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 218
    iget v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mState:I

    if-ne v1, p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return v0

    .line 221
    :cond_1
    iput p1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mState:I

    .line 223
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v1, :cond_0

    .line 226
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupDimension()V
    .locals 4

    .prologue
    .line 97
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v0

    .line 100
    .local v0, size:Landroid/graphics/PointF;
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageWidth:I

    .line 101
    iget v1, v0, Landroid/graphics/PointF;->y:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageHeight:I

    .line 102
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const-string v2, "loading_to_loaded"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/FusionUtils;->getMarkerEndFrame(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mFrameLoaded:I

    .line 105
    .end local v0           #size:Landroid/graphics/PointF;
    :cond_0
    sget-object v1, Lcom/htc/photowidget3d/widget/FusionImageFrame;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setupDimension] Width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private setupHitbox()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 113
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public bindImageTapListener(Lcom/htc/fusion/fx/MessageListener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;>;"
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->unbindImageTapListener()V

    .line 120
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 122
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 123
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 124
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 126
    :cond_0
    return-void
.end method

.method public create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z
    .locals 7
    .parameter "host"
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    invoke-super {p0, p1, p2}, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 92
    :goto_0
    return v2

    .line 68
    :cond_0
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "timeline.tiltanim"

    aput-object v4, v0, v2

    const-string v4, "dynamicimage.photo_multi"

    aput-object v4, v0, v3

    const-string v4, "photo_app_failed.hitbox"

    aput-object v4, v0, v5

    const-string v4, "textlabel.missing"

    aput-object v4, v0, v6

    .line 75
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 77
    .local v1, controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v2, v1, v2

    check-cast v2, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 78
    aget-object v2, v1, v3

    check-cast v2, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 79
    aget-object v2, v1, v5

    check-cast v2, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 80
    aget-object v2, v1, v6

    check-cast v2, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTextlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 82
    invoke-direct {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->setupDimension()V

    .line 83
    invoke-direct {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->setupHitbox()V

    .line 84
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->setupTilt()V

    .line 86
    if-eqz p2, :cond_1

    .line 88
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f05000c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mStrErrorMissing:Ljava/lang/String;

    .line 89
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f050006

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mStrErrorNotSet:Ljava/lang/String;

    :cond_1
    move v2, v3

    .line 92
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageHeight:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageWidth:I

    return v0
.end method

.method public hideErrorMissing()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->changeState(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const-string v1, "loading_to_failed"

    const/high16 v2, 0x3f80

    invoke-static {v0, v1, v3, v2, v3}, Lcom/htc/photowidget3d/util/FusionUtils;->backwardPlayMarker(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;IFZ)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->unbindImageTapListener()V

    .line 270
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 271
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTextlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 272
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 273
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 274
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    .line 275
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 276
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bmp"

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showImage()V

    .line 154
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_0

    .line 256
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showImage()V

    .line 260
    :goto_0
    return-void

    .line 240
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showErrorNotSet()V

    goto :goto_0

    .line 245
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showErrorMissing()V

    goto :goto_0

    .line 250
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->showLoading()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public showErrorMissing()V
    .locals 2

    .prologue
    .line 195
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->changeState(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 199
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTextlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTextlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mStrErrorMissing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showErrorNotSet()V
    .locals 2

    .prologue
    .line 185
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->changeState(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 189
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTextlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mTextlabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mStrErrorNotSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showImage()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->changeState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mFrameLoaded:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFrame(F)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/photowidget3d/widget/FusionImageFrame;->changeState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mDImage:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-static {v0}, Lcom/htc/photowidget3d/util/FusionUtils;->playLoadingMarker(Lcom/htc/fusion/fx/FxTimelineControl;)V

    goto :goto_0
.end method

.method public unbindImageTapListener()V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 131
    .local v0, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mImageTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 132
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return-void

    .line 135
    :cond_0
    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionImageFrame;->mHitbox:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    goto :goto_0
.end method

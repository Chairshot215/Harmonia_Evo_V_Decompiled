.class public abstract Lcom/htc/photowidget3d/widget/FusionListView;
.super Lcom/htc/photowidget3d/widget/FusionWidgetBase;
.source "FusionListView.java"


# static fields
.field public static final CTL_ALBUM_ERROR_HITBOX:Ljava/lang/String; = "photo_app_failed.hitbox"

.field public static final CTL_ALBUM_ERROR_IMAGE:Ljava/lang/String; = "dynamicimage.photo_error"

.field public static final CTL_ALBUM_ERROR_TEXT:Ljava/lang/String; = "textlabel.missing"

.field public static final CTL_ALBUM_LISTITEM_IMAGE:Ljava/lang/String; = "dynamicimage.photo_frame"

.field public static final CTL_ALBUM_LISTVIEW:Ljava/lang/String; = "TBListview_Photo_4x4"

.field public static final CTL_ALBUM_LOADING_TEXT:Ljava/lang/String; = "textlabel.loading"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final MSG_DISMISS_ERROR_MSG:I = 0x3e8

.field public static final SIZE_RECYCLING:I = 0x14

.field public static final SIZE_VIRTUALIZATION:I = 0x5

.field public static final STATE_ERROR_IMAGE:I = 0x4

.field public static final STATE_ERROR_LOADING:I = 0x5

.field public static final STATE_ERROR_MISSING:I = 0x3

.field public static final STATE_ERROR_NOT_SET:I = 0x2

.field public static final STATE_NORMAL:I = 0x0

.field public static final STATE_PREVIEW:I = 0x6

.field public static final STATE_READY:I = 0x1

.field public static final STATE_SDCARD_REMOVED:I = 0x8

.field public static final STATE_SDCARD_SHARED:I = 0x7

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final TIME_ERROR_DISMISS:I = 0x1388


# instance fields
.field protected mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

.field mFrameErrorStatus:I

.field mFrameFailed:I

.field mFrameItemLoaded:I

.field mFrameLoaded:I

.field protected mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

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

.field private mIsDirty:Z

.field mListItemHeight:I

.field private mListItemListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;"
        }
    .end annotation
.end field

.field mListItemWidth:I

.field protected mListView:Lcom/htc/fusion/fx/controls/FxListView;

.field private mListViewListener:Lcom/htc/fusion/fx/MessageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mStrErrorLoading:Ljava/lang/String;

.field mStrErrorMissing:Ljava/lang/String;

.field mStrErrorNotSet:Ljava/lang/String;

.field mStrSdcardRemoved:Ljava/lang/String;

.field mStrSdcardShared:Ljava/lang/String;

.field protected mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

.field protected mTextLoading:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/htc/photowidget3d/widget/FusionListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Lcom/htc/photowidget3d/widget/FusionWidgetBase;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 66
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 67
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 68
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 69
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextLoading:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 75
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameErrorStatus:I

    .line 76
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameLoaded:I

    .line 77
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameFailed:I

    .line 78
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameItemLoaded:I

    .line 80
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemWidth:I

    .line 81
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemHeight:I

    .line 83
    iput v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    .line 85
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorMissing:Ljava/lang/String;

    .line 86
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorNotSet:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorLoading:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrSdcardShared:Ljava/lang/String;

    .line 90
    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrSdcardRemoved:Ljava/lang/String;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mIsDirty:Z

    .line 99
    return-void
.end method

.method private setListItemDimension(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/widget/FusionListView;->getListItemScenePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 257
    .local v2, path:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    .line 258
    .local v1, itemScene:Lcom/htc/fusion/fx/FxScene;
    if-eqz v1, :cond_0

    .line 261
    const-string v4, "dynamicimage.photo_frame"

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/FxScene;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    check-cast v0, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 262
    .local v0, image:Lcom/htc/fusion/fx/controls/FxDynamicImage;
    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getSize()Landroid/graphics/PointF;

    move-result-object v3

    .line 263
    .local v3, size:Landroid/graphics/PointF;
    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemWidth:I

    .line 264
    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemHeight:I

    .line 265
    const-string v4, "loading_to_loaded"

    invoke-static {v0, v4}, Lcom/htc/photowidget3d/util/FusionUtils;->getMarkerEndFrame(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameItemLoaded:I

    .line 267
    sget-object v4, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setListItemDimension] Width = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Height = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Frame loaded = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameItemLoaded:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showErrorView(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 466
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showErrorView] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iput p1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    .line 469
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-nez v0, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->stop()V

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getVisibility()Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 479
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 480
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, v2}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 481
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showErrorView] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public bindErrorImageTapListener(Lcom/htc/fusion/fx/MessageListener;)V
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
    .line 213
    .local p1, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;>;"
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[bindErrorEventListener] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->unbindErrorImageTapListener()V

    .line 215
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 217
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mImageTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 218
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mImageTapListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 219
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 221
    :cond_0
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[bindErrorEventListener] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public bindListItemEventListener(Lcom/htc/fusion/fx/MessageListener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListItemEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/controls/FxListItemEvent;>;"
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->unbindListItemEventListener()V

    .line 176
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 178
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemListener:Lcom/htc/fusion/fx/MessageListener;

    .line 179
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 181
    :cond_0
    return-void
.end method

.method public bindListViewEventListener(Lcom/htc/fusion/fx/MessageListener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fusion/fx/MessageListener",
            "<",
            "Lcom/htc/fusion/fx/controls/FxListViewEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/controls/FxListViewEvent;>;"
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->unbindListViewEventListener()V

    .line 194
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 196
    iput-object p1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListViewListener:Lcom/htc/fusion/fx/MessageListener;

    .line 197
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListViewListener:Lcom/htc/fusion/fx/MessageListener;

    invoke-interface {v0, v1}, Lcom/htc/fusion/fx/IMessageSource;->bind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 199
    :cond_0
    return-void
.end method

.method public create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z
    .locals 11
    .parameter "host"
    .parameter "context"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 103
    invoke-super {p0, p1, p2}, Lcom/htc/photowidget3d/widget/FusionWidgetBase;->create(Lcom/htc/android/rosie/widget/Widget$Host;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    .line 163
    :goto_0
    return v4

    .line 106
    :cond_0
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "timeline.tiltanim"

    aput-object v4, v0, v5

    const-string v4, "TBListview_Photo_4x4"

    aput-object v4, v0, v6

    const-string v4, "dynamicimage.photo_error"

    aput-object v4, v0, v8

    const-string v4, "photo_app_failed.hitbox"

    aput-object v4, v0, v9

    const-string v4, "textlabel.missing"

    aput-object v4, v0, v10

    const/4 v4, 0x5

    const-string v7, "textlabel.loading"

    aput-object v7, v0, v4

    .line 115
    .local v0, controlNames:[Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    invoke-virtual {v4, v0}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v1

    .line 117
    .local v1, controls:[Lcom/htc/fusion/fx/FxObject;
    aget-object v4, v1, v5

    check-cast v4, Lcom/htc/fusion/fx/FxTimelineControl;

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 118
    aget-object v4, v1, v6

    check-cast v4, Lcom/htc/fusion/fx/controls/FxListView;

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 119
    aget-object v4, v1, v8

    check-cast v4, Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 120
    aget-object v4, v1, v9

    check-cast v4, Lcom/htc/fusion/fx/controls/FxHitbox;

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 121
    aget-object v4, v1, v10

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 122
    const/4 v4, 0x5

    aget-object v4, v1, v4

    check-cast v4, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextLoading:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 124
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v4, :cond_1

    .line 126
    invoke-virtual {p0, p2}, Lcom/htc/photowidget3d/widget/FusionListView;->getListItemScenePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, itemPath:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4, v3}, Lcom/htc/fusion/fx/controls/FxListView;->setDefaultItemPath(Ljava/lang/String;)V

    .line 128
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 131
    .end local v3           #itemPath:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v4, :cond_2

    .line 133
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const-string v7, "loading_to_loaded"

    invoke-static {v4, v7}, Lcom/htc/photowidget3d/util/FusionUtils;->getMarkerEndFrame(Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameLoaded:I

    .line 134
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const-string v7, "failed_to_loading"

    invoke-virtual {v4, v7}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->getMarker(Ljava/lang/String;)Lcom/htc/fusion/fx/Marker;

    move-result-object v4

    iget v4, v4, Lcom/htc/fusion/fx/Marker;->StartFrame:I

    iput v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameFailed:I

    .line 135
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->showLoading()V

    .line 138
    :cond_2
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-eqz v4, :cond_3

    .line 140
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v4, v6}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabledGestures(I)V

    .line 141
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    .line 144
    :cond_3
    if-eqz p2, :cond_4

    .line 146
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorMissing:Ljava/lang/String;

    .line 147
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrSdcardShared:Ljava/lang/String;

    .line 148
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrSdcardRemoved:Ljava/lang/String;

    .line 149
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorNotSet:Ljava/lang/String;

    .line 150
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorLoading:Ljava/lang/String;

    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, dots:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorLoading:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorLoading:Ljava/lang/String;

    .line 155
    .end local v2           #dots:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextLoading:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v4, :cond_5

    .line 157
    iget-object v4, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextLoading:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v5, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorLoading:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 160
    :cond_5
    invoke-direct {p0, p2}, Lcom/htc/photowidget3d/widget/FusionListView;->setListItemDimension(Landroid/content/Context;)V

    .line 161
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->setupTilt()V

    move v4, v6

    .line 163
    goto/16 :goto_0
.end method

.method public getListItemFrameLoaded()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameItemLoaded:I

    return v0
.end method

.method public getListItemHeight()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemHeight:I

    return v0
.end method

.method public abstract getListItemScenePath(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public getListItemWidth()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemWidth:I

    return v0
.end method

.method public getListView()Lcom/htc/fusion/fx/controls/FxListView;
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    return-object v0
.end method

.method public getLoadingString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorLoading:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 486
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    return v0
.end method

.method public hideErrorLoading()V
    .locals 4

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 349
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    if-ne v0, v1, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorView(I)V

    .line 354
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->stop()V

    .line 359
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    const-string v1, "loading_to_loaded"

    const/high16 v2, 0x3f80

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->playMarker(Ljava/lang/String;IFZ)V

    goto :goto_0
.end method

.method public hideErrorMissing()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 334
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    if-ne v0, v1, :cond_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-direct {p0, v1}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorView(I)V

    .line 339
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->stop()V

    .line 343
    :cond_2
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameLoaded:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFrame(F)V

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mIsDirty:Z

    return v0
.end method

.method public markDirty()V
    .locals 1

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mIsDirty:Z

    .line 532
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 546
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->unbindErrorImageTapListener()V

    .line 547
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 549
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->unbindListItemEventListener()V

    .line 550
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->unbindListViewEventListener()V

    .line 551
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    .line 553
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextLoading:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 554
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 555
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    .line 556
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTiltControl:Lcom/htc/fusion/fx/FxTimelineControl;

    .line 557
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mSceneNode:Lcom/htc/fusion/fx/FxScene;

    .line 558
    iput-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHost:Lcom/htc/android/rosie/widget/Widget$Host;

    .line 559
    return-void
.end method

.method public setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V
    .locals 3
    .parameter "collection"

    .prologue
    .line 273
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setCollection] Collection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->enableVirtualization(I)V

    .line 279
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxListView;->enableRecycling(I)V

    .line 280
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxListView;->setCollection(Lcom/htc/fusion/fx/controls/FxListViewCollection;)V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mIsDirty:Z

    .line 283
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[setCollection] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 288
    sget-object v1, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setSelection] pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    .line 291
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 292
    .local v0, offset:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/htc/fusion/fx/controls/FxListView;->setScrollOffsetByItem(ILandroid/graphics/PointF;I)V

    .line 294
    .end local v0           #offset:Landroid/graphics/PointF;
    :cond_0
    sget-object v1, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[setSelection] ---"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method public setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 496
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setState] State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    packed-switch p1, :pswitch_data_0

    .line 522
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->showListView()V

    .line 526
    :goto_0
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[setState] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    return-void

    .line 502
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->showLoading()V

    goto :goto_0

    .line 507
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorMissing()V

    goto :goto_0

    .line 512
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorNotSet()V

    goto :goto_0

    .line 517
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorWithImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public showErrorMissing()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 364
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showErrorMissing] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    if-ne v0, v2, :cond_0

    .line 380
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorView(I)V

    .line 370
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 377
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorMissing:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 379
    :cond_2
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showErrorMissing] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showErrorNotSet()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 426
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showErrorNotSet] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    if-ne v0, v2, :cond_0

    .line 442
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorView(I)V

    .line 432
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrErrorNotSet:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 441
    :cond_2
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showErrorNotSet] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showErrorWithImage(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bmp"

    .prologue
    .line 446
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[showErrorWithImage] Bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorView(I)V

    .line 452
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v0, :cond_0

    .line 462
    :goto_0
    return-void

    .line 455
    :cond_0
    if-eqz p1, :cond_1

    .line 457
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0, p1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 460
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    iget v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mFrameLoaded:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFrame(F)V

    .line 461
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showErrorWithImage] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showListView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    sget-object v1, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[showListView] +++"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iput v3, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    .line 302
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getVisibility()Z

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-nez v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->isPlaying()Z

    move-result v0

    .line 310
    .local v0, isPlaying:Z
    if-eqz v0, :cond_2

    .line 312
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->stop()V

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v1, v3}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setVisibility(Z)Ljava/util/ArrayList;

    .line 316
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1, v4}, Lcom/htc/fusion/fx/controls/FxListView;->setVisibility(Z)Ljava/util/ArrayList;

    .line 317
    sget-object v1, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[showListView] ---"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 322
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showLoading] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    if-ne v0, v2, :cond_0

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorView(I)V

    .line 328
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-static {v0}, Lcom/htc/photowidget3d/util/FusionUtils;->playLoadingMarker(Lcom/htc/fusion/fx/FxTimelineControl;)V

    .line 329
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showLoading] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showSdcardRemoved()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 406
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showSdcardRemoved] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    if-ne v0, v2, :cond_0

    .line 422
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorView(I)V

    .line 412
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrSdcardRemoved:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 421
    :cond_2
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showSdcardRemoved] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showSdcardShared()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 384
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showSdcardShared] +++"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    if-ne v0, v2, :cond_0

    .line 387
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mark check state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :goto_0
    return-void

    .line 391
    :cond_0
    invoke-direct {p0, v2}, Lcom/htc/photowidget3d/widget/FusionListView;->showErrorView(I)V

    .line 393
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mErrorView:Lcom/htc/fusion/fx/controls/FxDynamicImage;

    invoke-virtual {v0}, Lcom/htc/fusion/fx/controls/FxDynamicImage;->setFailed()V

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mTextError:Lcom/htc/fusion/fx/controls/FxTextLabel;

    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mStrSdcardShared:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    .line 402
    :cond_2
    sget-object v0, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[showSdcardShareddd] ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindErrorImageTapListener()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mImageTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 227
    .local v0, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/controls/FxHitbox$TapParameters;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mImageTapListener:Lcom/htc/fusion/fx/MessageListener;

    .line 228
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    if-nez v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 231
    :cond_0
    if-eqz v0, :cond_1

    .line 232
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxHitbox;->getTapSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mHitboxError:Lcom/htc/fusion/fx/controls/FxHitbox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/controls/FxHitbox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public unbindListItemEventListener()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemListener:Lcom/htc/fusion/fx/MessageListener;

    .line 186
    .local v0, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/controls/FxListItemEvent;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListItemListener:Lcom/htc/fusion/fx/MessageListener;

    .line 187
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 188
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListItemEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 189
    :cond_0
    return-void
.end method

.method public unbindListViewEventListener()V
    .locals 3

    .prologue
    .line 203
    sget-object v1, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[unbindListViewEventListener] +++"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListViewListener:Lcom/htc/fusion/fx/MessageListener;

    .line 205
    .local v0, listener:Lcom/htc/fusion/fx/MessageListener;,"Lcom/htc/fusion/fx/MessageListener<Lcom/htc/fusion/fx/controls/FxListViewEvent;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListViewListener:Lcom/htc/fusion/fx/MessageListener;

    .line 206
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/htc/photowidget3d/widget/FusionListView;->mListView:Lcom/htc/fusion/fx/controls/FxListView;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/controls/FxListView;->getListViewEventSource()Lcom/htc/fusion/fx/IMessageSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/htc/fusion/fx/IMessageSource;->unbind(Lcom/htc/fusion/fx/IMessageListener;)V

    .line 208
    :cond_0
    sget-object v1, Lcom/htc/photowidget3d/widget/FusionListView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[unbindListViewEventListener] ---"

    invoke-static {v1, v2}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

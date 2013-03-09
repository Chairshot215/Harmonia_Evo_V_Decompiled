.class public Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
.super Lcom/htc/opensense/widget/ImageViewTouchBase;
.source "FullScreenView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/widget/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageViewTouch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;,
        Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;,
        Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    }
.end annotation


# static fields
.field private static final DRAW_MODE_HQ:I = 0x2

.field private static final DRAW_MODE_NORMAL:I = 0x0

.field private static final DRAW_MODE_PARTIAL:I = 0x1

.field private static final EAT_DRAG_COUNT:I = 0x1e

.field private static final EDGE_STICKY_THRESHOLD:I = 0xa

.field private static final TOUCH_AREA_WIDTH:I = 0x3c

.field private static final TOUCH_STATE_BACK_TO_CENTER:I = 0x6

.field private static final TOUCH_STATE_LEFT_PRESS:I = 0x1

.field private static final TOUCH_STATE_PANNING:I = 0x3

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_RIGHT_PRESS:I = 0x2

.field private static final TOUCH_STATE_SCROLL:I = 0x5

.field private static final TOUCH_STATE_ZOOM:I = 0x4

.field private static final TOUCH_SUB_STATE_LEFT_PRESS_HIGHLIGHT:I = 0x1

.field private static final TOUCH_SUB_STATE_NONE:I = 0x0

.field private static final TOUCH_SUB_STATE_PANNING_DIMISS_ON_SCREEN_CONTROL:I = 0x3

.field private static final TOUCH_SUB_STATE_PANNING_X:I = 0x2715

.field private static final TOUCH_SUB_STATE_RIGHT_PRESS_HIGHLIGHT:I = 0x2

.field private static final TOUCH_SUB_STATE_SCROLL_NEXT:I = 0x2711

.field private static final TOUCH_SUB_STATE_SCROLL_PREVIOUS:I = 0x2712

.field private static final TOUCH_SUB_STATE_SECOND_FINGER_DOWN:I = 0x5

.field private static final TOUCH_SUB_STATE_SECOND_FINGER_UP:I = 0x4

.field private static final TOUCH_SUB_STATE_X_NONE:I = 0x0

.field private static final TYPE_ANIMATED:I = 0x1

.field private static final TYPE_CORRUPT:I = 0x2

.field private static final TYPE_GENERAL_IMG:I = 0x0

.field private static final TYPE_NONE:I = -0x1

.field private static final sBounceBackInterval:F = 0.4f


# instance fields
.field private DEBUGID:I

.field private disableDrawing:Z

.field private mBotRight:[F

.field private mCurBitmapHeight:F

.field private mCurBitmapWidth:F

.field private mDebugPaint:Landroid/graphics/Paint;

.field private mDelta:I

.field private mDeltaZoomRate:F

.field private mDisableClick:Z

.field private mDoPinchZoomBounce:Z

.field private mDoScrollBounce:Z

.field private mDrawMode:I

.field private mDrmType:I

.field private mEatDragEvt:I

.field private mEnableTrackballScroll:Z

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

.field private mGesture:Lcom/htc/opensense/widget/Gesture;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIndex:I

.field private mMimeType:Ljava/lang/String;

.field private mMyGestureListener:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

.field private mOnDown:Z

.field private mOnlineLoadingIndicator:I

.field private mPanCurrLeftTop:[F

.field private mPanCurrRightBottom:[F

.field private mPanStartX:I

.field private mPanStartY:I

.field private mPartialDecodeBitmap:Landroid/graphics/Bitmap;

.field private mPinchZoomBounceInterval:F

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollDelta:I

.field private mScrollImage:Z

.field private mScrollerStartX:I

.field private mSingleTapUp:Z

.field private mSubTouchStateX:I

.field private mTopLeft:[F

.field private mTouchState:I

.field private mTouchSubState:I

.field private mType:I

.field private mUsedMultiTouchDetector:Z

.field private mViewImage:Lcom/htc/opensense/widget/FullScreenView;

.field private mbCorrupt:Z

.field private mbDrm:Z

.field private mbDrmThumb:Z

.field private mbExif:Z

.field private mbExpire:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    new-instance v0, Lcom/htc/opensense/widget/Gesture;

    invoke-direct {v0}, Lcom/htc/opensense/widget/Gesture;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->DEBUGID:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSingleTapUp:Z

    const v0, 0x3d8f5c29

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollImage:Z

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartY:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setup()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    new-instance v0, Lcom/htc/opensense/widget/Gesture;

    invoke-direct {v0}, Lcom/htc/opensense/widget/Gesture;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->DEBUGID:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSingleTapUp:Z

    const v0, 0x3d8f5c29

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollImage:Z

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartY:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setup()V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->startDecodeHQ()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    return p1
.end method

.method static synthetic access$4002(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;I)I
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->onDoubleClick(FF)V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    return v0
.end method

.method static synthetic access$6100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    return v0
.end method

.method private action2Str(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "unknown action"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "action down"

    goto :goto_0

    :pswitch_1
    const-string v0, "action up"

    goto :goto_0

    :pswitch_2
    const-string v0, "action move"

    goto :goto_0

    :pswitch_3
    const-string v0, "action cancel"

    goto :goto_0

    :pswitch_4
    const-string v0, "action outside"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private bounceAnimation()V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getZoomStatus()I

    move-result v4

    const/high16 v3, 0x3f80

    const/high16 v2, 0x4396

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v3

    iget v5, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    iget v6, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    invoke-virtual {p0, v3, v5, v6, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    const/high16 v3, 0x3f80

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p0, v3, v5, v6, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private caculateZoomDelta()V
    .locals 7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v0

    const-wide v1, 0x4005bf0a8b145769L

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    return-void
.end method

.method private canScroll()Z
    .locals 3

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const-string v1, "FullScreen"

    const-string v2, "[canScroll] view image not assign to image view touch"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->canScroll()Z

    move-result v0

    :cond_3
    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeDrawMode(I)V
    .locals 2

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    :cond_0
    return-void
.end method

.method private detectTapIn(Landroid/graphics/Bitmap;FF)Z
    .locals 5

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p3, v3

    if-lez v3, :cond_0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p3, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private doPinchZoomBouceBack()V
    .locals 14

    const/4 v13, 0x1

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    iget-boolean v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    if-eqz v8, :cond_2

    const/high16 v6, 0x3f80

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v8

    cmpg-float v8, v8, v12

    if-gez v8, :cond_4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v9

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    mul-float/2addr v9, v10

    add-float v4, v8, v9

    cmpg-float v8, v4, v12

    if-gez v8, :cond_3

    move v6, v4

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v1, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v6, v6, v9, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    invoke-virtual {p0, v11, v13, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    :cond_1
    :goto_1
    iget-boolean v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onPinchZoomEnd()V

    :cond_2
    return-void

    :cond_3
    cmpl-float v8, v4, v12

    if-ltz v8, :cond_0

    const/high16 v6, 0x3f80

    iput-boolean v11, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v5

    iget v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    mul-float/2addr v8, v5

    sub-float v7, v5, v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v7

    iput-boolean v11, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    :cond_5
    div-float v0, v7, v5

    mul-float v3, v5, v0

    iget-object v8, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterX:F

    iget v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mLastZoomCenterY:F

    invoke-virtual {v8, v0, v0, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0, v11, v13, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_1
.end method

.method private doScrollBounceBack(Landroid/graphics/Canvas;)V
    .locals 12

    const/high16 v5, 0x3f80

    const v11, 0x3ecccccd

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v10

    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    iput-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    iget-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getSkewX(Landroid/graphics/Matrix;)F

    move-result v2

    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getSkewY(Landroid/graphics/Matrix;)F

    move-result v3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    int-to-float v4, v6

    cmpl-float v6, v2, v9

    if-nez v6, :cond_2

    cmpl-float v6, v3, v9

    if-eqz v6, :cond_6

    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v10

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_4

    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    sub-float v6, v4, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v7, v7, v8

    sub-float v0, v6, v7

    :cond_3
    :goto_1
    cmpl-float v6, v0, v9

    if-eqz v6, :cond_0

    cmpl-float v6, v0, v9

    if-lez v6, :cond_a

    mul-float v6, v0, v11

    cmpg-float v6, v6, v9

    if-gez v6, :cond_9

    :goto_2
    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0, v9, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    neg-float v0, v6

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    sub-float v0, v4, v6

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v10

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_7

    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    sub-float v6, v4, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float v0, v6, v7

    goto :goto_1

    :cond_7
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_8

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    neg-float v0, v6

    goto :goto_1

    :cond_8
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    sub-float v0, v4, v6

    goto :goto_1

    :cond_9
    mul-float v5, v0, v11

    goto :goto_2

    :cond_a
    mul-float v6, v0, v11

    cmpl-float v6, v6, v9

    if-lez v6, :cond_b

    :goto_3
    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0, v9, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    goto/16 :goto_0

    :cond_b
    mul-float v5, v0, v11

    goto :goto_3

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawCorruptIndicator(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawDrmBigIndicator(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v4, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5600(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5600(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5600(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5600(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5600(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-boolean v4, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_WMDRM:Z

    if-eqz v4, :cond_2

    const-string v4, "video/x-wmv-drm"

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    if-le v1, v2, :cond_3

    const/4 v0, 0x0

    :goto_0
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5100(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5100(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v0

    check-cast v4, Ljava/lang/String;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewPortraitX:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x46

    mul-int/lit8 v7, v0, 0x14

    add-int/2addr v6, v7

    int-to-float v6, v6

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5400(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5400(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v0

    check-cast v4, Ljava/lang/String;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewLandscapeX:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5500(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x46

    mul-int/lit8 v7, v0, 0x14

    add-int/2addr v6, v7

    int-to-float v6, v6

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawDrmFileName(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    const/high16 v1, 0x4120

    const/high16 v2, 0x41f0

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawDrmSmallIndicator(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v3, :cond_0

    iget-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v4, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5000(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5000(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5000(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x28

    int-to-float v5, v5

    const/high16 v6, 0x4120

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-boolean v4, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_WMDRM:Z

    if-eqz v4, :cond_2

    const-string v4, "video/x-wmv-drm"

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    iget-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    if-eqz v4, :cond_0

    if-le v1, v2, :cond_3

    const/4 v0, 0x0

    :goto_0
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5100(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5100(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v0

    check-cast v4, Ljava/lang/String;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewPortraitX:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x46

    mul-int/lit8 v7, v0, 0x14

    add-int/2addr v6, v7

    int-to-float v6, v6

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5400(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5400(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    aget-object v4, v4, v0

    check-cast v4, Ljava/lang/String;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapViewLandscapeX:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5500(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x46

    mul-int/lit8 v7, v0, 0x14

    add-int/2addr v6, v7

    int-to-float v6, v6

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v7

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawLoadedIndicator(Landroid/graphics/Canvas;)V
    .locals 5

    const/16 v3, 0x8

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$5700(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$5700(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$5700(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$5700(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$5700(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private drawVideoIndicator(Landroid/graphics/Canvas;)V
    .locals 5

    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4900(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4900(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4900(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4900(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4900(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawZoomImgDirectlyByMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Z
    .locals 1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private easingOutResult(FFFFF)F
    .locals 10

    div-float/2addr p2, p5

    mul-float v1, p2, p2

    mul-float v0, v1, p2

    float-to-double v2, p4

    const-wide v4, -0x3ffd333333333333L

    float-to-double v6, v0

    mul-double/2addr v4, v6

    float-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide v6, 0x4018f5c28f5c28f6L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4013147ae147ae14L

    float-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x3feae147ae147ae1L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4005c28f5c28f5c3L

    float-to-double v8, p2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    float-to-double v4, p3

    add-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private isDebug()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private onDoubleClick(FF)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x3f80

    const/high16 v6, 0x4416

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v0, 0x0

    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeDrawMode(I)V

    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_3

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v4

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_5

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getDoubleTapZoom()F

    move-result v2

    invoke-virtual {p0, v2, p1, p2, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getDoubleTapZoom()F

    move-result v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomToCenterByTime(FIIF)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0, v7, v2, v3, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v7, v2, v3, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomOutByTime(FIIF)V

    goto :goto_0
.end method

.method private setup()V
    .locals 3

    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/Gesture;->setListener(Lcom/htc/opensense/widget/Gesture$GestureListener;)V

    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method

.method private startDecodeHQ()V
    .locals 5

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v1, :cond_1

    const-string v2, "FullScreen"

    const-string v3, "[startDecodeHQ] view image not assign to image view touch"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v4}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->addTask(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected afterZoomAnimation(FF)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v0, :cond_0

    const-string v1, "FullScreen"

    const-string v2, "[afterZoomAnimation] view image not assign to image view touch"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-nez v1, :cond_2

    :cond_1
    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onZoomEnd(F)V

    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #setter for: Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z
    invoke-static {v1, v3}, Lcom/htc/opensense/widget/FullScreenView;->access$4502(Lcom/htc/opensense/widget/FullScreenView;Z)Z

    goto :goto_0
.end method

.method protected beginZoomAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4502(Lcom/htc/opensense/widget/FullScreenView;Z)Z

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onZoomBegin(F)V

    :cond_0
    return-void
.end method

.method protected calculateZoomRatio(FFFF)V
    .locals 11

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v6, :cond_0

    const-string v7, "FullScreen"

    const-string v8, "[calculateZoomRatio] view image not assign to image view touch"

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v7

    if-eqz v7, :cond_3

    const/4 v2, 0x0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, -0x1

    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onNeedFitToScreen(I)Z

    move-result v7

    if-eqz v7, :cond_3

    div-float v5, p1, p3

    div-float v4, p2, p4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    goto :goto_0

    :cond_2
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    int-to-float v7, v7

    div-float v5, p1, v7

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    int-to-float v7, v7

    div-float v4, p2, v7

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v7, 0x3f80

    cmpg-float v7, v3, v7

    if-gez v7, :cond_4

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v1, v7

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v0, v7

    int-to-float v7, v1

    div-float v5, v7, p3

    int-to-float v7, v0

    div-float v4, v7, p4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    const-string v7, "FullScreen"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Orig("

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ","

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "), bmp("

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, ","

    aput-object v10, v8, v9

    const/4 v9, 0x7

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "), zoom: "

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    int-to-float v7, v7

    div-float v5, v7, p3

    iget v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    int-to-float v7, v7

    div-float v4, v7, p4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    const-string v7, "FullScreen"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Small Orig("

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ","

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const-string v10, "), bmp("

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const-string v10, ","

    aput-object v10, v8, v9

    const/4 v9, 0x7

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string v10, "), zoom: "

    aput-object v10, v8, v9

    const/16 v9, 0x9

    iget v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBaseMinZoom:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/ImageViewTouchBase;->calculateZoomRatio(FFFF)V

    goto/16 :goto_0
.end method

.method canZoom()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v0, :cond_1

    const-string v2, "FullScreen"

    const-string v3, "[canZoom] view image not assign to image view touch"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    if-eq v3, v2, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_3

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->canPinchZoom()Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method protected cancelZoomAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v0, :cond_0

    const-string v1, "FullScreen"

    const-string v2, "[afterZoomAnimation] view image not assign to image view touch"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadHQImage(Z)V
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4600(Lcom/htc/opensense/widget/FullScreenView;Z)V

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onZoomEnd(F)V

    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v2, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z
    invoke-static {v1, v2}, Lcom/htc/opensense/widget/FullScreenView;->access$4502(Lcom/htc/opensense/widget/FullScreenView;Z)Z

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 12

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3308(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->computeNextPos()Z

    move-result v6

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3300(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getStartX()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getFinalX()I

    move-result v0

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getStartX()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3400(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->easingOutResult(FFFFF)F

    move-result v0

    float-to-int v10, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3300(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getStartY()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getFinalY()I

    move-result v0

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v4}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getStartY()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3400(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->easingOutResult(FFFFF)F

    move-result v0

    float-to-int v11, v0

    neg-int v0, v10

    int-to-float v0, v0

    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    sub-float v7, v0, v1

    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    sub-float v8, v0, v1

    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getFinalX()I

    move-result v0

    if-ne v10, v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getFinalY()I

    move-result v0

    if-eq v11, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3300(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3400(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->postInvalidate()V

    goto :goto_0
.end method

.method public copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    move-object v1, p1

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    const/4 v0, -0x1

    if-nez v2, :cond_1

    const-string v3, "FullScreen"

    const-string v4, "[copyFrom] not assign full screen view to image view touch"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    if-ge v3, v0, :cond_2

    iget-object v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    iget v3, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    iget v3, v1, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    iput v3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    iget-object v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    iget-object v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    iput v7, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    iput v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    :goto_1
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->reset()V

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    iput v7, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    iput v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11

    const/high16 v9, 0x3f80

    const/4 v10, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iget-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    if-nez v7, :cond_0

    const/16 v7, 0x13

    if-lt v2, v7, :cond_0

    const/16 v7, 0x16

    if-gt v2, v7, :cond_0

    invoke-super {p0, v2, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v7, :cond_1

    const-string v6, "FullScreen"

    const-string v7, "[handleKeyEvent] full screen view doesn\'t assign to Image view touch"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    const/4 v4, -0x2

    sparse-switch v2, :sswitch_data_0

    :cond_2
    :goto_1
    :sswitch_0
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v0, -0x1

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :cond_3
    if-ltz v4, :cond_1a

    if-ge v4, v0, :cond_1a

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v7, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_4
    :goto_2
    invoke-super {p0, v2, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    :sswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x3f99999a

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomIn(F)V

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v0, -0x1

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :cond_5
    if-ltz v4, :cond_18

    if-ge v4, v0, :cond_18

    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v6

    :try_start_2
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    :goto_3
    throw v7

    :sswitch_2
    const/high16 v7, 0x40e0

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    if-nez v1, :cond_a

    move v3, v5

    :goto_4
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v7

    cmpg-float v7, v7, v9

    if-lez v7, :cond_7

    const/4 v7, 0x1

    invoke-virtual {p0, v7, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->isShiftedToNextImage(ZI)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-eqz v7, :cond_b

    :cond_7
    add-int/lit8 v4, v1, -0x1

    :goto_5
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v0, -0x1

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :cond_8
    if-ltz v4, :cond_1d

    if-ge v4, v0, :cond_1d

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    :try_start_4
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :cond_9
    :goto_6
    move v5, v6

    goto/16 :goto_0

    :cond_a
    :try_start_5
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$4700()I

    move-result v3

    goto :goto_4

    :cond_b
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_5

    :sswitch_3
    const/high16 v7, -0x3f20

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    const/4 v0, -0x1

    if-ne v1, v10, :cond_f

    move v3, v5

    :goto_7
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v7

    cmpg-float v7, v7, v9

    if-lez v7, :cond_c

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->isShiftedToNextImage(ZI)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    if-eqz v7, :cond_10

    :cond_c
    add-int/lit8 v4, v1, 0x1

    :goto_8
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v0, -0x1

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :cond_d
    if-ltz v4, :cond_1e

    if-ge v4, v0, :cond_1e

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    :try_start_6
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :cond_e
    :goto_9
    move v5, v6

    goto/16 :goto_0

    :cond_f
    :try_start_7
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$4700()I

    move-result v3

    goto :goto_7

    :cond_10
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_8

    :sswitch_4
    const/4 v7, 0x0

    const/high16 v8, 0x40e0

    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_12

    const/4 v0, -0x1

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :cond_11
    if-ltz v4, :cond_1b

    if-ge v4, v0, :cond_1b

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    :try_start_8
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_12
    :goto_a
    move v5, v6

    goto/16 :goto_0

    :sswitch_5
    const/4 v7, 0x0

    const/high16 v8, -0x3f20

    :try_start_9
    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_14

    const/4 v0, -0x1

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :cond_13
    if-ltz v4, :cond_1c

    if-ge v4, v0, :cond_1c

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    :try_start_a
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :cond_14
    :goto_b
    move v5, v6

    goto/16 :goto_0

    :sswitch_6
    :try_start_b
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    :cond_15
    const/high16 v7, 0x3f80

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomTo(F)V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    const-string v7, "[FullScreenView]press back key zoom back"

    invoke-static {v7}, Lcom/htc/opensense/album/util/Log;->autotest(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_17

    const/4 v0, -0x1

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    :cond_16
    if-ltz v4, :cond_19

    if-ge v4, v0, :cond_19

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    :try_start_c
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_17
    :goto_c
    move v5, v6

    goto/16 :goto_0

    :cond_18
    if-eq v4, v10, :cond_6

    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_3

    :catchall_1
    move-exception v5

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v5

    :cond_19
    if-eq v4, v10, :cond_17

    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_c

    :catchall_2
    move-exception v5

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v5

    :cond_1a
    if-eq v4, v10, :cond_4

    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_2

    :catchall_3
    move-exception v5

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v5

    :cond_1b
    if-eq v4, v10, :cond_12

    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_a

    :catchall_4
    move-exception v5

    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v5

    :cond_1c
    if-eq v4, v10, :cond_14

    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_b

    :catchall_5
    move-exception v5

    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v5

    :cond_1d
    if-eq v4, v10, :cond_9

    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_6

    :catchall_6
    move-exception v5

    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v5

    :cond_1e
    if-eq v4, v10, :cond_e

    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_9

    :catchall_7
    move-exception v5

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v5

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_6
        0x13 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 52

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v36

    if-nez v36, :cond_0

    const/16 v47, 0x1

    :goto_0
    return v47

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v47

    if-eqz v47, :cond_1

    const/16 v47, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v47

    if-eqz v47, :cond_2

    const/16 v47, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v47

    if-eqz v47, :cond_3

    const/16 v47, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v41, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v44

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    move/from16 v47, v0

    if-nez v47, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/Gesture;->recognize(Landroid/view/MotionEvent;)I

    move-result v18

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v47

    and-int/lit8 v47, v47, 0xf

    packed-switch v47, :pswitch_data_0

    :cond_4
    :goto_2
    :pswitch_0
    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_5
    const/16 v18, 0x1

    goto :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v47

    if-nez v47, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    :cond_6
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    move-object/from16 v49, v0

    const/16 v50, 0x1

    const/16 v51, 0x0

    aput v51, v49, v50

    aput v51, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v47, v0

    if-eqz v47, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v47

    if-nez v47, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    aput v49, v47, v48

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    aput v49, v47, v48

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    move-object/from16 v47, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v47, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v49, v0

    const/16 v50, 0x1

    const/16 v51, 0x0

    aput v51, v49, v50

    aput v51, v47, v48

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    move/from16 v47, v0

    if-eqz v47, :cond_4

    const/16 v47, 0x8

    move/from16 v0, v18

    move/from16 v1, v47

    if-eq v0, v1, :cond_8

    const/16 v47, 0x9

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_b

    :cond_8
    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    move/from16 v47, v0

    packed-switch v47, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v47, v0

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_a

    const/16 v47, 0x3

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    :cond_a
    const/16 v47, 0x4

    move/from16 v0, v18

    move/from16 v1, v47

    if-eq v0, v1, :cond_10

    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_b
    const/16 v47, 0xd

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_c

    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->invalidate()V

    goto :goto_4

    :cond_c
    const/16 v47, 0xc

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_d

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    const/16 v47, 0x5

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_4

    :cond_d
    const/16 v47, 0x4

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v47, v0

    const/16 v48, 0x4

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_e

    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    :cond_e
    const/16 v47, 0x3

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    :cond_f
    const/16 v47, 0x1

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_9

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/Gesture;->getActiveBehavior()Lcom/htc/opensense/widget/Gesture$IBehavior;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense/widget/Gesture$DragBehavior;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/widget/Gesture$DragBehavior;->getDistanceX()F

    move-result v47

    move/from16 v0, v47

    float-to-int v14, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/widget/Gesture$DragBehavior;->getDistanceY()F

    move-result v47

    move/from16 v0, v47

    float-to-int v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v48

    add-int v47, v47, v48

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v47

    const/high16 v48, 0x3f80

    cmpg-float v47, v47, v48

    if-gtz v47, :cond_11

    const/16 v40, 0x1

    :goto_5
    if-eqz v40, :cond_15

    neg-int v0, v14

    move/from16 v25, v0

    if-gez v25, :cond_12

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    invoke-direct/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canScroll()Z

    move-result v47

    if-nez v47, :cond_13

    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_11
    const/16 v40, 0x0

    goto :goto_5

    :cond_12
    if-lez v25, :cond_13

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v47

    const/16 v48, 0x2

    aget-object v47, v47, v48

    invoke-direct/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canScroll()Z

    move-result v47

    if-nez v47, :cond_13

    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_14

    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_6
    const/16 v47, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v25

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_2

    :cond_14
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_6

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v47, v0

    if-nez v47, :cond_19

    const/16 v38, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v47, v0

    if-nez v47, :cond_1a

    const/16 v39, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v47, v0

    if-nez v47, :cond_1b

    const/4 v7, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v47, v0

    if-nez v47, :cond_1c

    const/4 v8, 0x0

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v23

    sub-float v47, v7, v38

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v27, v0

    sub-float v47, v8, v39

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v26, v0

    const/16 v37, 0x0

    move/from16 v0, v26

    move/from16 v1, v21

    if-gt v0, v1, :cond_1d

    const/4 v9, 0x0

    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v32, v0

    const/16 v20, 0x0

    move/from16 v0, v27

    move/from16 v1, v22

    if-gt v0, v1, :cond_1e

    const/16 v33, 0x0

    :goto_c
    const/16 v29, 0x0

    const/16 v30, 0x0

    if-eqz v15, :cond_17

    if-nez v9, :cond_1f

    const/4 v15, 0x0

    :cond_16
    :goto_d
    const/16 v47, 0x0

    int-to-float v0, v15

    move/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    move/from16 v30, v15

    :cond_17
    if-eqz v14, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v47, v0

    const/16 v48, 0x2711

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    move/from16 v47, v0

    sub-int v47, v47, v33

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(I)I

    move-result v47

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_23

    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v13

    sub-int v47, v13, v14

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_21

    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_e
    if-lez v14, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    cmpg-float v47, v17, v47

    if-gtz v47, :cond_22

    const/16 v47, 0x2715

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    sub-int v47, v13, v47

    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v47, v47, v17

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v47, v47, v17

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v29, v0

    :cond_18
    :goto_f
    if-eqz v29, :cond_4

    if-eqz v30, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    move-result-object v47

    if-eqz v47, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$OnPanListener;->onPan(II)V

    goto/16 :goto_2

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget v38, v47, v48

    goto/16 :goto_7

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v39, v47, v48

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget v7, v47, v48

    goto/16 :goto_9

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v8, v47, v48

    goto/16 :goto_a

    :cond_1d
    sub-int v47, v26, v21

    move/from16 v0, v47

    neg-int v9, v0

    goto/16 :goto_b

    :cond_1e
    sub-int v47, v27, v22

    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v33, v0

    goto/16 :goto_c

    :cond_1f
    add-int v47, v32, v15

    move/from16 v0, v47

    move/from16 v1, v37

    if-le v0, v1, :cond_20

    sub-int v15, v37, v32

    goto/16 :goto_d

    :cond_20
    add-int v47, v32, v15

    move/from16 v0, v47

    if-ge v0, v9, :cond_16

    sub-int v15, v9, v32

    goto/16 :goto_d

    :cond_21
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto/16 :goto_e

    :cond_22
    neg-int v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v47, v0

    const/16 v48, 0x2712

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    move/from16 v47, v0

    sub-int v47, v47, v20

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(I)I

    move-result v47

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_26

    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v13

    sub-int v17, v13, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_24

    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_10
    if-gez v14, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    move/from16 v0, v17

    move/from16 v1, v47

    if-lt v0, v1, :cond_25

    const/16 v47, 0x2715

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    sub-int v47, v13, v47

    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    sub-int v47, v47, v17

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    sub-int v29, v47, v17

    goto/16 :goto_f

    :cond_24
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_10

    :cond_25
    neg-int v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    :cond_26
    if-gez v14, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    move/from16 v47, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v47, v47, v48

    if-lez v47, :cond_2b

    float-to-int v0, v7

    move/from16 v47, v0

    sub-int v48, v42, v33

    sub-int v47, v47, v48

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(I)I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-gt v0, v1, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    add-int v47, v47, v14

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    const/16 v48, -0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    add-int/lit8 v14, v47, 0xa

    :cond_27
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    int-to-float v0, v14

    move/from16 v47, v0

    add-float v17, v7, v47

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v47, v0

    cmpg-float v47, v17, v47

    if-gtz v47, :cond_2a

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v47, v47, v7

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v47, v47, v7

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    move/from16 v47, v0

    sub-int v47, v47, v33

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(I)I

    move-result v47

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_18

    const/16 v47, 0x2711

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_29

    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_11
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v47, v47, v17

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    :cond_28
    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_29
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_11

    :cond_2a
    int-to-float v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    move/from16 v29, v14

    goto/16 :goto_f

    :cond_2b
    const/16 v47, 0x2711

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_2c

    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_12
    neg-int v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    :cond_2c
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_12

    :cond_2d
    if-lez v14, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    move/from16 v47, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v47, v47, v48

    if-lez v47, :cond_32

    move/from16 v0, v38

    float-to-double v0, v0

    move-wide/from16 v47, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->floor(D)D

    move-result-wide v47

    move-wide/from16 v0, v47

    double-to-int v0, v0

    move/from16 v47, v0

    sub-int v47, v47, v33

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(I)I

    move-result v47

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-gt v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    add-int v47, v47, v14

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    add-int/lit8 v14, v47, -0xa

    :cond_2e
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    int-to-float v0, v14

    move/from16 v47, v0

    add-float v17, v47, v38

    const/16 v47, 0x0

    cmpl-float v47, v17, v47

    if-lez v47, :cond_31

    const/16 v47, 0x2712

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    move/from16 v47, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v47, v47, v48

    if-lez v47, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    move/from16 v47, v0

    sub-int v47, v47, v20

    invoke-static/range {v47 .. v47}, Ljava/lang/Math;->abs(I)I

    move-result v47

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_18

    const/16 v47, 0x2712

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_30

    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_13
    int-to-float v0, v14

    move/from16 v47, v0

    add-float v47, v47, v38

    move/from16 v0, v47

    neg-float v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    :cond_2f
    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_30
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_13

    :cond_31
    int-to-float v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    move/from16 v29, v14

    goto/16 :goto_f

    :cond_32
    const/16 v47, 0x2712

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_33

    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    :goto_14
    neg-int v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    :cond_33
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_14

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v47

    if-nez v47, :cond_34

    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v47, v0

    if-eqz v47, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v47, v0

    const/16 v48, 0x2712

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v47, v0

    const/16 v48, 0x2711

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_36

    :cond_35
    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_36
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v47, v0

    const/16 v48, 0x4

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v47, v0

    const/16 v48, 0x5

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_39

    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    move/from16 v47, v0

    const/16 v48, 0x1e

    move/from16 v0, v47

    move/from16 v1, v48

    if-gt v0, v1, :cond_38

    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_38
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    const/16 v47, 0x1

    goto/16 :goto_0

    :cond_39
    const v6, 0x3c1374bc

    const v4, 0x3dcccccd

    const/high16 v5, 0x4316

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/Gesture;->getActiveBehavior()Lcom/htc/opensense/widget/Gesture$IBehavior;

    move-result-object v46

    check-cast v46, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->weight()F

    move-result v43

    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->getCenterX()F

    move-result v47

    move/from16 v0, v47

    float-to-int v10, v0

    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->getCenterY()F

    move-result v47

    move/from16 v0, v47

    float-to-int v11, v0

    const/high16 v47, 0x4316

    div-float v43, v43, v47

    const v47, 0x3dcccccd

    cmpl-float v47, v43, v47

    if-lez v47, :cond_3a

    const v43, 0x3dcccccd

    :cond_3a
    const v47, 0x3c1374bc

    cmpg-float v47, v43, v47

    if-lez v47, :cond_4

    const/high16 v34, 0x3f80

    const/16 v47, 0x8

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_3c

    const/16 v47, 0x1

    const/16 v48, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v47

    move/from16 v2, v48

    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V

    const/high16 v47, 0x3f80

    add-float v34, v43, v47

    :cond_3b
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v31

    int-to-float v0, v10

    move/from16 v47, v0

    int-to-float v0, v11

    move/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomInAt(FFF)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v47

    if-eqz v47, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v47

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v48

    move-object/from16 v0, v47

    move/from16 v1, v31

    move/from16 v2, v48

    invoke-interface {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onPinchZoom(FF)V

    goto/16 :goto_2

    :cond_3c
    const/16 v47, 0x9

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_3b

    const/high16 v47, 0x3f80

    sub-float v34, v47, v43

    const/high16 v47, 0x3f80

    cmpg-float v47, v34, v47

    if-gtz v47, :cond_3b

    goto :goto_15

    :pswitch_6
    const/16 v47, 0xd

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v34

    const/high16 v47, 0x3f80

    cmpg-float v47, v34, v47

    if-gtz v47, :cond_3d

    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    :cond_3d
    const/high16 v47, 0x3f80

    cmpl-float v47, v34, v47

    if-ltz v47, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v47

    cmpg-float v47, v34, v47

    if-gtz v47, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v47

    if-eqz v47, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onPinchZoomEnd()V

    :cond_3e
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->invalidate()V

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    move/from16 v47, v0

    if-eqz v47, :cond_4

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    move/from16 v47, v0

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_40

    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getZoomStatus()I

    move-result v47

    if-eqz v47, :cond_3f

    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v47

    const/high16 v48, 0x3f80

    cmpl-float v47, v47, v48

    if-lez v47, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    move-result-object v47

    if-eqz v47, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$OnPanListener;->onPanEnd()V

    :cond_40
    const/16 v47, 0xd

    move/from16 v0, v18

    move/from16 v1, v47

    if-eq v0, v1, :cond_4

    const/16 v28, -0x1

    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v47

    if-eqz v47, :cond_44

    const/high16 v19, 0x40a0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/Gesture;->getDragDistanceX()F

    move-result v35

    cmpl-float v47, v35, v19

    if-lez v47, :cond_43

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    add-int/lit8 v28, v47, 0x1

    :cond_41
    :goto_16
    const/4 v12, -0x1

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v47

    if-eqz v47, :cond_4

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v12

    if-ltz v28, :cond_47

    move/from16 v0, v28

    if-ge v0, v12, :cond_47

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    monitor-enter v41

    const/16 v47, 0x1

    :try_start_0
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollImage:Z

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v47

    if-eqz v47, :cond_42

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    :cond_42
    const/16 v47, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v28

    move/from16 v2, v47

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    const/16 v47, -0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    monitor-exit v41
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_17
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_2

    :cond_43
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v47, v0

    cmpg-float v47, v35, v47

    if-gez v47, :cond_41

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    add-int/lit8 v28, v47, -0x1

    goto :goto_16

    :cond_44
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v47

    const/high16 v48, 0x3f80

    cmpl-float v47, v47, v48

    if-lez v47, :cond_45

    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v47

    div-int/lit8 v48, v22, 0x3

    add-int v19, v47, v48

    :goto_18
    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v48, v0

    sub-int v35, v47, v48

    move/from16 v0, v35

    move/from16 v1, v19

    if-le v0, v1, :cond_46

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    add-int/lit8 v28, v47, 0x1

    goto/16 :goto_16

    :cond_45
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v47

    div-int/lit8 v48, v22, 0x6

    add-int v19, v47, v48

    goto :goto_18

    :cond_46
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v35

    move/from16 v1, v47

    if-ge v0, v1, :cond_41

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    add-int/lit8 v28, v47, -0x1

    goto/16 :goto_16

    :catchall_0
    move-exception v47

    :try_start_1
    monitor-exit v41
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v47

    :cond_47
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getState()I

    move-result v47

    const/16 v48, 0x2

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_48

    const/16 v47, 0x1

    :goto_19
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->sScrollOffset:I
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4400(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->startScrollTo(II)V

    goto/16 :goto_17

    :cond_48
    const/16 v47, 0x0

    goto :goto_19

    :pswitch_8
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    const/16 v47, -0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/high16 v13, 0x4220

    const/4 v11, 0x0

    const/4 v12, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v9, :cond_2

    const-string v8, "FullScreen"

    const-string v9, "[handleTrackballEvent] full screen view doesn\'t assign to Image view touch"

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    const/4 v3, -0x2

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v4

    if-nez v4, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    packed-switch v9, :pswitch_data_0

    const/4 v0, -0x1

    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ltz v3, :cond_12

    if-ge v3, v0, :cond_12

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v8

    :try_start_1
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v9, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v9}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    :pswitch_0
    :try_start_2
    invoke-virtual {v4}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_6

    const/4 v0, -0x1

    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ltz v3, :cond_10

    if-ge v3, v0, :cond_10

    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v9

    :try_start_3
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    :goto_2
    move v7, v8

    goto :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    neg-float v9, v5

    mul-float/2addr v9, v13

    neg-float v10, v6

    mul-float/2addr v10, v13

    invoke-virtual {p0, v9, v10}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    const/4 v0, -0x1

    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    add-int/lit8 v9, v0, -0x1

    if-ne v1, v9, :cond_a

    move v2, v7

    :goto_3
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v9

    const/high16 v10, 0x3f80

    cmpg-float v9, v9, v10

    if-lez v9, :cond_7

    cmpl-float v9, v5, v11

    if-lez v9, :cond_b

    move v9, v7

    :goto_4
    invoke-virtual {p0, v9, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->isShiftedToNextImage(ZI)Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_7
    cmpl-float v9, v5, v11

    if-lez v9, :cond_c

    add-int/lit8 v3, v1, 0x1

    :cond_8
    :goto_5
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    const/4 v0, -0x1

    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ltz v3, :cond_11

    if-ge v3, v0, :cond_11

    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v9

    :try_start_5
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_9
    :goto_7
    move v7, v8

    goto/16 :goto_0

    :cond_a
    :try_start_6
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$4700()I

    move-result v2

    goto :goto_3

    :cond_b
    move v9, v8

    goto :goto_4

    :cond_c
    cmpg-float v9, v5, v11

    if-gez v9, :cond_8

    add-int/lit8 v3, v1, -0x1

    goto :goto_5

    :cond_d
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v9

    const/4 v0, -0x1

    iget-object v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v10}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    if-ltz v3, :cond_f

    if-ge v3, v0, :cond_f

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v8

    :try_start_7
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_e
    :goto_8
    throw v9

    :cond_f
    if-eq v3, v12, :cond_e

    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_8

    :catchall_1
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v7

    :cond_10
    if-eq v3, v12, :cond_5

    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_2

    :catchall_2
    move-exception v7

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v7

    :cond_11
    if-eq v3, v12, :cond_9

    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_7

    :catchall_3
    move-exception v7

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v7

    :cond_12
    if-eq v3, v12, :cond_4

    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_1

    :catchall_4
    move-exception v7

    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v7

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected isShiftedToNextImage(ZI)Z
    .locals 8

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz p1, :cond_1

    new-array v3, v6, [F

    fill-array-data v3, :array_0

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v6, v3, v5

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    :goto_1
    new-array v3, v6, [F

    int-to-float v6, v4

    aput v6, v3, v5

    const/4 v6, 0x0

    aput v6, v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v6, v3, v5

    int-to-float v7, p2

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    :goto_2
    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v4

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawDrmFileName(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawCorruptIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    sget-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->doPinchZoomBouceBack()V

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->doScrollBounceBack(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawVideoIndicator(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawDrmSmallIndicator(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawLoadedIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawZoomImgDirectlyByMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-super {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawDrmBigIndicator(Landroid/graphics/Canvas;)V

    :cond_6
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawLoadedIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const/high16 v5, 0x3f80

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v3, v4, v4}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomInAt(FFF)V

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v5

    if-eqz v5, :cond_0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v5

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v6

    invoke-interface {v5, v1, v6}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onPinchZoom(FF)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    :cond_0
    cmpl-float v1, v0, v2

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onPinchZoomEnd()V

    :cond_1
    iput-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    iput-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    iput v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    iput v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->invalidate()V

    return-void
.end method

.method public orientationCompensation()V
    .locals 15

    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-nez v10, :cond_0

    new-array v8, v11, [F

    fill-array-data v8, :array_0

    new-array v1, v11, [F

    iget-object v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v1, v12

    iget-object v10, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    aput v10, v1, v13

    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    aget v10, v1, v12

    aget v11, v8, v12

    sub-float/2addr v10, v11

    float-to-int v2, v10

    aget v10, v1, v13

    aget v11, v8, v13

    sub-float/2addr v10, v11

    float-to-int v0, v10

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-le v0, v5, :cond_4

    aget v10, v8, v13

    cmpl-float v10, v10, v14

    if-lez v10, :cond_3

    aget v10, v8, v13

    float-to-int v4, v10

    :goto_1
    if-le v2, v9, :cond_6

    aget v10, v8, v12

    cmpl-float v10, v10, v14

    if-lez v10, :cond_5

    aget v10, v8, v12

    float-to-int v3, v10

    :goto_2
    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    :cond_2
    neg-int v10, v3

    int-to-float v10, v10

    neg-int v11, v4

    int-to-float v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    goto :goto_0

    :cond_3
    aget v10, v1, v13

    float-to-int v10, v10

    sub-int v4, v10, v5

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :cond_4
    sub-int v10, v5, v0

    div-int/lit8 v7, v10, 0x2

    aget v10, v8, v13

    float-to-int v10, v10

    sub-int v4, v10, v7

    goto :goto_1

    :cond_5
    aget v10, v1, v12

    float-to-int v10, v10

    sub-int v3, v10, v9

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    :cond_6
    sub-int v10, v9, v2

    div-int/lit8 v7, v10, 0x2

    aget v10, v8, v12

    float-to-int v10, v10

    sub-int v3, v10, v7

    goto :goto_2

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected postTranslate(FFZ)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->postTranslate(FF)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->release()V

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    iput v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    return-void
.end method

.method protected scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDebugId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->DEBUGID:I

    return-void
.end method

.method public setDrmInfo(ZIZZI)V
    .locals 4

    const/4 v3, 0x1

    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    iput-boolean p3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    iput-boolean p4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-le p5, v3, :cond_1

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    :cond_1
    return-void
.end method

.method public setEnableTrackballScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    return-void
.end method

.method public setHQBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeDrawMode(I)V

    invoke-virtual {p0, p1, v1, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mHQLoaded:Z

    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V
    .locals 2

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    sget-boolean v0, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->name:Ljava/lang/String;

    const-string v1, "image2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #calls: Lcom/htc/opensense/widget/FullScreenView;->showOnScreenControls()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$3100(Lcom/htc/opensense/widget/FullScreenView;)V

    :cond_2
    return-void
.end method

.method public setImageInfo(Ljava/lang/String;IIIZZ)V
    .locals 4

    const/4 v3, 0x1

    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    iput p3, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriW:I

    iput p4, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mBitmapOriH:I

    iput-boolean p6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz p5, :cond_1

    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/ImageViewTouchBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-le v0, v3, :cond_0

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    goto :goto_0
.end method

.method public setOnlineIndicator(I)V
    .locals 0

    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setView(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    return-void
.end method

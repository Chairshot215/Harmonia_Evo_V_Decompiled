.class public Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
.super Lcom/htc/home/personalize/opensense/ImageViewTouchBase;
.source "FullScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageViewTouch"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;,
        Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;,
        Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;
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

.field private mDoPinchZoomBounce:Z

.field private mDoScrollBounce:Z

.field private mDrawMode:I

.field private mDrmType:I

.field private mEatDragEvt:I

.field private mEnableTrackballScroll:Z

.field private mFileName:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

.field private mGesture:Lcom/htc/home/personalize/opensense/Gesture;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mIndex:I

.field private mMimeType:Ljava/lang/String;

.field private mMyGestureListener:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;

.field private mOnDown:Z

.field private mOnlineLoadingIndicator:I

.field private mPanCurrLeftTop:[F

.field private mPanCurrRightBottom:[F

.field private mPanStartX:I

.field private mPanStartY:I

.field private mPartialDecodeBitmap:Landroid/graphics/Bitmap;

.field private mPinchZoomBounceInterval:F

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

.field private mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

.field private mbCorrupt:Z

.field private mbDrm:Z

.field private mbDrmThumb:Z

.field private mbExif:Z

.field private mbExpire:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 959
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 842
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 843
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 844
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {v0}, Lcom/htc/home/personalize/opensense/Gesture;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/home/personalize/opensense/Gesture;

    .line 845
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;

    .line 853
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    .line 865
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 866
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 871
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->DEBUGID:I

    .line 882
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    .line 890
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z

    .line 893
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSingleTapUp:Z

    .line 897
    const v0, 0x3d8f5c29

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    .line 898
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollImage:Z

    .line 904
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 905
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnDown:Z

    .line 906
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 916
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartX:I

    .line 917
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartY:I

    .line 918
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    .line 921
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    .line 922
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    .line 923
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    .line 1142
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1143
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 960
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    .line 961
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setup()V

    .line 962
    return-void

    .line 922
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 968
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 842
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 843
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 844
    new-instance v0, Lcom/htc/home/personalize/opensense/Gesture;

    invoke-direct {v0}, Lcom/htc/home/personalize/opensense/Gesture;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/home/personalize/opensense/Gesture;

    .line 845
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;

    .line 853
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    .line 865
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 866
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 871
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->DEBUGID:I

    .line 882
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 889
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    .line 890
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z

    .line 893
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSingleTapUp:Z

    .line 897
    const v0, 0x3d8f5c29

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    .line 898
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollImage:Z

    .line 904
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 905
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnDown:Z

    .line 906
    iput-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 916
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartX:I

    .line 917
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartY:I

    .line 918
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    .line 921
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    .line 922
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    .line 923
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    .line 1142
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1143
    iput v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 969
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    .line 970
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setup()V

    .line 971
    return-void

    .line 922
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 822
    iput-boolean p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 822
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->startDecodeHQ()V

    return-void
.end method

.method static synthetic access$3200(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 822
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    return p1
.end method

.method static synthetic access$3702(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 822
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    return p1
.end method

.method static synthetic access$3900(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 822
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->onDoubleClick(FF)V

    return-void
.end method

.method static synthetic access$5500(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 822
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    return v0
.end method

.method private action2Str(I)Ljava/lang/String;
    .locals 1
    .parameter "action"

    .prologue
    .line 1492
    packed-switch p1, :pswitch_data_0

    .line 1504
    const-string v0, "unknown action"

    :goto_0
    return-object v0

    .line 1494
    :pswitch_0
    const-string v0, "action down"

    goto :goto_0

    .line 1496
    :pswitch_1
    const-string v0, "action up"

    goto :goto_0

    .line 1498
    :pswitch_2
    const-string v0, "action move"

    goto :goto_0

    .line 1500
    :pswitch_3
    const-string v0, "action cancel"

    goto :goto_0

    .line 1502
    :pswitch_4
    const-string v0, "action outside"

    goto :goto_0

    .line 1492
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

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getZoomStatus()I

    move-result v4

    .line 2113
    .local v4, zoomStatus:I
    const/high16 v3, 0x3f80

    .line 2114
    .local v3, stop:F
    const/high16 v2, 0x4396

    .line 2115
    .local v2, duration:F
    packed-switch v4, :pswitch_data_0

    .line 2129
    :goto_0
    return-void

    .line 2117
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v3

    .line 2118
    iget v5, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mLastZoomCenterX:F

    iget v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mLastZoomCenterY:F

    invoke-virtual {p0, v3, v5, v6, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    .line 2123
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 2124
    .local v0, centerX:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 2125
    .local v1, centerY:I
    const/high16 v3, 0x3f80

    .line 2126
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p0, v3, v5, v6, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    .line 2115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private caculateZoomDelta()V
    .locals 7

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v0

    .line 929
    .local v0, maxZoom:F
    const-wide v1, 0x4005bf0a8b145769L

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4024

    div-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    iput v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    .line 930
    return-void
.end method

.method private canScroll()Z
    .locals 3

    .prologue
    .line 1523
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-nez v1, :cond_1

    .line 1524
    const-string v1, "FullScreen"

    const-string v2, "[canScroll] view image not assign to image view touch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const/4 v0, 0x0

    .line 1549
    :cond_0
    :goto_0
    return v0

    .line 1528
    :cond_1
    const/4 v0, 0x0

    .line 1530
    .local v0, canScroll:Z
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1531
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnScrollListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$200(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$OnScrollListener;->canScroll()Z

    move-result v0

    .line 1533
    :cond_2
    iget-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    if-eqz v1, :cond_3

    .line 1534
    const/4 v0, 0x1

    .line 1536
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1537
    const/4 v0, 0x1

    .line 1539
    :cond_4
    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_6

    .line 1540
    :cond_5
    const/4 v0, 0x1

    .line 1542
    :cond_6
    iget-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v1, :cond_7

    .line 1543
    const/4 v0, 0x1

    .line 1545
    :cond_7
    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1546
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeDrawMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 933
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 934
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 935
    :cond_0
    return-void
.end method

.method private detectTapIn(Landroid/graphics/Bitmap;FF)Z
    .locals 3
    .parameter "b"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, 0x0

    .line 1277
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2900()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_0

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2900()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doPinchZoomBouceBack()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 2557
    iget-boolean v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    if-eqz v6, :cond_1

    .line 2558
    const/high16 v4, 0x3f80

    .line 2559
    .local v4, scale:F
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v6

    cmpg-float v6, v6, v10

    if-gez v6, :cond_3

    .line 2560
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v6

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v7

    iget v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    mul-float/2addr v7, v8

    add-float v2, v6, v7

    .line 2561
    .local v2, nextScale:F
    cmpg-float v6, v2, v10

    if-gez v6, :cond_2

    .line 2562
    move v4, v2

    .line 2568
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2900()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v6, v4, v4, v7, v8}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 2569
    invoke-virtual {p0, v9, v11, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    .line 2584
    .end local v2           #nextScale:F
    .end local v4           #scale:F
    :cond_1
    :goto_1
    return-void

    .line 2563
    .restart local v2       #nextScale:F
    .restart local v4       #scale:F
    :cond_2
    cmpl-float v6, v2, v10

    if-ltz v6, :cond_0

    .line 2564
    const/high16 v4, 0x3f80

    .line 2565
    iput-boolean v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    goto :goto_0

    .line 2570
    .end local v2           #nextScale:F
    :cond_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v6

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    .line 2571
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v3

    .line 2572
    .local v3, oldScale:F
    iget v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    mul-float/2addr v6, v3

    sub-float v5, v3, v6

    .line 2573
    .local v5, target:F
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v6

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_4

    .line 2574
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v5

    .line 2575
    iput-boolean v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 2577
    :cond_4
    div-float v0, v5, v3

    .line 2578
    .local v0, deltaScale:F
    mul-float v1, v3, v0

    .line 2580
    .local v1, nextSale:F
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    iget v7, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mLastZoomCenterX:F

    iget v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mLastZoomCenterY:F

    invoke-virtual {v6, v0, v0, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2581
    invoke-virtual {p0, v9, v11, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_1
.end method

.method private doScrollBounceBack(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/high16 v5, 0x3f80

    const v11, 0x3ecccccd

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2587
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 2588
    .local v1, mat:Landroid/graphics/Matrix;
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    .line 2589
    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v10

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    iput-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    .line 2590
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2591
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2593
    iget-boolean v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    if-nez v6, :cond_1

    .line 2633
    :cond_0
    :goto_0
    return-void

    .line 2595
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getSkewX(Landroid/graphics/Matrix;)F

    move-result v2

    .line 2596
    .local v2, skewX:F
    invoke-virtual {p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getSkewY(Landroid/graphics/Matrix;)F

    move-result v3

    .line 2597
    .local v3, skewY:F
    const/4 v0, 0x0

    .line 2598
    .local v0, deltaY:F
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    int-to-float v4, v6

    .line 2600
    .local v4, viewHeight:F
    cmpl-float v6, v2, v9

    if-nez v6, :cond_2

    cmpl-float v6, v3, v9

    if-eqz v6, :cond_6

    .line 2602
    :cond_2
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v10

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    .line 2603
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    .line 2604
    iget v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_4

    .line 2605
    iget v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    sub-float v6, v4, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v7, v7, v8

    sub-float v0, v6, v7

    .line 2623
    :cond_3
    :goto_1
    cmpl-float v6, v0, v9

    if-eqz v6, :cond_0

    .line 2625
    cmpl-float v6, v0, v9

    if-lez v6, :cond_a

    .line 2626
    mul-float v6, v0, v11

    cmpg-float v6, v6, v9

    if-gez v6, :cond_9

    :goto_2
    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0, v9, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    goto :goto_0

    .line 2606
    :cond_4
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    .line 2607
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    neg-float v0, v6

    goto :goto_1

    .line 2608
    :cond_5
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    .line 2609
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    sub-float v0, v4, v6

    goto :goto_1

    .line 2613
    :cond_6
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    .line 2614
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v10

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    .line 2615
    iget v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_7

    .line 2616
    iget v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    sub-float v6, v4, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float v0, v6, v7

    goto :goto_1

    .line 2617
    :cond_7
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_8

    .line 2618
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    neg-float v0, v6

    goto :goto_1

    .line 2619
    :cond_8
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    .line 2620
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    sub-float v0, v4, v6

    goto :goto_1

    .line 2626
    :cond_9
    mul-float v5, v0, v11

    goto :goto_2

    .line 2629
    :cond_a
    mul-float v6, v0, v11

    cmpl-float v6, v6, v9

    if-lez v6, :cond_b

    :goto_3
    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0, v9, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    goto/16 :goto_0

    :cond_b
    mul-float v5, v0, v11

    goto :goto_3

    .line 2588
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private drawCorruptIndicator(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 2546
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2547
    .local v0, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-eqz v0, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4300(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4300(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2554
    :cond_0
    :goto_0
    return-void

    .line 2550
    :cond_1
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4300(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4300(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4300(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

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
    .locals 6
    .parameter "canvas"

    .prologue
    .line 2680
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2681
    .local v1, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExpire:Z

    if-nez v2, :cond_1

    .line 2707
    :cond_0
    return-void

    .line 2684
    :cond_1
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v3

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v4

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmBigLock:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5100(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2688
    sget-boolean v2, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_WMDRM:Z

    if-eqz v2, :cond_2

    const-string v2, "video/x-wmv-drm"

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2692
    :cond_2
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2900()I

    move-result v2

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 2693
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4600(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2694
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4600(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewPortraitX:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x46

    mul-int/lit8 v5, v0, 0x14

    add-int/2addr v4, v5

    int-to-float v4, v4

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4800(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2693
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2700
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4900(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2701
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4900(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewLandscapeX:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5000(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x46

    mul-int/lit8 v5, v0, 0x14

    add-int/2addr v4, v5

    int-to-float v4, v4

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4800(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2700
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawDrmFileName(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 2710
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4800(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2713
    :cond_0
    :goto_0
    return-void

    .line 2712
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    const/high16 v1, 0x4120

    const/high16 v2, 0x41f0

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4800(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawDrmSmallIndicator(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 2649
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2650
    .local v1, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4500(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4500(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2677
    :cond_0
    return-void

    .line 2654
    :cond_1
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmSmallLock:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4500(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x28

    int-to-float v3, v3

    const/high16 v4, 0x4120

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2656
    sget-boolean v2, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_WMDRM:Z

    if-eqz v2, :cond_2

    const-string v2, "video/x-wmv-drm"

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2660
    :cond_2
    iget-boolean v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    if-eqz v2, :cond_0

    .line 2661
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2900()I

    move-result v2

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 2662
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4600(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2663
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4600(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewPortraitX:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x46

    mul-int/lit8 v5, v0, 0x14

    add-int/2addr v4, v5

    int-to-float v4, v4

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4800(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2662
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2669
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4900(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 2670
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4900(Lcom/htc/home/personalize/opensense/FullScreenView;)[Ljava/lang/Object;

    move-result-object v2

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmTapViewLandscapeX:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5000(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x46

    mul-int/lit8 v5, v0, 0x14

    add-int/2addr v4, v5

    int-to-float v4, v4

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4800(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2669
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawLoadedIndicator(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/16 v3, 0x8

    .line 2716
    iget v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    if-ne v2, v3, :cond_1

    .line 2733
    :cond_0
    :goto_0
    return-void

    .line 2719
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2720
    .local v1, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-eqz v1, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5200(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5200(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    if-eq v2, v3, :cond_0

    .line 2723
    const/4 v0, 0x0

    .line 2724
    .local v0, indicator:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 2725
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5200(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2730
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5200(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$5200(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2726
    :cond_3
    iget v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 2727
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4300(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private drawVideoIndicator(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 2636
    iget v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2646
    :cond_0
    :goto_0
    return-void

    .line 2638
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2639
    .local v0, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-eqz v0, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4400(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4400(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2642
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4400(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4400(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mVideoIndicator:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4400(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/graphics/Bitmap;

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
    .parameter "canvas"
    .parameter "bitmp"
    .parameter "mx"

    .prologue
    .line 2537
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2538
    :cond_0
    const/4 v0, 0x0

    .line 2542
    :goto_0
    return v0

    .line 2541
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2542
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private easingOutResult(FFFFF)F
    .locals 10
    .parameter "v0"
    .parameter "t"
    .parameter "b"
    .parameter "c"
    .parameter "d"

    .prologue
    .line 1286
    div-float/2addr p2, p5

    .line 1287
    mul-float v1, p2, p2

    .line 1288
    .local v1, ts:F
    mul-float v0, v1, p2

    .line 1290
    .local v0, tc:F
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

    .prologue
    .line 1022
    const/4 v0, 0x0

    return v0
.end method

.method private onDoubleClick(FF)V
    .locals 8
    .parameter "toX"
    .parameter "toY"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x3f80

    const/high16 v6, 0x4416

    .line 2253
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2307
    :cond_0
    :goto_0
    return-void

    .line 2257
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2260
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2261
    .local v1, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    const/4 v0, 0x0

    .line 2263
    .local v0, useOldWay:Z
    invoke-direct {p0, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->changeDrawMode(I)V

    .line 2266
    iget-object v4, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_3

    :cond_2
    move v0, v3

    .line 2269
    :goto_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v4

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_5

    .line 2271
    invoke-virtual {p0, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2273
    if-eqz v0, :cond_4

    .line 2274
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getDoubleTapZoom()F

    move-result v2

    invoke-virtual {p0, v2, p1, p2, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2266
    goto :goto_1

    .line 2276
    :cond_4
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getDoubleTapZoom()F

    move-result v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->zoomToCenterByTime(FIIF)V

    goto :goto_0

    .line 2299
    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2301
    if-eqz v0, :cond_6

    .line 2302
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p0, v7, v2, v3, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    .line 2304
    :cond_6
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v7, v2, v3, v6}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->zoomOutByTime(FIIF)V

    goto :goto_0
.end method

.method private setup()V
    .locals 3

    .prologue
    .line 974
    new-instance v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$ClickGestureListener;-><init>(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;Lcom/htc/home/personalize/opensense/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 975
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 977
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/home/personalize/opensense/Gesture;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$MyGestureListener;

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/Gesture;->setListener(Lcom/htc/home/personalize/opensense/Gesture$GestureListener;)V

    .line 978
    return-void
.end method

.method private startDecodeHQ()V
    .locals 4

    .prologue
    .line 1510
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 1511
    .local v1, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-nez v1, :cond_0

    .line 1512
    const-string v2, "FullScreen"

    const-string v3, "[startDecodeHQ] view image not assign to image view touch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :goto_0
    return-void

    .line 1516
    :cond_0
    const/4 v0, 0x0

    .line 1518
    .local v0, degree:I
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3500(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->addTask(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected afterZoomAnimation(FF)V
    .locals 3
    .parameter "atX"
    .parameter "atY"

    .prologue
    const/4 v2, 0x1

    .line 2165
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2166
    .local v0, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-nez v0, :cond_1

    .line 2167
    const-string v1, "FullScreen"

    const-string v2, "[afterZoomAnimation] view image not assign to image view touch"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_0
    :goto_0
    return-void

    .line 2179
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-nez v1, :cond_3

    .line 2180
    :cond_2
    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2000(Lcom/htc/home/personalize/opensense/FullScreenView;ZZ)V

    .line 2185
    :cond_3
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2186
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;->onZoomEnd(F)V

    goto :goto_0
.end method

.method protected beginZoomAnimation()V
    .locals 2

    .prologue
    .line 2159
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2160
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;->onZoomBegin(F)V

    .line 2161
    :cond_0
    return-void
.end method

.method protected calculateZoomRatio(FFFF)V
    .locals 9
    .parameter "vw"
    .parameter "vh"
    .parameter "bw"
    .parameter "bh"

    .prologue
    const/high16 v7, 0x3f00

    .line 2192
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2193
    .local v5, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-nez v5, :cond_0

    .line 2194
    const-string v6, "FullScreen"

    const-string v7, "[calculateZoomRatio] view image not assign to image view touch"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :goto_0
    return-void

    .line 2198
    :cond_0
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 2200
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v5}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;->onNeedFitToScreen()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2203
    div-float v4, p1, p3

    .line 2204
    .local v4, rw:F
    div-float v3, p2, p4

    .line 2205
    .local v3, rh:F
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBaseMinZoom:F

    goto :goto_0

    .line 2210
    .end local v3           #rh:F
    .end local v4           #rw:F
    :cond_1
    iget-boolean v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 2212
    iget v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriW:I

    int-to-float v6, v6

    div-float v4, p1, v6

    .line 2213
    .restart local v4       #rw:F
    iget v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriH:I

    int-to-float v6, v6

    div-float v3, p2, v6

    .line 2214
    .restart local v3       #rh:F
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 2215
    .local v2, ratio:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v2, v6

    if-gez v6, :cond_2

    .line 2217
    iget v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriW:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v1, v6

    .line 2218
    .local v1, dw:I
    iget v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriH:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 2219
    .local v0, dh:I
    int-to-float v6, v1

    div-float v4, v6, p3

    .line 2220
    int-to-float v6, v0

    div-float v3, v6, p4

    .line 2221
    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBaseMinZoom:F

    .line 2222
    const-string v6, "FullScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Orig("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriW:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriH:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), bmp("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), zoom: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBaseMinZoom:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2227
    .end local v0           #dh:I
    .end local v1           #dw:I
    .end local v2           #ratio:F
    .end local v3           #rh:F
    .end local v4           #rw:F
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->calculateZoomRatio(FFFF)V

    goto/16 :goto_0
.end method

.method canZoom()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2235
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2236
    .local v0, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    if-nez v0, :cond_1

    .line 2237
    const-string v2, "FullScreen"

    const-string v3, "[canZoom] view image not assign to image view touch"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :cond_0
    :goto_0
    return v1

    .line 2240
    :cond_1
    iget v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    if-eq v3, v2, :cond_0

    iget v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2246
    :cond_2
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2247
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;->canPinchZoom()Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2249
    goto :goto_0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 1299
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1301
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3008(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    .line 1302
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    .line 1303
    .local v9, m:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->computeNextPos()Z

    move-result v6

    .line 1304
    .local v6, bret:Z
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3000(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getStartX()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getFinalX()I

    move-result v0

    iget-object v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v4}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getStartX()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3100(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->easingOutResult(FFFFF)F

    move-result v0

    float-to-int v10, v0

    .line 1305
    .local v10, newX:I
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3000(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getStartY()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getFinalY()I

    move-result v0

    iget-object v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v4}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getStartY()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3100(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->easingOutResult(FFFFF)F

    move-result v0

    float-to-int v11, v0

    .line 1308
    .local v11, newY:I
    neg-int v0, v10

    int-to-float v0, v0

    invoke-virtual {p0, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    sub-float v7, v0, v1

    .line 1309
    .local v7, dx:F
    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {p0, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    sub-float v8, v0, v1

    .line 1310
    .local v8, dy:F
    invoke-virtual {p0, v7, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1312
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getFinalX()I

    move-result v0

    if-ne v10, v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->getFinalY()I

    move-result v0

    if-eq v11, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mFrameCount:I
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3000(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v0

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->mTotalFrame:I
    invoke-static {v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3100(Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    move-result v1

    if-le v0, v1, :cond_3

    .line 1315
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    .line 1324
    .end local v6           #bret:Z
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v9           #m:Landroid/graphics/Matrix;
    .end local v10           #newX:I
    .end local v11           #newY:I
    :cond_2
    :goto_0
    return-void

    .line 1319
    .restart local v6       #bret:Z
    .restart local v7       #dx:F
    .restart local v8       #dy:F
    .restart local v9       #m:Landroid/graphics/Matrix;
    .restart local v10       #newX:I
    .restart local v11       #newY:I
    :cond_3
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1320
    sget-object v0, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    .line 1322
    :cond_4
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->postInvalidate()V

    goto :goto_0
.end method

.method public copyFrom(Lcom/htc/home/personalize/opensense/ImageViewTouchBase;)V
    .locals 8
    .parameter "other"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1070
    move-object v1, p1

    check-cast v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    .line 1071
    .local v1, ivt:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 1072
    .local v2, view:Lcom/htc/home/personalize/opensense/FullScreenView;
    iget v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    iput v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1073
    const/4 v0, -0x1

    .line 1074
    .local v0, count:I
    if-nez v2, :cond_0

    .line 1075
    const-string v3, "FullScreen"

    const-string v4, "[copyFrom] not assign full screen view to image view touch"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :goto_0
    return-void

    .line 1079
    :cond_0
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 1080
    iget v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    if-ge v3, v0, :cond_1

    .line 1088
    iget-object v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1089
    iget v3, v1, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriH:I

    iput v3, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriH:I

    .line 1090
    iget v3, v1, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriW:I

    iput v3, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriW:I

    .line 1091
    iget-object v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1092
    iget-object v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 1093
    iget-boolean v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1094
    iget v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrmType:I

    iput v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1095
    iget v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iput v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1096
    iget v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    iput v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 1097
    iget-boolean v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExpire:Z

    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1098
    iget-boolean v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1099
    iget-boolean v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1100
    iget-boolean v3, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1108
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1109
    iput v5, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1110
    iput-object v6, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1111
    iput-object v6, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1112
    iput-object v6, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 1113
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1114
    iput v5, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1115
    iput v5, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 1116
    iput v7, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1117
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1118
    iput v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1119
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1120
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1121
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1139
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->copyFrom(Lcom/htc/home/personalize/opensense/ImageViewTouchBase;)V

    goto :goto_0

    .line 1123
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->reset()V

    .line 1124
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1125
    iput v5, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1126
    iput-object v6, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1127
    iput-object v6, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1128
    iput-object v6, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 1129
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1130
    iput v5, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1131
    iput v5, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 1132
    iput v7, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1133
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1134
    iput v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1135
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1136
    iput-boolean v4, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1137
    iput v4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    goto :goto_1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1006
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1007
    return-void
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/high16 v9, 0x3f80

    const/4 v10, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2318
    .local v2, keyCode:I
    iget-boolean v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    if-nez v7, :cond_0

    .line 2319
    const/16 v7, 0x13

    if-lt v2, v7, :cond_0

    const/16 v7, 0x16

    if-gt v2, v7, :cond_0

    .line 2321
    invoke-super {p0, v2, p1}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 2406
    :goto_0
    return v5

    .line 2325
    :cond_0
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-nez v7, :cond_1

    .line 2326
    const-string v6, "FullScreen"

    const-string v7, "[handleKeyEvent] full screen view doesn\'t assign to Image view touch"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2330
    :cond_1
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v1

    .line 2332
    .local v1, current:I
    const/4 v4, -0x2

    .line 2334
    .local v4, nextImagePos:I
    sparse-switch v2, :sswitch_data_0

    .line 2392
    :cond_2
    :goto_1
    :sswitch_0
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 2393
    const/4 v0, -0x1

    .line 2394
    .local v0, count:I
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2395
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2396
    :cond_3
    if-ltz v4, :cond_1a

    if-ge v4, v0, :cond_1a

    .line 2397
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v6

    .line 2398
    :try_start_0
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v7, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2399
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2406
    .end local v0           #count:I
    :cond_4
    :goto_2
    invoke-super {p0, v2, p1}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 2336
    :sswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2338
    const v7, 0x3f99999a

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->zoomIn(F)V

    .line 2339
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2000(Lcom/htc/home/personalize/opensense/FullScreenView;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2392
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2393
    const/4 v0, -0x1

    .line 2394
    .restart local v0       #count:I
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2395
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2396
    :cond_5
    if-ltz v4, :cond_18

    if-ge v4, v0, :cond_18

    .line 2397
    iget-object v6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v6

    .line 2398
    :try_start_2
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2399
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2392
    .end local v0           #count:I
    :cond_6
    :goto_3
    throw v7

    .line 2344
    :sswitch_2
    const/high16 v7, 0x40e0

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p0, v7, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2345
    if-nez v1, :cond_a

    move v3, v5

    .line 2346
    .local v3, maxOffset:I
    :goto_4
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v7

    cmpg-float v7, v7, v9

    if-lez v7, :cond_7

    const/4 v7, 0x1

    invoke-virtual {p0, v7, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->isShiftedToNextImage(ZI)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v7

    if-eqz v7, :cond_b

    .line 2347
    :cond_7
    add-int/lit8 v4, v1, -0x1

    .line 2392
    :goto_5
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2393
    const/4 v0, -0x1

    .line 2394
    .restart local v0       #count:I
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 2395
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2396
    :cond_8
    if-ltz v4, :cond_1d

    if-ge v4, v0, :cond_1d

    .line 2397
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v7

    .line 2398
    :try_start_4
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2399
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .end local v0           #count:I
    :cond_9
    :goto_6
    move v5, v6

    .line 2351
    goto/16 :goto_0

    .line 2345
    .end local v3           #maxOffset:I
    :cond_a
    :try_start_5
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4200()I

    move-result v3

    goto :goto_4

    .line 2349
    .restart local v3       #maxOffset:I
    :cond_b
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_5

    .line 2354
    .end local v3           #maxOffset:I
    :sswitch_3
    const/high16 v7, -0x3f20

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2355
    const/4 v0, -0x1

    .line 2357
    .restart local v0       #count:I
    if-ne v1, v10, :cond_f

    move v3, v5

    .line 2358
    .restart local v3       #maxOffset:I
    :goto_7
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v7

    cmpg-float v7, v7, v9

    if-lez v7, :cond_c

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->isShiftedToNextImage(ZI)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    if-eqz v7, :cond_10

    .line 2359
    :cond_c
    add-int/lit8 v4, v1, 0x1

    .line 2392
    :goto_8
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 2393
    const/4 v0, -0x1

    .line 2394
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 2395
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2396
    :cond_d
    if-ltz v4, :cond_1e

    if-ge v4, v0, :cond_1e

    .line 2397
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v7

    .line 2398
    :try_start_6
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2399
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :cond_e
    :goto_9
    move v5, v6

    .line 2363
    goto/16 :goto_0

    .line 2357
    .end local v3           #maxOffset:I
    :cond_f
    :try_start_7
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4200()I

    move-result v3

    goto :goto_7

    .line 2361
    .restart local v3       #maxOffset:I
    :cond_10
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_8

    .line 2366
    .end local v0           #count:I
    .end local v3           #maxOffset:I
    :sswitch_4
    const/4 v7, 0x0

    const/high16 v8, 0x40e0

    invoke-virtual {p0, v7, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2367
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2392
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 2393
    const/4 v0, -0x1

    .line 2394
    .restart local v0       #count:I
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 2395
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2396
    :cond_11
    if-ltz v4, :cond_1b

    if-ge v4, v0, :cond_1b

    .line 2397
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v7

    .line 2398
    :try_start_8
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2399
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v0           #count:I
    :cond_12
    :goto_a
    move v5, v6

    .line 2368
    goto/16 :goto_0

    .line 2371
    :sswitch_5
    const/4 v7, 0x0

    const/high16 v8, -0x3f20

    :try_start_9
    invoke-virtual {p0, v7, v8}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2372
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2392
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 2393
    const/4 v0, -0x1

    .line 2394
    .restart local v0       #count:I
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 2395
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2396
    :cond_13
    if-ltz v4, :cond_1c

    if-ge v4, v0, :cond_1c

    .line 2397
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v7

    .line 2398
    :try_start_a
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2399
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .end local v0           #count:I
    :cond_14
    :goto_b
    move v5, v6

    .line 2373
    goto/16 :goto_0

    .line 2380
    :sswitch_6
    :try_start_b
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    .line 2381
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v7

    if-nez v7, :cond_15

    .line 2382
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    .line 2383
    :cond_15
    const/high16 v7, 0x3f80

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->zoomTo(F)V

    .line 2384
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2385
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2392
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 2393
    const/4 v0, -0x1

    .line 2394
    .restart local v0       #count:I
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 2395
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2396
    :cond_16
    if-ltz v4, :cond_19

    if-ge v4, v0, :cond_19

    .line 2397
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v7

    .line 2398
    :try_start_c
    iget-object v5, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2399
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .end local v0           #count:I
    :cond_17
    :goto_c
    move v5, v6

    .line 2388
    goto/16 :goto_0

    .line 2400
    .restart local v0       #count:I
    :cond_18
    if-eq v4, v10, :cond_6

    .line 2401
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_3

    .line 2399
    :catchall_1
    move-exception v5

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v5

    .line 2400
    :cond_19
    if-eq v4, v10, :cond_17

    .line 2401
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_c

    .line 2399
    :catchall_2
    move-exception v5

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v5

    .line 2400
    :cond_1a
    if-eq v4, v10, :cond_4

    .line 2401
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_2

    .line 2399
    :catchall_3
    move-exception v5

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v5

    .line 2400
    :cond_1b
    if-eq v4, v10, :cond_12

    .line 2401
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_a

    .line 2399
    :catchall_4
    move-exception v5

    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v5

    .line 2400
    :cond_1c
    if-eq v4, v10, :cond_14

    .line 2401
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_b

    .line 2399
    :catchall_5
    move-exception v5

    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v5

    .line 2400
    .restart local v3       #maxOffset:I
    :cond_1d
    if-eq v4, v10, :cond_9

    .line 2401
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_6

    .line 2399
    :catchall_6
    move-exception v5

    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v5

    .line 2400
    :cond_1e
    if-eq v4, v10, :cond_e

    .line 2401
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_9

    .line 2399
    :catchall_7
    move-exception v5

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v5

    .line 2334
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
    .locals 46
    .parameter "m"

    .prologue
    .line 1620
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v32

    .line 1621
    .local v32, scroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    if-nez v32, :cond_0

    .line 1622
    const/16 v41, 0x1

    .line 2108
    :goto_0
    return v41

    .line 1624
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 1625
    const/16 v41, 0x1

    goto :goto_0

    .line 1628
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v41, v0

    if-eqz v41, :cond_2

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v41, v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mLeaveFullScreen:Z
    invoke-static/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1100(Lcom/htc/home/personalize/opensense/FullScreenView;)Z

    move-result v41

    if-eqz v41, :cond_2

    const/16 v41, 0x1

    goto :goto_0

    .line 1632
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v36

    .line 1633
    .local v36, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v35, v0

    .line 1634
    .local v35, viewImage:Lcom/htc/home/personalize/opensense/FullScreenView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v38

    .line 1635
    .local v38, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v39

    .line 1640
    .local v39, y:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    move/from16 v41, v0

    if-nez v41, :cond_4

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/home/personalize/opensense/Gesture;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/Gesture;->recognize(Landroid/view/MotionEvent;)I

    move-result v16

    .line 1645
    .local v16, gesture:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v41

    and-int/lit8 v41, v41, 0xf

    packed-switch v41, :pswitch_data_0

    .line 2108
    :cond_3
    :goto_2
    :pswitch_0
    const/16 v41, 0x1

    goto :goto_0

    .line 1643
    .end local v16           #gesture:I
    :cond_4
    const/16 v16, 0x1

    .restart local v16       #gesture:I
    goto :goto_1

    .line 1647
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v41

    if-nez v41, :cond_5

    .line 1649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    .line 1652
    :cond_5
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnDown:Z

    .line 1654
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 1656
    invoke-virtual/range {v32 .. v32}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v41

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    .line 1658
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v20

    .line 1659
    .local v20, matd:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v41

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartX:I

    .line 1660
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v41

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartY:I

    .line 1664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    move-object/from16 v43, v0

    const/16 v44, 0x1

    const/16 v45, 0x0

    aput v45, v43, v44

    aput v45, v41, v42

    .line 1665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v41, v0

    if-eqz v41, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v41

    if-nez v41, :cond_6

    .line 1666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v41, v0

    const/16 v42, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v43

    move/from16 v0, v43

    int-to-float v0, v0

    move/from16 v43, v0

    aput v43, v41, v42

    .line 1672
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    move-object/from16 v41, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v41, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/16 :goto_2

    .line 1669
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v43, v0

    const/16 v44, 0x1

    const/16 v45, 0x0

    aput v45, v43, v44

    aput v45, v41, v42

    goto :goto_3

    .line 1677
    .end local v20           #matd:Landroid/graphics/Matrix;
    :pswitch_2
    const/16 v41, 0x8

    move/from16 v0, v16

    move/from16 v1, v41

    if-eq v0, v1, :cond_7

    const/16 v41, 0x9

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_a

    .line 1678
    :cond_7
    const/16 v41, 0x4

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 1679
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1680
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 1708
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    move/from16 v41, v0

    packed-switch v41, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_2

    .line 1712
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v41, v0

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_9

    .line 1713
    const/16 v41, 0x3

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1715
    :cond_9
    const/16 v41, 0x4

    move/from16 v0, v16

    move/from16 v1, v41

    if-eq v0, v1, :cond_f

    .line 1716
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1681
    :cond_a
    const/16 v41, 0xd

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_b

    .line 1682
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 1683
    const/16 v41, 0x4

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 1684
    const/16 v41, 0x4

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1685
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 1687
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->invalidate()V

    goto :goto_4

    .line 1688
    :cond_b
    const/16 v41, 0xc

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_c

    .line 1689
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 1690
    const/16 v41, 0x4

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 1691
    const/16 v41, 0x5

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1692
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_4

    .line 1693
    :cond_c
    const/16 v41, 0x4

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_e

    .line 1694
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v41, v0

    const/16 v42, 0x4

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_d

    .line 1695
    const/16 v41, 0x4

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    .line 1697
    :cond_d
    const/16 v41, 0x3

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    .line 1698
    :cond_e
    const/16 v41, 0x1

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_8

    .line 1699
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    .line 1718
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/home/personalize/opensense/Gesture;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/Gesture;->getActiveBehavior()Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    move-result-object v14

    check-cast v14, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;

    .line 1719
    .local v14, dragBehavior:Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;
    invoke-virtual {v14}, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->getDistanceX()F

    move-result v41

    move/from16 v0, v41

    float-to-int v12, v0

    .line 1720
    .local v12, deltax:I
    invoke-virtual {v14}, Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;->getDistanceY()F

    move-result v41

    move/from16 v0, v41

    float-to-int v13, v0

    .line 1722
    .local v13, deltay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v41, v0

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v42

    add-int v41, v41, v42

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    .line 1724
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v41

    const/high16 v42, 0x3f80

    cmpg-float v41, v41, v42

    if-gtz v41, :cond_10

    const/16 v34, 0x1

    .line 1725
    .local v34, useOutSideScroller:Z
    :goto_5
    if-eqz v34, :cond_14

    .line 1727
    neg-int v0, v12

    move/from16 v21, v0

    .line 1728
    .local v21, move:I
    if-gez v21, :cond_11

    .line 1729
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v41

    const/16 v42, 0x0

    aget-object v41, v41, v42

    invoke-direct/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->canScroll()Z

    move-result v41

    if-nez v41, :cond_12

    .line 1730
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1724
    .end local v21           #move:I
    .end local v34           #useOutSideScroller:Z
    :cond_10
    const/16 v34, 0x0

    goto :goto_5

    .line 1732
    .restart local v21       #move:I
    .restart local v34       #useOutSideScroller:Z
    :cond_11
    if-lez v21, :cond_12

    .line 1733
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v41

    const/16 v42, 0x2

    aget-object v41, v41, v42

    invoke-direct/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->canScroll()Z

    move-result v41

    if-nez v41, :cond_12

    .line 1734
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1738
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_13

    .line 1739
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 1743
    :goto_6
    const/16 v41, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v21

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_2

    .line 1741
    :cond_13
    const/16 v41, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_6

    .line 1751
    .end local v21           #move:I
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v19

    .line 1752
    .local v19, mat:Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v23, v0

    .line 1753
    .local v23, nCurImgWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v41, v0

    const/16 v42, 0x1

    aget v41, v41, v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v42, v0

    const/16 v43, 0x1

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v22, v0

    .line 1756
    .local v22, nCurImgHeight:I
    const/16 v33, 0x0

    .line 1757
    .local v33, topBound:I
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2900()I

    move-result v41

    move/from16 v0, v22

    move/from16 v1, v41

    if-gt v0, v1, :cond_18

    const/4 v7, 0x0

    .line 1759
    .local v7, bottomBound:I
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v41

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v28, v0

    .line 1761
    .local v28, py:I
    const/16 v18, 0x0

    .line 1762
    .local v18, leftBound:I
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v41

    move/from16 v0, v23

    move/from16 v1, v41

    if-gt v0, v1, :cond_19

    const/16 v29, 0x0

    .line 1764
    .local v29, rightBound:I
    :goto_8
    const/16 v25, 0x0

    .line 1765
    .local v25, onpanx:I
    const/16 v26, 0x0

    .line 1767
    .local v26, onpany:I
    if-eqz v13, :cond_16

    .line 1789
    if-nez v7, :cond_1a

    .line 1790
    const/4 v13, 0x0

    .line 1796
    :cond_15
    :goto_9
    const/16 v41, 0x0

    int-to-float v0, v13

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1797
    move/from16 v26, v13

    .line 1800
    :cond_16
    if-eqz v12, :cond_17

    .line 1801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v41, v0

    const/16 v42, 0x2711

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartX:I

    move/from16 v41, v0

    sub-int v41, v41, v29

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_1e

    .line 1803
    invoke-virtual/range {v32 .. v32}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v11

    .line 1804
    .local v11, curOuterScrollerPosX:I
    sub-int v41, v11, v12

    move/from16 v0, v41

    int-to-float v15, v0

    .line 1805
    .local v15, finalX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_1c

    .line 1806
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 1809
    :goto_a
    if-lez v12, :cond_1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    cmpg-float v41, v15, v41

    if-gtz v41, :cond_1d

    .line 1810
    const/16 v41, 0x2715

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v41, v0

    sub-int v41, v11, v41

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    .line 1812
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-float v41, v41, v15

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    sub-float v41, v41, v15

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1926
    .end local v11           #curOuterScrollerPosX:I
    .end local v15           #finalX:F
    :cond_17
    :goto_b
    if-eqz v25, :cond_3

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v41, v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnPanListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;
    invoke-static/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4000(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;

    move-result-object v41

    if-eqz v41, :cond_3

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v41, v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnPanListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;
    invoke-static/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4000(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;->onPan(II)V

    goto/16 :goto_2

    .line 1757
    .end local v7           #bottomBound:I
    .end local v18           #leftBound:I
    .end local v25           #onpanx:I
    .end local v26           #onpany:I
    .end local v28           #py:I
    .end local v29           #rightBound:I
    :cond_18
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2900()I

    move-result v41

    sub-int v41, v22, v41

    move/from16 v0, v41

    neg-int v7, v0

    goto/16 :goto_7

    .line 1762
    .restart local v7       #bottomBound:I
    .restart local v18       #leftBound:I
    .restart local v28       #py:I
    :cond_19
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v41

    sub-int v41, v23, v41

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v29, v0

    goto/16 :goto_8

    .line 1791
    .restart local v25       #onpanx:I
    .restart local v26       #onpany:I
    .restart local v29       #rightBound:I
    :cond_1a
    add-int v41, v28, v13

    move/from16 v0, v41

    move/from16 v1, v33

    if-le v0, v1, :cond_1b

    .line 1792
    sub-int v13, v33, v28

    goto/16 :goto_9

    .line 1793
    :cond_1b
    add-int v41, v28, v13

    move/from16 v0, v41

    if-ge v0, v7, :cond_15

    .line 1794
    sub-int v13, v7, v28

    goto/16 :goto_9

    .line 1808
    .restart local v11       #curOuterScrollerPosX:I
    .restart local v15       #finalX:F
    :cond_1c
    const/16 v41, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto/16 :goto_a

    .line 1815
    :cond_1d
    neg-int v0, v12

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto :goto_b

    .line 1817
    .end local v11           #curOuterScrollerPosX:I
    .end local v15           #finalX:F
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v41, v0

    const/16 v42, 0x2712

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartX:I

    move/from16 v41, v0

    sub-int v41, v41, v18

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_21

    .line 1819
    invoke-virtual/range {v32 .. v32}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v11

    .line 1820
    .restart local v11       #curOuterScrollerPosX:I
    sub-int v15, v11, v12

    .line 1821
    .local v15, finalX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_1f

    .line 1822
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 1825
    :goto_c
    if-gez v12, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v41, v0

    move/from16 v0, v41

    if-lt v15, v0, :cond_20

    .line 1826
    const/16 v41, 0x2715

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1827
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v41, v0

    sub-int v41, v11, v41

    move/from16 v0, v41

    neg-int v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    .line 1828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v41, v0

    sub-int v41, v41, v15

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v41, v0

    sub-int v25, v41, v15

    goto/16 :goto_b

    .line 1824
    :cond_1f
    const/16 v41, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_c

    .line 1831
    :cond_20
    neg-int v0, v12

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_b

    .line 1839
    .end local v11           #curOuterScrollerPosX:I
    .end local v15           #finalX:I
    :cond_21
    if-gez v12, :cond_28

    .line 1840
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    move/from16 v41, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v42, v0

    cmpl-float v41, v41, v42

    if-lez v41, :cond_26

    .line 1843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    sub-int v42, v36, v29

    sub-int v41, v41, v42

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-gt v0, v1, :cond_22

    .line 1845
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v41, v0

    add-int v41, v41, v12

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    .line 1846
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v41, v0

    const/16 v42, -0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_23

    .line 1847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v41, v0

    add-int/lit8 v12, v41, 0xa

    .line 1851
    :cond_22
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    .line 1853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    int-to-float v0, v12

    move/from16 v42, v0

    add-float v15, v41, v42

    .line 1854
    .local v15, finalX:F
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v41, v0

    cmpg-float v41, v15, v41

    if-gtz v41, :cond_25

    .line 1855
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1856
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v42, v42, v43

    sub-float v41, v41, v42

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1859
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartX:I

    move/from16 v41, v0

    sub-int v41, v41, v29

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_17

    .line 1861
    const/16 v41, 0x2711

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1862
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_24

    .line 1863
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 1866
    :goto_d
    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v41, v0

    sub-float v41, v41, v15

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_b

    .line 1849
    .end local v15           #finalX:F
    :cond_23
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1865
    .restart local v15       #finalX:F
    :cond_24
    const/16 v41, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_d

    .line 1869
    :cond_25
    int-to-float v0, v12

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1870
    move/from16 v25, v12

    goto/16 :goto_b

    .line 1873
    .end local v15           #finalX:F
    :cond_26
    const/16 v41, 0x2711

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1874
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_27

    .line 1875
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 1878
    :goto_e
    neg-int v0, v12

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_b

    .line 1877
    :cond_27
    const/16 v41, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_e

    .line 1880
    :cond_28
    if-lez v12, :cond_17

    .line 1881
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    move/from16 v41, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v42, v0

    cmpl-float v41, v41, v42

    if-lez v41, :cond_2d

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    move/from16 v0, v41

    float-to-double v0, v0

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->floor(D)D

    move-result-wide v41

    move-wide/from16 v0, v41

    double-to-int v0, v0

    move/from16 v41, v0

    sub-int v41, v41, v29

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    const/16 v42, 0x1

    move/from16 v0, v41

    move/from16 v1, v42

    if-gt v0, v1, :cond_29

    .line 1886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v41, v0

    add-int v41, v41, v12

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    .line 1887
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-le v0, v1, :cond_2a

    .line 1888
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v41, v0

    add-int/lit8 v12, v41, -0xa

    .line 1893
    :cond_29
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDelta:I

    .line 1895
    int-to-float v0, v12

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v42, v42, v43

    add-float v15, v41, v42

    .line 1896
    .restart local v15       #finalX:F
    const/16 v41, 0x0

    cmpl-float v41, v15, v41

    if-lez v41, :cond_2c

    .line 1897
    const/16 v41, 0x2712

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    move/from16 v0, v41

    neg-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v41, v0

    const/16 v42, 0x0

    aget v41, v41, v42

    move/from16 v0, v41

    neg-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v25, v0

    .line 1902
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    move/from16 v41, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v42, v0

    cmpl-float v41, v41, v42

    if-lez v41, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mPanStartX:I

    move/from16 v41, v0

    sub-int v41, v41, v18

    invoke-static/range {v41 .. v41}, Ljava/lang/Math;->abs(I)I

    move-result v41

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_17

    .line 1903
    const/16 v41, 0x2712

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1904
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_2b

    .line 1905
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 1908
    :goto_f
    int-to-float v0, v12

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v42, v0

    const/16 v43, 0x0

    aget v42, v42, v43

    add-float v41, v41, v42

    move/from16 v0, v41

    neg-float v0, v0

    move/from16 v41, v0

    move/from16 v0, v41

    float-to-int v0, v0

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_b

    .line 1890
    .end local v15           #finalX:F
    :cond_2a
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1907
    .restart local v15       #finalX:F
    :cond_2b
    const/16 v41, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_f

    .line 1911
    :cond_2c
    int-to-float v0, v12

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1912
    move/from16 v25, v12

    goto/16 :goto_b

    .line 1915
    .end local v15           #finalX:F
    :cond_2d
    const/16 v41, 0x2712

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v41, v0

    const/16 v42, 0xa

    move/from16 v0, v41

    move/from16 v1, v42

    if-ge v0, v1, :cond_2e

    .line 1917
    const/16 v41, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    .line 1920
    :goto_10
    neg-int v0, v12

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_b

    .line 1919
    :cond_2e
    const/16 v41, 0x2

    move-object/from16 v0, v32

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_10

    .line 1931
    .end local v7           #bottomBound:I
    .end local v12           #deltax:I
    .end local v13           #deltay:I
    .end local v14           #dragBehavior:Lcom/htc/home/personalize/opensense/Gesture$DragBehavior;
    .end local v18           #leftBound:I
    .end local v19           #mat:Landroid/graphics/Matrix;
    .end local v22           #nCurImgHeight:I
    .end local v23           #nCurImgWidth:I
    .end local v25           #onpanx:I
    .end local v26           #onpany:I
    .end local v28           #py:I
    .end local v29           #rightBound:I
    .end local v33           #topBound:I
    .end local v34           #useOutSideScroller:Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v41

    if-nez v41, :cond_2f

    .line 1932
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1934
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v41, v0

    if-eqz v41, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v41, v0

    const/16 v42, 0x2712

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    move/from16 v41, v0

    const/16 v42, 0x2711

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_31

    .line 1938
    :cond_30
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1941
    :cond_31
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v41, v0

    const/16 v42, 0x4

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_32

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v41, v0

    const/16 v42, 0x5

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_34

    .line 1943
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 1947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    move/from16 v41, v0

    const/16 v42, 0x1e

    move/from16 v0, v41

    move/from16 v1, v42

    if-gt v0, v1, :cond_33

    .line 1948
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1950
    :cond_33
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 1951
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1952
    const/16 v41, 0x1

    goto/16 :goto_0

    .line 1957
    :cond_34
    const v6, 0x3c1374bc

    .line 1958
    .local v6, LOW_BOUND:F
    const v4, 0x3dcccccd

    .line 1959
    .local v4, HIGH_BOUND:F
    const/high16 v5, 0x4316

    .line 1960
    .local v5, LEVEL:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/home/personalize/opensense/Gesture;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/Gesture;->getActiveBehavior()Lcom/htc/home/personalize/opensense/Gesture$IBehavior;

    move-result-object v40

    check-cast v40, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;

    .line 1962
    .local v40, zoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;
    invoke-virtual/range {v40 .. v40}, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->weight()F

    move-result v37

    .line 1963
    .local v37, weight:F
    invoke-virtual/range {v40 .. v40}, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->getCenterX()F

    move-result v41

    move/from16 v0, v41

    float-to-int v8, v0

    .line 1964
    .local v8, centerX:I
    invoke-virtual/range {v40 .. v40}, Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;->getCenterY()F

    move-result v41

    move/from16 v0, v41

    float-to-int v9, v0

    .line 1965
    .local v9, centerY:I
    const/high16 v41, 0x4316

    div-float v37, v37, v41

    .line 1966
    const v41, 0x3dcccccd

    cmpl-float v41, v37, v41

    if-lez v41, :cond_35

    const v37, 0x3dcccccd

    .line 1967
    :cond_35
    const v41, 0x3c1374bc

    cmpg-float v41, v37, v41

    if-lez v41, :cond_3

    .line 1970
    const/high16 v30, 0x3f80

    .line 1971
    .local v30, scale:F
    const/16 v41, 0x8

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_37

    .line 1972
    const/16 v41, 0x1

    const/16 v42, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v41

    move/from16 v2, v42

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2000(Lcom/htc/home/personalize/opensense/FullScreenView;ZZ)V

    .line 1974
    const/high16 v41, 0x3f80

    add-float v30, v37, v41

    .line 1988
    :cond_36
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v27

    .line 1990
    .local v27, prevScale:F
    int-to-float v0, v8

    move/from16 v41, v0

    int-to-float v0, v9

    move/from16 v42, v0

    move-object/from16 v0, p0

    move/from16 v1, v30

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->zoomInAt(FFF)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v41, v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v41

    if-eqz v41, :cond_3

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v41, v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnZoomListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;
    invoke-static/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3800(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;

    move-result-object v41

    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v42

    move-object/from16 v0, v41

    move/from16 v1, v27

    move/from16 v2, v42

    invoke-interface {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$OnZoomListener;->onPinchZoom(FF)V

    goto/16 :goto_2

    .line 1979
    .end local v27           #prevScale:F
    :cond_37
    const/16 v41, 0x9

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_36

    .line 1980
    const/high16 v41, 0x3f80

    sub-float v30, v41, v37

    .line 1981
    const/high16 v41, 0x3f80

    cmpg-float v41, v30, v41

    if-gtz v41, :cond_36

    goto :goto_11

    .line 1998
    .end local v4           #HIGH_BOUND:F
    .end local v5           #LEVEL:F
    .end local v6           #LOW_BOUND:F
    .end local v8           #centerX:I
    .end local v9           #centerY:I
    .end local v30           #scale:F
    .end local v37           #weight:F
    .end local v40           #zoomBehavior:Lcom/htc/home/personalize/opensense/Gesture$ZoomBehavior;
    :pswitch_6
    const/16 v41, 0xd

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_3

    .line 1999
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v41

    const/high16 v42, 0x3f80

    cmpg-float v41, v41, v42

    if-gtz v41, :cond_38

    .line 2001
    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2004
    :cond_38
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 2005
    const/16 v41, 0x4

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 2006
    const/16 v41, 0x4

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 2007
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 2009
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->invalidate()V

    goto/16 :goto_2

    .line 2015
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnDown:Z

    move/from16 v41, v0

    if-eqz v41, :cond_3

    .line 2017
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnDown:Z

    .line 2019
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollDelta:I

    .line 2021
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    move/from16 v41, v0

    const/16 v42, 0x3

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_3a

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getZoomStatus()I

    move-result v41

    if-eqz v41, :cond_39

    .line 2023
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 2024
    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v41

    const/high16 v42, 0x3f80

    cmpl-float v41, v41, v42

    if-lez v41, :cond_3a

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v41, v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnPanListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;
    invoke-static/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4000(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;

    move-result-object v41

    if-eqz v41, :cond_3a

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    move-object/from16 v41, v0

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mOnPanListener:Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;
    invoke-static/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4000(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;

    move-result-object v41

    invoke-interface/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView$OnPanListener;->onPanEnd()V

    .line 2035
    :cond_3a
    const/16 v41, 0xd

    move/from16 v0, v16

    move/from16 v1, v41

    if-eq v0, v1, :cond_3

    .line 2040
    const/16 v24, -0x1

    .line 2042
    .local v24, nextImagePos:I
    invoke-virtual/range {v32 .. v32}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v41

    if-eqz v41, :cond_3e

    .line 2043
    const/high16 v17, 0x40a0

    .line 2046
    .local v17, hedge:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/home/personalize/opensense/Gesture;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/Gesture;->getDragDistanceX()F

    move-result v31

    .line 2048
    .local v31, scrollDiffX:F
    cmpl-float v41, v31, v17

    if-lez v41, :cond_3d

    .line 2049
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v41

    add-int/lit8 v24, v41, 0x1

    .line 2065
    .end local v17           #hedge:F
    .end local v31           #scrollDiffX:F
    :cond_3b
    :goto_12
    const/4 v10, -0x1

    .line 2067
    .local v10, count:I
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v10

    .line 2072
    if-ltz v24, :cond_41

    move/from16 v0, v24

    if-ge v0, v10, :cond_41

    .line 2073
    monitor-enter v35

    .line 2074
    const/16 v41, 0x1

    :try_start_0
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollImage:Z

    .line 2077
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3500(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    move-result-object v41

    if-eqz v41, :cond_3c

    .line 2078
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mHQDecodeTh:Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$3500(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/htc/home/personalize/opensense/FullScreenView$HQDecodeThread;->cancel()V

    .line 2081
    :cond_3c
    const/16 v41, 0x1

    move-object/from16 v0, v35

    move/from16 v1, v24

    move/from16 v2, v41

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2086
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 2088
    monitor-exit v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2097
    :goto_13
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 2098
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 2099
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_2

    .line 2050
    .end local v10           #count:I
    .restart local v17       #hedge:F
    .restart local v31       #scrollDiffX:F
    :cond_3d
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v41, v0

    cmpg-float v41, v31, v41

    if-gez v41, :cond_3b

    .line 2051
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v41

    add-int/lit8 v24, v41, -0x1

    goto :goto_12

    .line 2055
    .end local v17           #hedge:F
    .end local v31           #scrollDiffX:F
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v41

    const/high16 v42, 0x3f80

    cmpl-float v41, v41, v42

    if-lez v41, :cond_3f

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v41

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v42

    div-int/lit8 v42, v42, 0x3

    add-int v17, v41, v42

    .line 2056
    .local v17, hedge:I
    :goto_14
    invoke-virtual/range {v32 .. v32}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v41

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v42, v0

    sub-int v31, v41, v42

    .line 2058
    .local v31, scrollDiffX:I
    move/from16 v0, v31

    move/from16 v1, v17

    if-le v0, v1, :cond_40

    .line 2059
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v41

    add-int/lit8 v24, v41, 0x1

    goto/16 :goto_12

    .line 2055
    .end local v17           #hedge:I
    .end local v31           #scrollDiffX:I
    :cond_3f
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$600()I

    move-result v41

    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$500()I

    move-result v42

    div-int/lit8 v42, v42, 0x6

    add-int v17, v41, v42

    goto :goto_14

    .line 2060
    .restart local v17       #hedge:I
    .restart local v31       #scrollDiffX:I
    :cond_40
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v41, v0

    move/from16 v0, v31

    move/from16 v1, v41

    if-ge v0, v1, :cond_3b

    .line 2061
    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v35 .. v35}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v41

    add-int/lit8 v24, v41, -0x1

    goto/16 :goto_12

    .line 2088
    .end local v17           #hedge:I
    .end local v31           #scrollDiffX:I
    .restart local v10       #count:I
    :catchall_0
    move-exception v41

    :try_start_1
    monitor-exit v35
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v41

    .line 2090
    :cond_41
    const/16 v41, 0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 2095
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4100()I

    move-result v41

    const/16 v42, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->startScrollTo(II)V

    goto/16 :goto_13

    .line 2103
    .end local v10           #count:I
    .end local v24           #nextImagePos:I
    :pswitch_8
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 2104
    const/16 v41, 0x0

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 2105
    const/16 v41, -0x1

    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_2

    .line 1645
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

    .line 1708
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
    .parameter "m"

    .prologue
    const/high16 v13, 0x4220

    const/4 v11, 0x0

    const/4 v12, -0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2415
    iget-boolean v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    if-nez v9, :cond_0

    .line 2468
    :goto_0
    return v7

    .line 2419
    :cond_0
    iget-object v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-nez v9, :cond_1

    .line 2420
    const-string v8, "FullScreen"

    const-string v9, "[handleTrackballEvent] full screen view doesn\'t assign to Image view touch"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2424
    :cond_1
    iget-object v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mCurrentPosition:I
    invoke-static {v9}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$700(Lcom/htc/home/personalize/opensense/FullScreenView;)I

    move-result v1

    .line 2425
    .local v1, current:I
    const/4 v3, -0x2

    .line 2426
    .local v3, nextImagePos:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v4

    .line 2427
    .local v4, scroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    if-nez v4, :cond_2

    move v7, v8

    .line 2428
    goto :goto_0

    .line 2431
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 2458
    const/4 v0, -0x1

    .line 2459
    .local v0, count:I
    iget-object v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2460
    if-ltz v3, :cond_11

    if-ge v3, v0, :cond_11

    .line 2461
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v8

    .line 2462
    :try_start_1
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v9, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v9}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2463
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2468
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 2434
    .end local v0           #count:I
    :pswitch_0
    :try_start_2
    invoke-virtual {v4}, Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;->isScrolling()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    .line 2458
    const/4 v0, -0x1

    .line 2459
    .restart local v0       #count:I
    iget-object v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2460
    if-ltz v3, :cond_f

    if-ge v3, v0, :cond_f

    .line 2461
    iget-object v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v9

    .line 2462
    :try_start_3
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2463
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_4
    :goto_2
    move v7, v8

    .line 2435
    goto :goto_0

    .line 2436
    .end local v0           #count:I
    :cond_5
    :try_start_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 2437
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 2442
    .local v6, y:F
    neg-float v9, v5

    mul-float/2addr v9, v13

    neg-float v10, v6

    mul-float/2addr v10, v13

    invoke-virtual {p0, v9, v10}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2443
    const/4 v0, -0x1

    .line 2444
    .restart local v0       #count:I
    iget-object v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2445
    add-int/lit8 v9, v0, -0x1

    if-ne v1, v9, :cond_9

    move v2, v7

    .line 2446
    .local v2, maxOffset:I
    :goto_3
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getScale()F

    move-result v9

    const/high16 v10, 0x3f80

    cmpg-float v9, v9, v10

    if-lez v9, :cond_6

    cmpl-float v9, v5, v11

    if-lez v9, :cond_a

    move v9, v7

    :goto_4
    invoke-virtual {p0, v9, v2}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->isShiftedToNextImage(ZI)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 2447
    :cond_6
    cmpl-float v9, v5, v11

    if-lez v9, :cond_b

    .line 2448
    add-int/lit8 v3, v1, 0x1

    .line 2451
    :cond_7
    :goto_5
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2458
    :goto_6
    const/4 v0, -0x1

    .line 2459
    iget-object v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2460
    if-ltz v3, :cond_10

    if-ge v3, v0, :cond_10

    .line 2461
    iget-object v9, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v9

    .line 2462
    :try_start_5
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2463
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_8
    :goto_7
    move v7, v8

    .line 2455
    goto/16 :goto_0

    .line 2445
    .end local v2           #maxOffset:I
    :cond_9
    :try_start_6
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$4200()I

    move-result v2

    goto :goto_3

    .restart local v2       #maxOffset:I
    :cond_a
    move v9, v8

    .line 2446
    goto :goto_4

    .line 2449
    :cond_b
    cmpg-float v9, v5, v11

    if-gez v9, :cond_7

    .line 2450
    add-int/lit8 v3, v1, -0x1

    goto :goto_5

    .line 2453
    :cond_c
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 2458
    .end local v0           #count:I
    .end local v2           #maxOffset:I
    .end local v5           #x:F
    .end local v6           #y:F
    :catchall_0
    move-exception v9

    const/4 v0, -0x1

    .line 2459
    .restart local v0       #count:I
    iget-object v10, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v10}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$900(Lcom/htc/home/personalize/opensense/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2460
    if-ltz v3, :cond_e

    if-ge v3, v0, :cond_e

    .line 2461
    iget-object v8, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    monitor-enter v8

    .line 2462
    :try_start_7
    iget-object v7, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1700(Lcom/htc/home/personalize/opensense/FullScreenView;IZ)V

    .line 2463
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2458
    :cond_d
    :goto_8
    throw v9

    .line 2464
    :cond_e
    if-eq v3, v12, :cond_d

    .line 2465
    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_8

    .line 2463
    :catchall_1
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v7

    .line 2464
    :cond_f
    if-eq v3, v12, :cond_4

    .line 2465
    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_2

    .line 2463
    :catchall_2
    move-exception v7

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v7

    .line 2464
    .restart local v2       #maxOffset:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_10
    if-eq v3, v12, :cond_8

    .line 2465
    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_7

    .line 2463
    :catchall_3
    move-exception v7

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v7

    .line 2464
    .end local v2           #maxOffset:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_11
    if-eq v3, v12, :cond_3

    .line 2465
    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_1

    .line 2463
    :catchall_4
    move-exception v7

    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v7

    .line 2431
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected isShiftedToNextImage(ZI)Z
    .locals 8
    .parameter "left"
    .parameter "maxOffset"

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 2473
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 2474
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 2475
    .local v1, m:Landroid/graphics/Matrix;
    if-eqz p1, :cond_1

    .line 2476
    new-array v3, v6, [F

    fill-array-data v3, :array_0

    .line 2477
    .local v3, t1:[F
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2478
    aget v6, v3, v5

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 2485
    .local v2, retval:Z
    :goto_0
    return v2

    .end local v2           #retval:Z
    :cond_0
    move v2, v5

    .line 2478
    goto :goto_0

    .line 2480
    .end local v3           #t1:[F
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2481
    .local v4, width:I
    :goto_1
    new-array v3, v6, [F

    int-to-float v6, v4

    aput v6, v3, v5

    const/4 v6, 0x0

    aput v6, v3, v2

    .line 2482
    .restart local v3       #t1:[F
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2483
    aget v6, v3, v5

    int-to-float v7, p2

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .restart local v2       #retval:Z
    :goto_2
    goto :goto_0

    .line 2480
    .end local v2           #retval:Z
    .end local v3           #t1:[F
    .end local v4           #width:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v4

    goto :goto_1

    .restart local v3       #t1:[F
    .restart local v4       #width:I
    :cond_3
    move v2, v5

    .line 2483
    goto :goto_2

    .line 2476
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-nez v0, :cond_1

    .line 2533
    :cond_0
    :goto_0
    return-void

    .line 2497
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->drawDrmFileName(Landroid/graphics/Canvas;)V

    .line 2498
    iget v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2499
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->drawCorruptIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2501
    :cond_2
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->disableDrawing:Z

    if-nez v0, :cond_0

    .line 2502
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2505
    sget-wide v0, Lcom/htc/home/personalize/opensense/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 2507
    invoke-direct {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->doPinchZoomBouceBack()V

    .line 2508
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->doScrollBounceBack(Landroid/graphics/Canvas;)V

    .line 2509
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 2521
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->drawVideoIndicator(Landroid/graphics/Canvas;)V

    .line 2522
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->drawDrmSmallIndicator(Landroid/graphics/Canvas;)V

    .line 2523
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->drawLoadedIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2515
    :cond_4
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->drawZoomImgDirectlyByMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2517
    invoke-super {p0, p1}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 2525
    :cond_5
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v0, :cond_6

    .line 2526
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->drawDrmBigIndicator(Landroid/graphics/Canvas;)V

    .line 2528
    :cond_6
    invoke-direct {p0, p1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->drawLoadedIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public orientationCompensation()V
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1229
    iget-object v10, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v10, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return-void

    .line 1231
    :cond_1
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 1232
    .local v6, mat:Landroid/graphics/Matrix;
    if-eqz v6, :cond_0

    .line 1234
    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1236
    new-array v8, v11, [F

    fill-array-data v8, :array_0

    .line 1237
    .local v8, tl:[F
    new-array v1, v11, [F

    iget-object v10, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v1, v12

    iget-object v10, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    aput v10, v1, v13

    .line 1238
    .local v1, br:[F
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1239
    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1240
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v9

    .line 1241
    .local v9, w:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    .line 1242
    .local v5, h:I
    aget v10, v1, v12

    aget v11, v8, v12

    sub-float/2addr v10, v11

    float-to-int v2, v10

    .line 1243
    .local v2, bw:I
    aget v10, v1, v13

    aget v11, v8, v13

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 1244
    .local v0, bh:I
    const/4 v3, 0x0

    .line 1245
    .local v3, deltaX:I
    const/4 v4, 0x0

    .line 1246
    .local v4, deltaY:I
    if-le v0, v5, :cond_4

    .line 1247
    aget v10, v8, v13

    cmpl-float v10, v10, v14

    if-lez v10, :cond_3

    .line 1248
    aget v10, v8, v13

    float-to-int v4, v10

    .line 1258
    :goto_1
    if-le v2, v9, :cond_6

    .line 1259
    aget v10, v8, v12

    cmpl-float v10, v10, v14

    if-lez v10, :cond_5

    .line 1260
    aget v10, v8, v12

    float-to-int v3, v10

    .line 1271
    :goto_2
    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    .line 1272
    :cond_2
    neg-int v10, v3

    int-to-float v10, v10

    neg-int v11, v4

    int-to-float v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->panBy(FF)V

    goto :goto_0

    .line 1250
    :cond_3
    aget v10, v1, v13

    float-to-int v10, v10

    sub-int v4, v10, v5

    .line 1251
    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 1255
    :cond_4
    sub-int v10, v5, v0

    div-int/lit8 v7, v10, 0x2

    .line 1256
    .local v7, pos:I
    aget v10, v8, v13

    float-to-int v10, v10

    sub-int v4, v10, v7

    goto :goto_1

    .line 1262
    .end local v7           #pos:I
    :cond_5
    aget v10, v1, v12

    float-to-int v10, v10

    sub-int v3, v10, v9

    .line 1263
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 1267
    :cond_6
    sub-int v10, v9, v2

    div-int/lit8 v7, v10, 0x2

    .line 1268
    .restart local v7       #pos:I
    aget v10, v8, v12

    float-to-int v10, v10

    sub-int v3, v10, v7

    goto :goto_2

    .line 1236
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected postTranslate(FFZ)V
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "bounceOK"

    .prologue
    const/4 v1, 0x0

    .line 997
    invoke-super {p0, p1, p2}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->postTranslate(FF)V

    .line 1000
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->center(ZZZ)V

    .line 1002
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2739
    invoke-super {p0}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->release()V

    .line 2740
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v0, :cond_0

    .line 2741
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 2743
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2744
    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 2746
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1050
    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1051
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1052
    iput v1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriH:I

    .line 1053
    iput v1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriW:I

    .line 1054
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1055
    iput-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 1056
    iput-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1057
    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1058
    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 1060
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1061
    iput-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1062
    iput-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1063
    iput-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1064
    iput-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1065
    iput v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1066
    return-void
.end method

.method protected scrollHandler()Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mScroller:Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$400(Lcom/htc/home/personalize/opensense/FullScreenView;)Lcom/htc/home/personalize/opensense/FullScreenView$ScrollHandler;

    move-result-object v0

    .line 1013
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDebugId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1018
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->DEBUGID:I

    .line 1019
    return-void
.end method

.method public setDrmInfo(ZIZZI)V
    .locals 4
    .parameter "isDrm"
    .parameter "drmType"
    .parameter "expired"
    .parameter "isDrmThumb"
    .parameter "frameCount"

    .prologue
    const/4 v3, 0x1

    .line 1162
    iput-boolean p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1163
    iput-boolean p3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1164
    iput p2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1165
    iput-boolean p4, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1166
    iget-boolean v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v1, :cond_0

    .line 1167
    const/4 v0, -0x1

    .line 1168
    .local v0, charPos:I
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1169
    :goto_0
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1170
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    goto :goto_0

    .line 1175
    .end local v0           #charPos:I
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    if-le p5, v3, :cond_1

    .line 1177
    iput v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 1180
    :cond_1
    return-void
.end method

.method public setEnableTrackballScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 985
    iput-boolean p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    .line 986
    return-void
.end method

.method public setHQBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 942
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->changeDrawMode(I)V

    .line 943
    invoke-virtual {p0, p1, v1, v1}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mHQLoaded:Z

    .line 945
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V
    .locals 2
    .parameter "bitmap"
    .parameter "resetSupp"
    .parameter "isThumb"

    .prologue
    .line 1029
    if-eqz p3, :cond_1

    .line 1030
    iget-boolean v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz v0, :cond_1

    .line 1031
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 1035
    :cond_0
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 1038
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 1039
    sget-boolean v0, Lcom/htc/home/personalize/opensense/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v0, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->name:Ljava/lang/String;

    const-string v1, "image2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1041
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->showOnScreenControls()V
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2700(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    .line 1044
    :cond_2
    return-void
.end method

.method public setImageInfo(Ljava/lang/String;IIIZZ)V
    .locals 4
    .parameter "mimeType"
    .parameter "index"
    .parameter "oriWidth"
    .parameter "oriHeight"
    .parameter "isCorrupt"
    .parameter "isExif"

    .prologue
    const/4 v3, 0x1

    .line 1192
    iput p2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1193
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1194
    iput p3, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriW:I

    .line 1195
    iput p4, p0, Lcom/htc/home/personalize/opensense/ImageViewTouchBase;->mBitmapOriH:I

    .line 1196
    iput-boolean p6, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1197
    if-eqz p5, :cond_1

    .line 1198
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 1199
    iput-boolean v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    .line 1202
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1204
    iput v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    goto :goto_0

    .line 1205
    :cond_2
    iget-object v1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1206
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2800()Landroid/webkit/GIFImageParser;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/webkit/GIFImageParser;->SetData(Ljava/lang/String;)V

    .line 1207
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2800()Landroid/webkit/GIFImageParser;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/GIFImageParser;->frameCount()I

    move-result v0

    .line 1208
    .local v0, frameCount:I
    if-le v0, v3, :cond_0

    .line 1209
    iput v3, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mType:I

    goto :goto_0
.end method

.method public setOnlineIndicator(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1150
    iput p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1151
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "dataPath"

    .prologue
    .line 2753
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 2754
    return-void
.end method

.method public setView(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 993
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/home/personalize/opensense/FullScreenView;

    .line 994
    return-void
.end method

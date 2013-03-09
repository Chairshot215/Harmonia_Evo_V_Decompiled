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
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 1035
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;)V

    .line 916
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 917
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 918
    new-instance v0, Lcom/htc/opensense/widget/Gesture;

    invoke-direct {v0}, Lcom/htc/opensense/widget/Gesture;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    .line 920
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    .line 928
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    .line 940
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 941
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    .line 942
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 947
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->DEBUGID:I

    .line 958
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 965
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    .line 966
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    .line 969
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSingleTapUp:Z

    .line 973
    const v0, 0x3d8f5c29

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    .line 974
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollImage:Z

    .line 980
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 981
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    .line 982
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 992
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    .line 993
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartY:I

    .line 994
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    .line 997
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    .line 998
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    .line 999
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    .line 1231
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1232
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 1036
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    .line 1037
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setup()V

    .line 1038
    return-void

    .line 998
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

    .line 1044
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 916
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 917
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 918
    new-instance v0, Lcom/htc/opensense/widget/Gesture;

    invoke-direct {v0}, Lcom/htc/opensense/widget/Gesture;-><init>()V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    .line 920
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    .line 928
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    .line 940
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 941
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    .line 942
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 947
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->DEBUGID:I

    .line 958
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 965
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    .line 966
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    .line 969
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSingleTapUp:Z

    .line 973
    const v0, 0x3d8f5c29

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    .line 974
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollImage:Z

    .line 980
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 981
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    .line 982
    iput-boolean v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 992
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartX:I

    .line 993
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanStartY:I

    .line 994
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    .line 997
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    .line 998
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    .line 999
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    .line 1231
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1232
    iput v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 1045
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-direct {v0, p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    .line 1046
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setup()V

    .line 1047
    return-void

    .line 998
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$1000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    return v0
.end method

.method static synthetic access$2700(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->startDecodeHQ()V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    return p1
.end method

.method static synthetic access$4002(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 896
    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 896
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->onDoubleClick(FF)V

    return-void
.end method

.method static synthetic access$6000(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    return v0
.end method

.method static synthetic access$6100(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    return v0
.end method

.method private action2Str(I)Ljava/lang/String;
    .locals 1
    .parameter "action"

    .prologue
    .line 1594
    packed-switch p1, :pswitch_data_0

    .line 1606
    const-string v0, "unknown action"

    :goto_0
    return-object v0

    .line 1596
    :pswitch_0
    const-string v0, "action down"

    goto :goto_0

    .line 1598
    :pswitch_1
    const-string v0, "action up"

    goto :goto_0

    .line 1600
    :pswitch_2
    const-string v0, "action move"

    goto :goto_0

    .line 1602
    :pswitch_3
    const-string v0, "action cancel"

    goto :goto_0

    .line 1604
    :pswitch_4
    const-string v0, "action outside"

    goto :goto_0

    .line 1594
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
    .line 2243
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getZoomStatus()I

    move-result v4

    .line 2244
    .local v4, zoomStatus:I
    const/high16 v3, 0x3f80

    .line 2245
    .local v3, stop:F
    const/high16 v2, 0x4396

    .line 2246
    .local v2, duration:F
    packed-switch v4, :pswitch_data_0

    .line 2260
    :goto_0
    return-void

    .line 2248
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v3

    .line 2249
    iget v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mLastZoomCenterX:F

    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mLastZoomCenterY:F

    invoke-virtual {p0, v3, v5, v6, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    .line 2254
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .line 2255
    .local v0, centerX:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 2256
    .local v1, centerY:I
    const/high16 v3, 0x3f80

    .line 2257
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p0, v3, v5, v6, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    .line 2246
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private caculateZoomDelta()V
    .locals 7

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v0

    .line 1005
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

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDeltaZoomRate:F

    .line 1006
    return-void
.end method

.method private canScroll()Z
    .locals 3

    .prologue
    .line 1626
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1627
    :cond_0
    const-string v1, "FullScreen"

    const-string v2, "[canScroll] view image not assign to image view touch"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    const/4 v0, 0x0

    .line 1652
    :cond_1
    :goto_0
    return v0

    .line 1631
    :cond_2
    const/4 v0, 0x0

    .line 1633
    .local v0, canScroll:Z
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1634
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnScrollListener:Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$200(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;->canScroll()Z

    move-result v0

    .line 1636
    :cond_3
    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    if-eqz v1, :cond_4

    .line 1637
    const/4 v0, 0x1

    .line 1639
    :cond_4
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1640
    const/4 v0, 0x1

    .line 1642
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

    .line 1643
    :cond_6
    const/4 v0, 0x1

    .line 1645
    :cond_7
    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v1, :cond_8

    .line 1646
    const/4 v0, 0x1

    .line 1648
    :cond_8
    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1649
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private changeDrawMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1009
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1010
    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1011
    :cond_0
    return-void
.end method

.method private detectTapIn(Landroid/graphics/Bitmap;FF)Z
    .locals 5
    .parameter "b"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x0

    .line 1365
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1369
    :cond_0
    :goto_0
    return v2

    .line 1367
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    .line 1368
    .local v1, mScreenW:I
    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v0

    .line 1369
    .local v0, mScreenH:I
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

    .prologue
    const/4 v13, 0x1

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    .line 2724
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    .line 2725
    .local v2, mScreenW:I
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    .line 2727
    .local v1, mScreenH:I
    iget-boolean v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    if-eqz v8, :cond_2

    .line 2728
    const/high16 v6, 0x3f80

    .line 2729
    .local v6, scale:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v8

    cmpg-float v8, v8, v12

    if-gez v8, :cond_4

    .line 2730
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v9

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    mul-float/2addr v9, v10

    add-float v4, v8, v9

    .line 2731
    .local v4, nextScale:F
    cmpg-float v8, v4, v12

    if-gez v8, :cond_3

    .line 2732
    move v6, v4

    .line 2738
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSuppMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v1, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v6, v6, v9, v10}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 2739
    invoke-virtual {p0, v11, v13, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    .line 2755
    .end local v4           #nextScale:F
    :cond_1
    :goto_1
    iget-boolean v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2756
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onPinchZoomEnd()V

    .line 2758
    .end local v6           #scale:F
    :cond_2
    return-void

    .line 2733
    .restart local v4       #nextScale:F
    .restart local v6       #scale:F
    :cond_3
    cmpl-float v8, v4, v12

    if-ltz v8, :cond_0

    .line 2734
    const/high16 v6, 0x3f80

    .line 2735
    iput-boolean v11, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    goto :goto_0

    .line 2740
    .end local v4           #nextScale:F
    :cond_4
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v8

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 2741
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v5

    .line 2742
    .local v5, oldScale:F
    iget v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPinchZoomBounceInterval:F

    mul-float/2addr v8, v5

    sub-float v7, v5, v8

    .line 2744
    .local v7, target:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v8

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_5

    .line 2745
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getMaxZoom()F

    move-result v7

    .line 2746
    iput-boolean v11, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 2748
    :cond_5
    div-float v0, v7, v5

    .line 2749
    .local v0, deltaScale:F
    mul-float v3, v5, v0

    .line 2751
    .local v3, nextSale:F
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSuppMatrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mLastZoomCenterX:F

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mLastZoomCenterY:F

    invoke-virtual {v8, v0, v0, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 2753
    invoke-virtual {p0, v11, v13, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

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

    .line 2761
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 2762
    .local v1, mat:Landroid/graphics/Matrix;
    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_0

    iput-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    .line 2763
    const/4 v6, 0x2

    new-array v6, v6, [F

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v10

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v8

    iput-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    .line 2764
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2765
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    invoke-virtual {v1, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2767
    iget-boolean v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    if-nez v6, :cond_1

    .line 2807
    :cond_0
    :goto_0
    return-void

    .line 2769
    :cond_1
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getSkewX(Landroid/graphics/Matrix;)F

    move-result v2

    .line 2770
    .local v2, skewX:F
    invoke-virtual {p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getSkewY(Landroid/graphics/Matrix;)F

    move-result v3

    .line 2771
    .local v3, skewY:F
    const/4 v0, 0x0

    .line 2772
    .local v0, deltaY:F
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v6

    int-to-float v4, v6

    .line 2774
    .local v4, viewHeight:F
    cmpl-float v6, v2, v9

    if-nez v6, :cond_2

    cmpl-float v6, v3, v9

    if-eqz v6, :cond_6

    .line 2776
    :cond_2
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v10

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    .line 2777
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    .line 2778
    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_4

    .line 2779
    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    sub-float v6, v4, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v7, v7, v8

    sub-float v0, v6, v7

    .line 2797
    :cond_3
    :goto_1
    cmpl-float v6, v0, v9

    if-eqz v6, :cond_0

    .line 2799
    cmpl-float v6, v0, v9

    if-lez v6, :cond_a

    .line 2800
    mul-float v6, v0, v11

    cmpg-float v6, v6, v9

    if-gez v6, :cond_9

    :goto_2
    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0, v9, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    goto :goto_0

    .line 2780
    :cond_4
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_5

    .line 2781
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    neg-float v0, v6

    goto :goto_1

    .line 2782
    :cond_5
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    .line 2783
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    sub-float v0, v4, v6

    goto :goto_1

    .line 2787
    :cond_6
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    .line 2788
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v10

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v10

    sub-float/2addr v6, v7

    iput v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    .line 2789
    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    cmpg-float v6, v6, v4

    if-gez v6, :cond_7

    .line 2790
    iget v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapHeight:F

    sub-float v6, v4, v6

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v7, v7, v8

    sub-float v0, v6, v7

    goto :goto_1

    .line 2791
    :cond_7
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    cmpl-float v6, v6, v9

    if-lez v6, :cond_8

    .line 2792
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    aget v6, v6, v8

    neg-float v0, v6

    goto :goto_1

    .line 2793
    :cond_8
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    cmpg-float v6, v6, v4

    if-gez v6, :cond_3

    .line 2794
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    aget v6, v6, v8

    sub-float v0, v4, v6

    goto :goto_1

    .line 2800
    :cond_9
    mul-float v5, v0, v11

    goto :goto_2

    .line 2803
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

    .line 2762
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
    .line 2713
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2714
    .local v0, viewImage:Lcom/htc/opensense/widget/FullScreenView;
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

    .line 2721
    :cond_0
    :goto_0
    return-void

    .line 2717
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
    .parameter "canvas"

    .prologue
    .line 2857
    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2859
    .local v3, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    .line 2860
    .local v2, mScreenW:I
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    .line 2862
    .local v1, mScreenH:I
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

    .line 2888
    :cond_0
    return-void

    .line 2865
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

    .line 2869
    sget-boolean v4, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_WMDRM:Z

    if-eqz v4, :cond_2

    const-string v4, "video/x-wmv-drm"

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2873
    :cond_2
    if-le v1, v2, :cond_3

    .line 2874
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5100(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 2875
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

    .line 2874
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2881
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5400(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 2882
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

    .line 2881
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawDrmFileName(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 2891
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmMsgPaint:Landroid/graphics/Paint;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$5300(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Paint;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2894
    :cond_0
    :goto_0
    return-void

    .line 2893
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
    .parameter "canvas"

    .prologue
    .line 2823
    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2824
    .local v3, viewImage:Lcom/htc/opensense/widget/FullScreenView;
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

    .line 2854
    :cond_0
    return-void

    .line 2828
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

    .line 2830
    sget-boolean v4, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_WMDRM:Z

    if-eqz v4, :cond_2

    const-string v4, "video/x-wmv-drm"

    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2833
    :cond_2
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v2

    .line 2834
    .local v2, mScreenW:I
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    .line 2837
    .local v1, mScreenH:I
    iget-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    if-eqz v4, :cond_0

    .line 2838
    if-le v1, v2, :cond_3

    .line 2839
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgPortrait:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5100(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 2840
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

    .line 2839
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2846
    .end local v0           #i:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mDrmTapToViewMsgLandscape:[Ljava/lang/Object;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$5400(Lcom/htc/opensense/widget/FullScreenView;)[Ljava/lang/Object;

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 2847
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

    .line 2846
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private drawLoadedIndicator(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/16 v3, 0x8

    .line 2897
    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    if-ne v2, v3, :cond_1

    .line 2914
    :cond_0
    :goto_0
    return-void

    .line 2900
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2901
    .local v1, viewImage:Lcom/htc/opensense/widget/FullScreenView;
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

    .line 2904
    const/4 v0, 0x0

    .line 2905
    .local v0, indicator:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 2906
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLoadingIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$5700(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2911
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

    .line 2907
    :cond_3
    iget v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 2908
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCorruptIndicator:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4800(Lcom/htc/opensense/widget/FullScreenView;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method private drawVideoIndicator(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 2810
    iget v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 2820
    :cond_0
    :goto_0
    return-void

    .line 2812
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2813
    .local v0, viewImage:Lcom/htc/opensense/widget/FullScreenView;
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

    .line 2816
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
    .parameter "canvas"
    .parameter "bitmp"
    .parameter "mx"

    .prologue
    .line 2704
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 2705
    :cond_0
    const/4 v0, 0x0

    .line 2709
    :goto_0
    return v0

    .line 2708
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 2709
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
    .line 1376
    div-float/2addr p2, p5

    .line 1377
    mul-float v1, p2, p2

    .line 1378
    .local v1, ts:F
    mul-float v0, v1, p2

    .line 1380
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
    .line 1098
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

    .line 2413
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2467
    :cond_0
    :goto_0
    return-void

    .line 2417
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2420
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2421
    .local v1, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    const/4 v0, 0x0

    .line 2423
    .local v0, useOldWay:Z
    invoke-direct {p0, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeDrawMode(I)V

    .line 2426
    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-gt v4, v5, :cond_3

    :cond_2
    move v0, v3

    .line 2429
    :goto_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v4

    cmpg-float v4, v4, v7

    if-gtz v4, :cond_5

    .line 2431
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2433
    if-eqz v0, :cond_4

    .line 2434
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getDoubleTapZoom()F

    move-result v2

    invoke-virtual {p0, v2, p1, p2, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->smartZoom(FFFF)V

    goto :goto_0

    :cond_3
    move v0, v2

    .line 2426
    goto :goto_1

    .line 2436
    :cond_4
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getDoubleTapZoom()F

    move-result v2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-virtual {p0, v2, v3, v4, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomToCenterByTime(FIIF)V

    goto :goto_0

    .line 2459
    :cond_5
    invoke-virtual {p0, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2461
    if-eqz v0, :cond_6

    .line 2462
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

    .line 2464
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

    .prologue
    .line 1050
    new-instance v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$ClickGestureListener;-><init>(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;Lcom/htc/opensense/widget/FullScreenView$1;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 1051
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1052
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMyGestureListener:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$MyGestureListener;

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/Gesture;->setListener(Lcom/htc/opensense/widget/Gesture$GestureListener;)V

    .line 1053
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 1054
    return-void
.end method

.method private startDecodeHQ()V
    .locals 5

    .prologue
    .line 1612
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 1613
    .local v1, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    if-nez v1, :cond_1

    .line 1614
    const-string v2, "FullScreen"

    const-string v3, "[startDecodeHQ] view image not assign to image view touch"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    const/4 v0, 0x0

    .line 1620
    .local v0, degree:I
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1621
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
    .parameter "atX"
    .parameter "atY"

    .prologue
    const/4 v3, 0x1

    .line 2312
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2313
    .local v0, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    if-nez v0, :cond_0

    .line 2314
    const-string v1, "FullScreen"

    const-string v2, "[afterZoomAnimation] view image not assign to image view touch"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2335
    :goto_0
    return-void

    .line 2326
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFullBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFullBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-nez v1, :cond_2

    .line 2327
    :cond_1
    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v0, v3, v3}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V

    .line 2332
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2333
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onZoomEnd(F)V

    .line 2334
    :cond_3
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #setter for: Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z
    invoke-static {v1, v3}, Lcom/htc/opensense/widget/FullScreenView;->access$4502(Lcom/htc/opensense/widget/FullScreenView;Z)Z

    goto :goto_0
.end method

.method protected beginZoomAnimation()V
    .locals 2

    .prologue
    .line 2290
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4502(Lcom/htc/opensense/widget/FullScreenView;Z)Z

    .line 2291
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2292
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onZoomBegin(F)V

    .line 2293
    :cond_0
    return-void
.end method

.method protected calculateZoomRatio(FFFF)V
    .locals 11
    .parameter "vw"
    .parameter "vh"
    .parameter "bw"
    .parameter "bh"

    .prologue
    .line 2340
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2341
    .local v6, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    if-nez v6, :cond_0

    .line 2342
    const-string v7, "FullScreen"

    const-string v8, "[calculateZoomRatio] view image not assign to image view touch"

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    :goto_0
    return-void

    .line 2346
    :cond_0
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2348
    const/4 v2, 0x0

    .line 2349
    .local v2, offset:I
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2350
    const/4 v2, -0x1

    .line 2353
    :cond_1
    :goto_1
    iget-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_3

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onNeedFitToScreen(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2356
    div-float v5, p1, p3

    .line 2357
    .local v5, rw:F
    div-float v4, p2, p4

    .line 2358
    .local v4, rh:F
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBaseMinZoom:F

    goto :goto_0

    .line 2351
    .end local v4           #rh:F
    .end local v5           #rw:F
    :cond_2
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v6}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {p0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2352
    const/4 v2, 0x1

    goto :goto_1

    .line 2363
    .end local v2           #offset:I
    :cond_3
    iget-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 2365
    iget v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    int-to-float v7, v7

    div-float v5, p1, v7

    .line 2366
    .restart local v5       #rw:F
    iget v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

    int-to-float v7, v7

    div-float v4, p2, v7

    .line 2367
    .restart local v4       #rh:F
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2368
    .local v3, ratio:F
    const/high16 v7, 0x3f80

    cmpg-float v7, v3, v7

    if-gez v7, :cond_4

    .line 2370
    iget v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v1, v7

    .line 2371
    .local v1, dw:I
    iget v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

    int-to-float v7, v7

    mul-float/2addr v7, v3

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v0, v7

    .line 2372
    .local v0, dh:I
    int-to-float v7, v1

    div-float v5, v7, p3

    .line 2373
    int-to-float v7, v0

    div-float v4, v7, p4

    .line 2374
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBaseMinZoom:F

    .line 2375
    const-string v7, "FullScreen"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Orig("

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ","

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

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

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBaseMinZoom:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2379
    .end local v0           #dh:I
    .end local v1           #dw:I
    :cond_4
    iget v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    int-to-float v7, v7

    div-float v5, v7, p3

    .line 2380
    iget v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

    int-to-float v7, v7

    div-float v4, v7, p4

    .line 2381
    invoke-static {v5, v4}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBaseMinZoom:F

    .line 2382
    const-string v7, "FullScreen"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "Small Orig("

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ","

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

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

    iget v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBaseMinZoom:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/htc/opensense/album/util/Log;->d2(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 2387
    .end local v3           #ratio:F
    .end local v4           #rh:F
    .end local v5           #rw:F
    :cond_5
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/opensense/widget/ImageViewTouchBase;->calculateZoomRatio(FFFF)V

    goto/16 :goto_0
.end method

.method canZoom()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2395
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2396
    .local v0, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    if-nez v0, :cond_1

    .line 2397
    const-string v2, "FullScreen"

    const-string v3, "[canZoom] view image not assign to image view touch"

    invoke-static {v2, v3}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2409
    :cond_0
    :goto_0
    return v1

    .line 2400
    :cond_1
    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    if-eq v3, v2, :cond_0

    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2406
    :cond_2
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2407
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->canPinchZoom()Z

    move-result v1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 2409
    goto :goto_0
.end method

.method protected cancelZoomAnimation()V
    .locals 3

    .prologue
    .line 2297
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2298
    .local v0, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    if-nez v0, :cond_0

    .line 2299
    const-string v1, "FullScreen"

    const-string v2, "[afterZoomAnimation] view image not assign to image view touch"

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    :goto_0
    return-void

    .line 2303
    :cond_0
    const/4 v1, 0x0

    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadHQImage(Z)V
    invoke-static {v0, v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4600(Lcom/htc/opensense/widget/FullScreenView;Z)V

    .line 2305
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2306
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onZoomEnd(F)V

    .line 2307
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v2, 0x1

    #setter for: Lcom/htc/opensense/widget/FullScreenView;->mAllowScroll:Z
    invoke-static {v1, v2}, Lcom/htc/opensense/widget/FullScreenView;->access$4502(Lcom/htc/opensense/widget/FullScreenView;Z)Z

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 1389
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1391
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->access$3308(Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;)I

    .line 1392
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    .line 1393
    .local v9, m:Landroid/graphics/Matrix;
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->computeNextPos()Z

    move-result v6

    .line 1394
    .local v6, bret:Z
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

    .line 1395
    .local v10, newX:I
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

    .line 1398
    .local v11, newY:I
    neg-int v0, v10

    int-to-float v0, v0

    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateX(Landroid/graphics/Matrix;)F

    move-result v1

    sub-float v7, v0, v1

    .line 1399
    .local v7, dx:F
    neg-int v0, v11

    int-to-float v0, v0

    invoke-virtual {p0, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v1

    sub-float v8, v0, v1

    .line 1400
    .local v8, dy:F
    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1402
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

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    .line 1414
    .end local v6           #bret:Z
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v9           #m:Landroid/graphics/Matrix;
    .end local v10           #newX:I
    .end local v11           #newY:I
    :cond_2
    :goto_0
    return-void

    .line 1409
    .restart local v6       #bret:Z
    .restart local v7       #dx:F
    .restart local v8       #dy:F
    .restart local v9       #m:Landroid/graphics/Matrix;
    .restart local v10       #newX:I
    .restart local v11       #newY:I
    :cond_3
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1410
    sget-object v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;->SCORLL:Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->EnableUsingFastDrawble(Lcom/htc/opensense/widget/ScaleFastBitmapDrawble$ScaleFastType;Z)V

    .line 1412
    :cond_4
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->postInvalidate()V

    goto :goto_0
.end method

.method public copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V
    .locals 8
    .parameter "other"

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1155
    move-object v1, p1

    check-cast v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    .line 1156
    .local v1, ivt:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 1157
    .local v2, view:Lcom/htc/opensense/widget/FullScreenView;
    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1158
    const/4 v0, -0x1

    .line 1159
    .local v0, count:I
    if-nez v2, :cond_1

    .line 1160
    const-string v3, "FullScreen"

    const-string v4, "[copyFrom] not assign full screen view to image view touch"

    invoke-static {v3, v4}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1168
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 1169
    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    if-ge v3, v0, :cond_2

    .line 1177
    iget-object v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1178
    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

    .line 1179
    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    .line 1180
    iget-object v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1181
    iget-object v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 1182
    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1183
    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1184
    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1185
    iget v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 1186
    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1187
    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1188
    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1189
    iget-boolean v3, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1197
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1198
    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1199
    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1200
    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1201
    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 1202
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1203
    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1204
    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 1205
    iput v7, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1206
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1207
    iput v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1208
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1209
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1210
    iput v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1228
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->copyFrom(Lcom/htc/opensense/widget/ImageViewTouchBase;)V

    goto :goto_0

    .line 1212
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->reset()V

    .line 1213
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1214
    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1215
    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1216
    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1217
    iput-object v6, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 1218
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1219
    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1220
    iput v5, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 1221
    iput v7, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1222
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1223
    iput v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1224
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1225
    iput-boolean v4, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1226
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

    .prologue
    .line 1082
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1083
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

    .line 2476
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 2478
    .local v2, keyCode:I
    iget-boolean v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    if-nez v7, :cond_0

    .line 2479
    const/16 v7, 0x13

    if-lt v2, v7, :cond_0

    const/16 v7, 0x16

    if-gt v2, v7, :cond_0

    .line 2481
    invoke-super {p0, v2, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    .line 2570
    :goto_0
    return v5

    .line 2485
    :cond_0
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v7, :cond_1

    .line 2486
    const-string v6, "FullScreen"

    const-string v7, "[handleKeyEvent] full screen view doesn\'t assign to Image view touch"

    invoke-static {v6, v7}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2490
    :cond_1
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    .line 2492
    .local v1, current:I
    const/4 v4, -0x2

    .line 2494
    .local v4, nextImagePos:I
    sparse-switch v2, :sswitch_data_0

    .line 2556
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

    .line 2557
    const/4 v0, -0x1

    .line 2558
    .local v0, count:I
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2559
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2560
    :cond_3
    if-ltz v4, :cond_1a

    if-ge v4, v0, :cond_1a

    .line 2561
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v6

    .line 2562
    :try_start_0
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v7, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2563
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2570
    .end local v0           #count:I
    :cond_4
    :goto_2
    invoke-super {p0, v2, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_0

    .line 2496
    :sswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2498
    const v7, 0x3f99999a

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomIn(F)V

    .line 2499
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    const/4 v9, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2556
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 2557
    const/4 v0, -0x1

    .line 2558
    .restart local v0       #count:I
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2559
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v8}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2560
    :cond_5
    if-ltz v4, :cond_18

    if-ge v4, v0, :cond_18

    .line 2561
    iget-object v6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v6

    .line 2562
    :try_start_2
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2563
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2556
    .end local v0           #count:I
    :cond_6
    :goto_3
    throw v7

    .line 2504
    :sswitch_2
    const/high16 v7, 0x40e0

    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2505
    if-nez v1, :cond_a

    move v3, v5

    .line 2506
    .local v3, maxOffset:I
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

    .line 2507
    :cond_7
    add-int/lit8 v4, v1, -0x1

    .line 2556
    :goto_5
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2557
    const/4 v0, -0x1

    .line 2558
    .restart local v0       #count:I
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 2559
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2560
    :cond_8
    if-ltz v4, :cond_1d

    if-ge v4, v0, :cond_1d

    .line 2561
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    .line 2562
    :try_start_4
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2563
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .end local v0           #count:I
    :cond_9
    :goto_6
    move v5, v6

    .line 2511
    goto/16 :goto_0

    .line 2505
    .end local v3           #maxOffset:I
    :cond_a
    :try_start_5
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$4700()I

    move-result v3

    goto :goto_4

    .line 2509
    .restart local v3       #maxOffset:I
    :cond_b
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_5

    .line 2514
    .end local v3           #maxOffset:I
    :sswitch_3
    const/high16 v7, -0x3f20

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2515
    const/4 v0, -0x1

    .line 2517
    .restart local v0       #count:I
    if-ne v1, v10, :cond_f

    move v3, v5

    .line 2518
    .restart local v3       #maxOffset:I
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

    .line 2519
    :cond_c
    add-int/lit8 v4, v1, 0x1

    .line 2556
    :goto_8
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 2557
    const/4 v0, -0x1

    .line 2558
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 2559
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2560
    :cond_d
    if-ltz v4, :cond_1e

    if-ge v4, v0, :cond_1e

    .line 2561
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    .line 2562
    :try_start_6
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2563
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :cond_e
    :goto_9
    move v5, v6

    .line 2523
    goto/16 :goto_0

    .line 2517
    .end local v3           #maxOffset:I
    :cond_f
    :try_start_7
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$4700()I

    move-result v3

    goto :goto_7

    .line 2521
    .restart local v3       #maxOffset:I
    :cond_10
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_8

    .line 2526
    .end local v0           #count:I
    .end local v3           #maxOffset:I
    :sswitch_4
    const/4 v7, 0x0

    const/high16 v8, 0x40e0

    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2527
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2556
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 2557
    const/4 v0, -0x1

    .line 2558
    .restart local v0       #count:I
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 2559
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2560
    :cond_11
    if-ltz v4, :cond_1b

    if-ge v4, v0, :cond_1b

    .line 2561
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    .line 2562
    :try_start_8
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2563
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .end local v0           #count:I
    :cond_12
    :goto_a
    move v5, v6

    .line 2528
    goto/16 :goto_0

    .line 2531
    :sswitch_5
    const/4 v7, 0x0

    const/high16 v8, -0x3f20

    :try_start_9
    invoke-virtual {p0, v7, v8}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2532
    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2556
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_14

    .line 2557
    const/4 v0, -0x1

    .line 2558
    .restart local v0       #count:I
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 2559
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2560
    :cond_13
    if-ltz v4, :cond_1c

    if-ge v4, v0, :cond_1c

    .line 2561
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    .line 2562
    :try_start_a
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2563
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .end local v0           #count:I
    :cond_14
    :goto_b
    move v5, v6

    .line 2533
    goto/16 :goto_0

    .line 2540
    :sswitch_6
    :try_start_b
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_2

    .line 2541
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v7

    if-nez v7, :cond_15

    .line 2542
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    invoke-virtual {v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    .line 2543
    :cond_15
    const/high16 v7, 0x3f80

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomTo(F)V

    .line 2544
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2545
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 2548
    const-string v7, "[FullScreenView]press back key zoom back"

    invoke-static {v7}, Lcom/htc/opensense/album/util/Log;->autotest(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2556
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 2557
    const/4 v0, -0x1

    .line 2558
    .restart local v0       #count:I
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 2559
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v7}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2560
    :cond_16
    if-ltz v4, :cond_19

    if-ge v4, v0, :cond_19

    .line 2561
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v7

    .line 2562
    :try_start_c
    iget-object v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v8, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v5, v4, v8}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2563
    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .end local v0           #count:I
    :cond_17
    :goto_c
    move v5, v6

    .line 2552
    goto/16 :goto_0

    .line 2564
    .restart local v0       #count:I
    :cond_18
    if-eq v4, v10, :cond_6

    .line 2565
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_3

    .line 2563
    :catchall_1
    move-exception v5

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v5

    .line 2564
    :cond_19
    if-eq v4, v10, :cond_17

    .line 2565
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_c

    .line 2563
    :catchall_2
    move-exception v5

    :try_start_e
    monitor-exit v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v5

    .line 2564
    :cond_1a
    if-eq v4, v10, :cond_4

    .line 2565
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_2

    .line 2563
    :catchall_3
    move-exception v5

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    throw v5

    .line 2564
    :cond_1b
    if-eq v4, v10, :cond_12

    .line 2565
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_a

    .line 2563
    :catchall_4
    move-exception v5

    :try_start_10
    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    throw v5

    .line 2564
    :cond_1c
    if-eq v4, v10, :cond_14

    .line 2565
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_b

    .line 2563
    :catchall_5
    move-exception v5

    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    throw v5

    .line 2564
    .restart local v3       #maxOffset:I
    :cond_1d
    if-eq v4, v10, :cond_9

    .line 2565
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_6

    .line 2563
    :catchall_6
    move-exception v5

    :try_start_12
    monitor-exit v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    throw v5

    .line 2564
    :cond_1e
    if-eq v4, v10, :cond_e

    .line 2565
    invoke-virtual {p0, v6, v6, v5}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_9

    .line 2563
    :catchall_7
    move-exception v5

    :try_start_13
    monitor-exit v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    throw v5

    .line 2494
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
    .parameter "m"

    .prologue
    .line 1723
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v36

    .line 1724
    .local v36, scroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    if-nez v36, :cond_0

    .line 1725
    const/16 v47, 0x1

    .line 2239
    :goto_0
    return v47

    .line 1727
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v47

    if-eqz v47, :cond_1

    .line 1728
    const/16 v47, 0x1

    goto :goto_0

    .line 1731
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

    .line 1732
    const/16 v47, 0x1

    goto :goto_0

    .line 1735
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    if-eqz v47, :cond_3

    .line 1736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mLeaveFullScreen:Z
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$1300(Lcom/htc/opensense/widget/FullScreenView;)Z

    move-result v47

    if-eqz v47, :cond_3

    const/16 v47, 0x1

    goto :goto_0

    .line 1739
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v42

    .line 1740
    .local v42, viewWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v41, v0

    .line 1741
    .local v41, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v44

    .line 1742
    .local v44, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v45

    .line 1744
    .local v45, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenW:I
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$600(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v22

    .line 1745
    .local v22, mScreenW:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScreenH:I
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$3200(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v21

    .line 1750
    .local v21, mScreenH:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mUsedMultiTouchDetector:Z

    move/from16 v47, v0

    if-nez v47, :cond_5

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/Gesture;->recognize(Landroid/view/MotionEvent;)I

    move-result v18

    .line 1755
    .local v18, gesture:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v47

    and-int/lit8 v47, v47, 0xf

    packed-switch v47, :pswitch_data_0

    .line 2239
    :cond_4
    :goto_2
    :pswitch_0
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 1753
    .end local v18           #gesture:I
    :cond_5
    const/16 v18, 0x1

    .restart local v18       #gesture:I
    goto :goto_1

    .line 1757
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->isFinished()Z

    move-result v47

    if-nez v47, :cond_6

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFlingHandler:Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch$FlingScrollerHandler;->stopScroll()V

    .line 1762
    :cond_6
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    .line 1764
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 1766
    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v47

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    .line 1768
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v24

    .line 1769
    .local v24, matd:Landroid/graphics/Matrix;
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

    .line 1770
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

    .line 1774
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

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v47, v0

    if-eqz v47, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v47

    if-nez v47, :cond_7

    .line 1776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    aput v49, v47, v48

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    move-object/from16 v49, v0

    invoke-virtual/range {v49 .. v49}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v49

    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v49, v0

    aput v49, v47, v48

    .line 1782
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrLeftTop:[F

    move-object/from16 v47, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mPanCurrRightBottom:[F

    move-object/from16 v47, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/16 :goto_2

    .line 1779
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

    .line 1786
    .end local v24           #matd:Landroid/graphics/Matrix;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    move/from16 v47, v0

    if-eqz v47, :cond_4

    .line 1789
    const/16 v47, 0x8

    move/from16 v0, v18

    move/from16 v1, v47

    if-eq v0, v1, :cond_8

    const/16 v47, 0x9

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_b

    .line 1790
    :cond_8
    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 1791
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1792
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 1820
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    move/from16 v47, v0

    packed-switch v47, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_2

    .line 1824
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v47, v0

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-eq v0, v1, :cond_a

    .line 1825
    const/16 v47, 0x3

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1827
    :cond_a
    const/16 v47, 0x4

    move/from16 v0, v18

    move/from16 v1, v47

    if-eq v0, v1, :cond_10

    .line 1828
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 1793
    :cond_b
    const/16 v47, 0xd

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_c

    .line 1794
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 1795
    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 1796
    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1797
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->invalidate()V

    goto :goto_4

    .line 1800
    :cond_c
    const/16 v47, 0xc

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_d

    .line 1801
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 1802
    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 1803
    const/16 v47, 0x5

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 1804
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_4

    .line 1805
    :cond_d
    const/16 v47, 0x4

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_f

    .line 1806
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    move/from16 v47, v0

    const/16 v48, 0x4

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_e

    .line 1807
    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    .line 1809
    :cond_e
    const/16 v47, 0x3

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    .line 1810
    :cond_f
    const/16 v47, 0x1

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_9

    .line 1811
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    goto/16 :goto_4

    .line 1830
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/Gesture;->getActiveBehavior()Lcom/htc/opensense/widget/Gesture$IBehavior;

    move-result-object v16

    check-cast v16, Lcom/htc/opensense/widget/Gesture$DragBehavior;

    .line 1831
    .local v16, dragBehavior:Lcom/htc/opensense/widget/Gesture$DragBehavior;
    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/widget/Gesture$DragBehavior;->getDistanceX()F

    move-result v47

    move/from16 v0, v47

    float-to-int v14, v0

    .line 1832
    .local v14, deltax:I
    invoke-virtual/range {v16 .. v16}, Lcom/htc/opensense/widget/Gesture$DragBehavior;->getDistanceY()F

    move-result v47

    move/from16 v0, v47

    float-to-int v15, v0

    .line 1834
    .local v15, deltay:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v48

    add-int v47, v47, v48

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    .line 1836
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v47

    const/high16 v48, 0x3f80

    cmpg-float v47, v47, v48

    if-gtz v47, :cond_11

    const/16 v40, 0x1

    .line 1837
    .local v40, useOutSideScroller:Z
    :goto_5
    if-eqz v40, :cond_15

    .line 1839
    neg-int v0, v14

    move/from16 v25, v0

    .line 1840
    .local v25, move:I
    if-gez v25, :cond_12

    .line 1841
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v47

    const/16 v48, 0x0

    aget-object v47, v47, v48

    invoke-direct/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canScroll()Z

    move-result v47

    if-nez v47, :cond_13

    .line 1842
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 1836
    .end local v25           #move:I
    .end local v40           #useOutSideScroller:Z
    :cond_11
    const/16 v40, 0x0

    goto :goto_5

    .line 1844
    .restart local v25       #move:I
    .restart local v40       #useOutSideScroller:Z
    :cond_12
    if-lez v25, :cond_13

    .line 1845
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v47

    const/16 v48, 0x2

    aget-object v47, v47, v48

    invoke-direct/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canScroll()Z

    move-result v47

    if-nez v47, :cond_13

    .line 1846
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 1850
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_14

    .line 1851
    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    .line 1855
    :goto_6
    const/16 v47, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v25

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_2

    .line 1853
    :cond_14
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_6

    .line 1863
    .end local v25           #move:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v47, v0

    if-nez v47, :cond_19

    const/16 v38, 0x0

    .line 1864
    .local v38, topLeftX:F
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v47, v0

    if-nez v47, :cond_1a

    const/16 v39, 0x0

    .line 1865
    .local v39, topLeftY:F
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v47, v0

    if-nez v47, :cond_1b

    const/4 v7, 0x0

    .line 1866
    .local v7, botRightX:F
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v47, v0

    if-nez v47, :cond_1c

    const/4 v8, 0x0

    .line 1870
    .local v8, botRightY:F
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v23

    .line 1871
    .local v23, mat:Landroid/graphics/Matrix;
    sub-float v47, v7, v38

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v27, v0

    .line 1872
    .local v27, nCurImgWidth:I
    sub-float v47, v8, v39

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v26, v0

    .line 1874
    .local v26, nCurImgHeight:I
    const/16 v37, 0x0

    .line 1875
    .local v37, topBound:I
    move/from16 v0, v26

    move/from16 v1, v21

    if-gt v0, v1, :cond_1d

    const/4 v9, 0x0

    .line 1877
    .local v9, bottomBound:I
    :goto_b
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getTranslateY(Landroid/graphics/Matrix;)F

    move-result v47

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v32, v0

    .line 1879
    .local v32, py:I
    const/16 v20, 0x0

    .line 1880
    .local v20, leftBound:I
    move/from16 v0, v27

    move/from16 v1, v22

    if-gt v0, v1, :cond_1e

    const/16 v33, 0x0

    .line 1882
    .local v33, rightBound:I
    :goto_c
    const/16 v29, 0x0

    .line 1883
    .local v29, onpanx:I
    const/16 v30, 0x0

    .line 1885
    .local v30, onpany:I
    if-eqz v15, :cond_17

    .line 1907
    if-nez v9, :cond_1f

    .line 1908
    const/4 v15, 0x0

    .line 1914
    :cond_16
    :goto_d
    const/16 v47, 0x0

    int-to-float v0, v15

    move/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1915
    move/from16 v30, v15

    .line 1918
    :cond_17
    if-eqz v14, :cond_18

    .line 1919
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

    .line 1921
    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v13

    .line 1922
    .local v13, curOuterScrollerPosX:I
    sub-int v47, v13, v14

    move/from16 v0, v47

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1923
    .local v17, finalX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_21

    .line 1924
    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    .line 1927
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

    .line 1928
    const/16 v47, 0x2715

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1929
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

    .line 1930
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

    .line 1931
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

    .line 2044
    .end local v13           #curOuterScrollerPosX:I
    .end local v17           #finalX:F
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

    .line 2045
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

    .line 1863
    .end local v7           #botRightX:F
    .end local v8           #botRightY:F
    .end local v9           #bottomBound:I
    .end local v20           #leftBound:I
    .end local v23           #mat:Landroid/graphics/Matrix;
    .end local v26           #nCurImgHeight:I
    .end local v27           #nCurImgWidth:I
    .end local v29           #onpanx:I
    .end local v30           #onpany:I
    .end local v32           #py:I
    .end local v33           #rightBound:I
    .end local v37           #topBound:I
    .end local v38           #topLeftX:F
    .end local v39           #topLeftY:F
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget v38, v47, v48

    goto/16 :goto_7

    .line 1864
    .restart local v38       #topLeftX:F
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTopLeft:[F

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v39, v47, v48

    goto/16 :goto_8

    .line 1865
    .restart local v39       #topLeftY:F
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v47, v0

    const/16 v48, 0x0

    aget v7, v47, v48

    goto/16 :goto_9

    .line 1866
    .restart local v7       #botRightX:F
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBotRight:[F

    move-object/from16 v47, v0

    const/16 v48, 0x1

    aget v8, v47, v48

    goto/16 :goto_a

    .line 1875
    .restart local v8       #botRightY:F
    .restart local v23       #mat:Landroid/graphics/Matrix;
    .restart local v26       #nCurImgHeight:I
    .restart local v27       #nCurImgWidth:I
    .restart local v37       #topBound:I
    :cond_1d
    sub-int v47, v26, v21

    move/from16 v0, v47

    neg-int v9, v0

    goto/16 :goto_b

    .line 1880
    .restart local v9       #bottomBound:I
    .restart local v20       #leftBound:I
    .restart local v32       #py:I
    :cond_1e
    sub-int v47, v27, v22

    move/from16 v0, v47

    neg-int v0, v0

    move/from16 v33, v0

    goto/16 :goto_c

    .line 1909
    .restart local v29       #onpanx:I
    .restart local v30       #onpany:I
    .restart local v33       #rightBound:I
    :cond_1f
    add-int v47, v32, v15

    move/from16 v0, v47

    move/from16 v1, v37

    if-le v0, v1, :cond_20

    .line 1910
    sub-int v15, v37, v32

    goto/16 :goto_d

    .line 1911
    :cond_20
    add-int v47, v32, v15

    move/from16 v0, v47

    if-ge v0, v9, :cond_16

    .line 1912
    sub-int v15, v9, v32

    goto/16 :goto_d

    .line 1926
    .restart local v13       #curOuterScrollerPosX:I
    .restart local v17       #finalX:F
    :cond_21
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto/16 :goto_e

    .line 1933
    :cond_22
    neg-int v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    .line 1935
    .end local v13           #curOuterScrollerPosX:I
    .end local v17           #finalX:F
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

    .line 1937
    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v13

    .line 1938
    .restart local v13       #curOuterScrollerPosX:I
    sub-int v17, v13, v14

    .line 1939
    .local v17, finalX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_24

    .line 1940
    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    .line 1943
    :goto_10
    if-gez v14, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    move/from16 v0, v17

    move/from16 v1, v47

    if-lt v0, v1, :cond_25

    .line 1944
    const/16 v47, 0x2715

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1945
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

    .line 1946
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

    .line 1947
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v47, v0

    sub-int v29, v47, v17

    goto/16 :goto_f

    .line 1942
    :cond_24
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_10

    .line 1949
    :cond_25
    neg-int v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    .line 1957
    .end local v13           #curOuterScrollerPosX:I
    .end local v17           #finalX:I
    :cond_26
    if-gez v14, :cond_2d

    .line 1958
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    move/from16 v47, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v47, v47, v48

    if-lez v47, :cond_2b

    .line 1961
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

    .line 1963
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    add-int v47, v47, v14

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    .line 1964
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    const/16 v48, -0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_28

    .line 1965
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    add-int/lit8 v14, v47, 0xa

    .line 1969
    :cond_27
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    .line 1971
    int-to-float v0, v14

    move/from16 v47, v0

    add-float v17, v7, v47

    .line 1972
    .local v17, finalX:F
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v47, v0

    cmpg-float v47, v17, v47

    if-gtz v47, :cond_2a

    .line 1973
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

    .line 1974
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v47, v0

    sub-float v47, v47, v7

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v29, v0

    .line 1977
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

    .line 1979
    const/16 v47, 0x2711

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1980
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_29

    .line 1981
    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    .line 1984
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

    .line 1967
    .end local v17           #finalX:F
    :cond_28
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 1983
    .restart local v17       #finalX:F
    :cond_29
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_11

    .line 1987
    :cond_2a
    int-to-float v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 1988
    move/from16 v29, v14

    goto/16 :goto_f

    .line 1991
    .end local v17           #finalX:F
    :cond_2b
    const/16 v47, 0x2711

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 1992
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_2c

    .line 1993
    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    .line 1996
    :goto_12
    neg-int v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    .line 1995
    :cond_2c
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_12

    .line 1998
    :cond_2d
    if-lez v14, :cond_18

    .line 1999
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mCurBitmapWidth:F

    move/from16 v47, v0

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v48, v0

    cmpl-float v47, v47, v48

    if-lez v47, :cond_32

    .line 2002
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

    .line 2004
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    add-int v47, v47, v14

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    .line 2005
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_2f

    .line 2006
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    move/from16 v47, v0

    add-int/lit8 v14, v47, -0xa

    .line 2011
    :cond_2e
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDelta:I

    .line 2013
    int-to-float v0, v14

    move/from16 v47, v0

    add-float v17, v47, v38

    .line 2014
    .restart local v17       #finalX:F
    const/16 v47, 0x0

    cmpl-float v47, v17, v47

    if-lez v47, :cond_31

    .line 2015
    const/16 v47, 0x2712

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 2016
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

    .line 2017
    move/from16 v0, v38

    neg-float v0, v0

    move/from16 v47, v0

    move/from16 v0, v47

    float-to-int v0, v0

    move/from16 v29, v0

    .line 2020
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

    .line 2021
    const/16 v47, 0x2712

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 2022
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_30

    .line 2023
    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    .line 2026
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

    .line 2008
    .end local v17           #finalX:F
    :cond_2f
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 2025
    .restart local v17       #finalX:F
    :cond_30
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_13

    .line 2029
    :cond_31
    int-to-float v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2030
    move/from16 v29, v14

    goto/16 :goto_f

    .line 2033
    .end local v17           #finalX:F
    :cond_32
    const/16 v47, 0x2712

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 2034
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    move/from16 v47, v0

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ge v0, v1, :cond_33

    .line 2035
    const/16 v47, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    .line 2038
    :goto_14
    neg-int v0, v14

    move/from16 v47, v0

    const/16 v48, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->scrollBy(II)V

    goto/16 :goto_f

    .line 2037
    :cond_33
    const/16 v47, 0x2

    move-object/from16 v0, v36

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->setState(I)V

    goto :goto_14

    .line 2049
    .end local v7           #botRightX:F
    .end local v8           #botRightY:F
    .end local v9           #bottomBound:I
    .end local v14           #deltax:I
    .end local v15           #deltay:I
    .end local v16           #dragBehavior:Lcom/htc/opensense/widget/Gesture$DragBehavior;
    .end local v20           #leftBound:I
    .end local v23           #mat:Landroid/graphics/Matrix;
    .end local v26           #nCurImgHeight:I
    .end local v27           #nCurImgWidth:I
    .end local v29           #onpanx:I
    .end local v30           #onpany:I
    .end local v32           #py:I
    .end local v33           #rightBound:I
    .end local v37           #topBound:I
    .end local v38           #topLeftX:F
    .end local v39           #topLeftY:F
    .end local v40           #useOutSideScroller:Z
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v47

    if-nez v47, :cond_34

    .line 2050
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 2052
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

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

    .line 2056
    :cond_35
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 2059
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

    .line 2061
    :cond_37
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    move/from16 v47, v0

    add-int/lit8 v47, v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 2065
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    move/from16 v47, v0

    const/16 v48, 0x1e

    move/from16 v0, v47

    move/from16 v1, v48

    if-gt v0, v1, :cond_38

    .line 2066
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 2068
    :cond_38
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 2069
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 2070
    const/16 v47, 0x1

    goto/16 :goto_0

    .line 2075
    :cond_39
    const v6, 0x3c1374bc

    .line 2076
    .local v6, LOW_BOUND:F
    const v4, 0x3dcccccd

    .line 2077
    .local v4, HIGH_BOUND:F
    const/high16 v5, 0x4316

    .line 2078
    .local v5, LEVEL:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/Gesture;->getActiveBehavior()Lcom/htc/opensense/widget/Gesture$IBehavior;

    move-result-object v46

    check-cast v46, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;

    .line 2080
    .local v46, zoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->weight()F

    move-result v43

    .line 2081
    .local v43, weight:F
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->getCenterX()F

    move-result v47

    move/from16 v0, v47

    float-to-int v10, v0

    .line 2082
    .local v10, centerX:I
    invoke-virtual/range {v46 .. v46}, Lcom/htc/opensense/widget/Gesture$ZoomBehavior;->getCenterY()F

    move-result v47

    move/from16 v0, v47

    float-to-int v11, v0

    .line 2083
    .local v11, centerY:I
    const/high16 v47, 0x4316

    div-float v43, v43, v47

    .line 2084
    const v47, 0x3dcccccd

    cmpl-float v47, v43, v47

    if-lez v47, :cond_3a

    const v43, 0x3dcccccd

    .line 2085
    :cond_3a
    const v47, 0x3c1374bc

    cmpg-float v47, v43, v47

    if-lez v47, :cond_4

    .line 2088
    const/high16 v34, 0x3f80

    .line 2089
    .local v34, scale:F
    const/16 v47, 0x8

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_3c

    .line 2090
    const/16 v47, 0x1

    const/16 v48, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v47

    move/from16 v2, v48

    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V

    .line 2092
    const/high16 v47, 0x3f80

    add-float v34, v43, v47

    .line 2106
    :cond_3b
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v31

    .line 2108
    .local v31, prevScale:F
    int-to-float v0, v10

    move/from16 v47, v0

    int-to-float v0, v11

    move/from16 v48, v0

    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomInAt(FFF)V

    .line 2110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v47

    if-eqz v47, :cond_4

    .line 2111
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

    .line 2097
    .end local v31           #prevScale:F
    :cond_3c
    const/16 v47, 0x9

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_3b

    .line 2098
    const/high16 v47, 0x3f80

    sub-float v34, v47, v43

    .line 2099
    const/high16 v47, 0x3f80

    cmpg-float v47, v34, v47

    if-gtz v47, :cond_3b

    goto :goto_15

    .line 2116
    .end local v4           #HIGH_BOUND:F
    .end local v5           #LEVEL:F
    .end local v6           #LOW_BOUND:F
    .end local v10           #centerX:I
    .end local v11           #centerY:I
    .end local v34           #scale:F
    .end local v43           #weight:F
    .end local v46           #zoomBehavior:Lcom/htc/opensense/widget/Gesture$ZoomBehavior;
    :pswitch_6
    const/16 v47, 0xd

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_4

    .line 2117
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v34

    .line 2119
    .restart local v34       #scale:F
    const/high16 v47, 0x3f80

    cmpg-float v47, v34, v47

    if-gtz v47, :cond_3d

    .line 2121
    const/16 v47, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2124
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

    .line 2126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onPinchZoomEnd()V

    .line 2129
    :cond_3e
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 2130
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 2131
    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 2132
    const/16 v47, 0x4

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 2133
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 2135
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->invalidate()V

    goto/16 :goto_2

    .line 2141
    .end local v34           #scale:F
    :pswitch_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    move/from16 v47, v0

    if-eqz v47, :cond_4

    .line 2143
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnDown:Z

    .line 2145
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollDelta:I

    .line 2147
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    move/from16 v47, v0

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_40

    .line 2148
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getZoomStatus()I

    move-result v47

    if-eqz v47, :cond_3f

    .line 2149
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 2150
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v47

    const/high16 v48, 0x3f80

    cmpl-float v47, v47, v48

    if-lez v47, :cond_40

    .line 2153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    move-result-object v47

    if-eqz v47, :cond_40

    .line 2154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    move-object/from16 v47, v0

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnPanListener:Lcom/htc/opensense/widget/FullScreenView$OnPanListener;
    invoke-static/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView;->access$4300(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnPanListener;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$OnPanListener;->onPanEnd()V

    .line 2161
    :cond_40
    const/16 v47, 0xd

    move/from16 v0, v18

    move/from16 v1, v47

    if-eq v0, v1, :cond_4

    .line 2166
    const/16 v28, -0x1

    .line 2168
    .local v28, nextImagePos:I
    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z

    move-result v47

    if-eqz v47, :cond_44

    .line 2169
    const/high16 v19, 0x40a0

    .line 2172
    .local v19, hedge:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mGesture:Lcom/htc/opensense/widget/Gesture;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/Gesture;->getDragDistanceX()F

    move-result v35

    .line 2174
    .local v35, scrollDiffX:F
    cmpl-float v47, v35, v19

    if-lez v47, :cond_43

    .line 2175
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    add-int/lit8 v28, v47, 0x1

    .line 2191
    .end local v19           #hedge:F
    .end local v35           #scrollDiffX:F
    :cond_41
    :goto_16
    const/4 v12, -0x1

    .line 2193
    .local v12, count:I
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v47

    if-eqz v47, :cond_4

    .line 2196
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v12

    .line 2201
    if-ltz v28, :cond_47

    move/from16 v0, v28

    if-ge v0, v12, :cond_47

    .line 2202
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisableClick:Z

    .line 2203
    monitor-enter v41

    .line 2204
    const/16 v47, 0x1

    :try_start_0
    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollImage:Z

    .line 2207
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v47

    if-eqz v47, :cond_42

    .line 2208
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mHQDecodeTh:Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$2500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/htc/opensense/widget/FullScreenView$HQDecodeThread;->cancel()V

    .line 2211
    :cond_42
    const/16 v47, 0x1

    move-object/from16 v0, v41

    move/from16 v1, v28

    move/from16 v2, v47

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2216
    const/16 v47, -0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    .line 2218
    monitor-exit v41
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2228
    :goto_17
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 2229
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 2230
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_2

    .line 2176
    .end local v12           #count:I
    .restart local v19       #hedge:F
    .restart local v35       #scrollDiffX:F
    :cond_43
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v47, v0

    cmpg-float v47, v35, v47

    if-gez v47, :cond_41

    .line 2177
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    add-int/lit8 v28, v47, -0x1

    goto :goto_16

    .line 2181
    .end local v19           #hedge:F
    .end local v35           #scrollDiffX:F
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

    .line 2182
    .local v19, hedge:I
    :goto_18
    invoke-virtual/range {v36 .. v36}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->getScrollX()I

    move-result v47

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mScrollerStartX:I

    move/from16 v48, v0

    sub-int v35, v47, v48

    .line 2184
    .local v35, scrollDiffX:I
    move/from16 v0, v35

    move/from16 v1, v19

    if-le v0, v1, :cond_46

    .line 2185
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    add-int/lit8 v28, v47, 0x1

    goto/16 :goto_16

    .line 2181
    .end local v19           #hedge:I
    .end local v35           #scrollDiffX:I
    :cond_45
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$700()I

    move-result v47

    div-int/lit8 v48, v22, 0x6

    add-int v19, v47, v48

    goto :goto_18

    .line 2186
    .restart local v19       #hedge:I
    .restart local v35       #scrollDiffX:I
    :cond_46
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v47, v0

    move/from16 v0, v35

    move/from16 v1, v47

    if-ge v0, v1, :cond_41

    .line 2187
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static/range {v41 .. v41}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v47

    add-int/lit8 v28, v47, -0x1

    goto/16 :goto_16

    .line 2218
    .end local v19           #hedge:I
    .end local v35           #scrollDiffX:I
    .restart local v12       #count:I
    :catchall_0
    move-exception v47

    :try_start_1
    monitor-exit v41
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v47

    .line 2220
    :cond_47
    const/16 v47, 0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 2221
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

    .line 2226
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

    .line 2221
    :cond_48
    const/16 v47, 0x0

    goto :goto_19

    .line 2234
    .end local v12           #count:I
    .end local v28           #nextImagePos:I
    :pswitch_8
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 2235
    const/16 v47, 0x0

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 2236
    const/16 v47, -0x1

    move/from16 v0, v47

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mSubTouchStateX:I

    goto/16 :goto_2

    .line 1755
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

    .line 1820
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

    .line 2579
    iget-boolean v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    if-nez v9, :cond_1

    .line 2635
    :cond_0
    :goto_0
    return v7

    .line 2583
    :cond_1
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v9, :cond_2

    .line 2584
    const-string v8, "FullScreen"

    const-string v9, "[handleTrackballEvent] full screen view doesn\'t assign to Image view touch"

    invoke-static {v8, v9}, Lcom/htc/opensense/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2588
    :cond_2
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 2591
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mCurrentPosition:I
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$800(Lcom/htc/opensense/widget/FullScreenView;)I

    move-result v1

    .line 2592
    .local v1, current:I
    const/4 v3, -0x2

    .line 2593
    .local v3, nextImagePos:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v4

    .line 2594
    .local v4, scroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    if-nez v4, :cond_3

    move v7, v8

    .line 2595
    goto :goto_0

    .line 2598
    :cond_3
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 2625
    const/4 v0, -0x1

    .line 2626
    .local v0, count:I
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2627
    if-ltz v3, :cond_12

    if-ge v3, v0, :cond_12

    .line 2628
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v8

    .line 2629
    :try_start_1
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v9, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v9}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2630
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 2635
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    .line 2601
    .end local v0           #count:I
    :pswitch_0
    :try_start_2
    invoke-virtual {v4}, Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;->isScrolling()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v9

    if-eqz v9, :cond_6

    .line 2625
    const/4 v0, -0x1

    .line 2626
    .restart local v0       #count:I
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2627
    if-ltz v3, :cond_10

    if-ge v3, v0, :cond_10

    .line 2628
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v9

    .line 2629
    :try_start_3
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2630
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_5
    :goto_2
    move v7, v8

    .line 2602
    goto :goto_0

    .line 2603
    .end local v0           #count:I
    :cond_6
    :try_start_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 2604
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 2609
    .local v6, y:F
    neg-float v9, v5

    mul-float/2addr v9, v13

    neg-float v10, v6

    mul-float/2addr v10, v13

    invoke-virtual {p0, v9, v10}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    .line 2610
    const/4 v0, -0x1

    .line 2611
    .restart local v0       #count:I
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2612
    add-int/lit8 v9, v0, -0x1

    if-ne v1, v9, :cond_a

    move v2, v7

    .line 2613
    .local v2, maxOffset:I
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

    .line 2614
    :cond_7
    cmpl-float v9, v5, v11

    if-lez v9, :cond_c

    .line 2615
    add-int/lit8 v3, v1, 0x1

    .line 2618
    :cond_8
    :goto_5
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2625
    :goto_6
    const/4 v0, -0x1

    .line 2626
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v9}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2627
    if-ltz v3, :cond_11

    if-ge v3, v0, :cond_11

    .line 2628
    iget-object v9, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v9

    .line 2629
    :try_start_5
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2630
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_9
    :goto_7
    move v7, v8

    .line 2622
    goto/16 :goto_0

    .line 2612
    .end local v2           #maxOffset:I
    :cond_a
    :try_start_6
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$4700()I

    move-result v2

    goto :goto_3

    .restart local v2       #maxOffset:I
    :cond_b
    move v9, v8

    .line 2613
    goto :goto_4

    .line 2616
    :cond_c
    cmpg-float v9, v5, v11

    if-gez v9, :cond_8

    .line 2617
    add-int/lit8 v3, v1, -0x1

    goto :goto_5

    .line 2620
    :cond_d
    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0, v9, v10, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    .line 2625
    .end local v0           #count:I
    .end local v2           #maxOffset:I
    .end local v5           #x:F
    .end local v6           #y:F
    :catchall_0
    move-exception v9

    const/4 v0, -0x1

    .line 2626
    .restart local v0       #count:I
    iget-object v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v10}, Lcom/htc/opensense/widget/FullScreenView;->access$400(Lcom/htc/opensense/widget/FullScreenView;)Landroid/widget/BaseAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 2627
    if-ltz v3, :cond_f

    if-ge v3, v0, :cond_f

    .line 2628
    iget-object v8, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    monitor-enter v8

    .line 2629
    :try_start_7
    iget-object v7, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    const/4 v10, 0x1

    #calls: Lcom/htc/opensense/widget/FullScreenView;->setImage(IZ)V
    invoke-static {v7, v3, v10}, Lcom/htc/opensense/widget/FullScreenView;->access$1900(Lcom/htc/opensense/widget/FullScreenView;IZ)V

    .line 2630
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2625
    :cond_e
    :goto_8
    throw v9

    .line 2631
    :cond_f
    if-eq v3, v12, :cond_e

    .line 2632
    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_8

    .line 2630
    :catchall_1
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v7

    .line 2631
    :cond_10
    if-eq v3, v12, :cond_5

    .line 2632
    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_2

    .line 2630
    :catchall_2
    move-exception v7

    :try_start_9
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v7

    .line 2631
    .restart local v2       #maxOffset:I
    .restart local v5       #x:F
    .restart local v6       #y:F
    :cond_11
    if-eq v3, v12, :cond_9

    .line 2632
    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto :goto_7

    .line 2630
    :catchall_3
    move-exception v7

    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v7

    .line 2631
    .end local v2           #maxOffset:I
    .end local v5           #x:F
    .end local v6           #y:F
    :cond_12
    if-eq v3, v12, :cond_4

    .line 2632
    invoke-virtual {p0, v8, v8, v7}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    goto/16 :goto_1

    .line 2630
    :catchall_4
    move-exception v7

    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v7

    .line 2598
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

    .line 2640
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    .line 2641
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 2642
    .local v1, m:Landroid/graphics/Matrix;
    if-eqz p1, :cond_1

    .line 2643
    new-array v3, v6, [F

    fill-array-data v3, :array_0

    .line 2644
    .local v3, t1:[F
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2645
    aget v6, v3, v5

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 2652
    .local v2, retval:Z
    :goto_0
    return v2

    .end local v2           #retval:Z
    :cond_0
    move v2, v5

    .line 2645
    goto :goto_0

    .line 2647
    .end local v3           #t1:[F
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 2648
    .local v4, width:I
    :goto_1
    new-array v3, v6, [F

    int-to-float v6, v4

    aput v6, v3, v5

    const/4 v6, 0x0

    aput v6, v3, v2

    .line 2649
    .restart local v3       #t1:[F
    invoke-virtual {v1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2650
    aget v6, v3, v5

    int-to-float v7, p2

    add-float/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    .restart local v2       #retval:Z
    :goto_2
    goto :goto_0

    .line 2647
    .end local v2           #retval:Z
    .end local v3           #t1:[F
    .end local v4           #width:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v4

    goto :goto_1

    .restart local v3       #t1:[F
    .restart local v4       #width:I
    :cond_3
    move v2, v5

    .line 2650
    goto :goto_2

    .line 2643
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
    .line 2660
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-nez v0, :cond_1

    .line 2700
    :cond_0
    :goto_0
    return-void

    .line 2664
    :cond_1
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->disableDrawing:Z

    if-nez v0, :cond_0

    .line 2665
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawDrmFileName(Landroid/graphics/Canvas;)V

    .line 2666
    iget v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2667
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawCorruptIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2669
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2672
    sget-wide v0, Lcom/htc/opensense/widget/ScaleFastBitmapDrawble;->mUsingFastDrawble:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 2674
    invoke-direct {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->doPinchZoomBouceBack()V

    .line 2675
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->doScrollBounceBack(Landroid/graphics/Canvas;)V

    .line 2676
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 2688
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawVideoIndicator(Landroid/graphics/Canvas;)V

    .line 2689
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawDrmSmallIndicator(Landroid/graphics/Canvas;)V

    .line 2690
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawLoadedIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 2682
    :cond_4
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawZoomImgDirectlyByMatrix(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2684
    invoke-super {p0, p1}, Lcom/htc/opensense/widget/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 2692
    :cond_5
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v0, :cond_6

    .line 2693
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawDrmBigIndicator(Landroid/graphics/Canvas;)V

    .line 2695
    :cond_6
    invoke-direct {p0, p1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->drawLoadedIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    .line 2940
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    .line 2956
    :cond_0
    :goto_0
    return v4

    .line 2942
    :cond_1
    iget-object v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2944
    .local v3, viewImage:Lcom/htc/opensense/widget/FullScreenView;
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v2

    .line 2945
    .local v2, scale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 2947
    .local v0, nscale:F
    const/high16 v5, 0x3f80

    cmpl-float v5, v0, v5

    if-lez v5, :cond_2

    .line 2948
    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v3, v4, v4}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V

    .line 2950
    :cond_2
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v1

    .line 2951
    .local v1, prevScale:F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v6

    invoke-virtual {p0, v0, v5, v6}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomInAt(FFF)V

    .line 2953
    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v3}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2954
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
    .parameter "arg0"

    .prologue
    .line 2961
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->canZoom()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2963
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 2968
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getScale()F

    move-result v0

    .line 2970
    .local v0, scale:F
    cmpg-float v1, v0, v2

    if-gtz v1, :cond_0

    .line 2972
    invoke-virtual {p0, v3}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->switchBitmap(I)V

    .line 2975
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

    .line 2977
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mOnZoomListener:Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;
    invoke-static {v1}, Lcom/htc/opensense/widget/FullScreenView;->access$4100(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;->onPinchZoomEnd()V

    .line 2980
    :cond_1
    iput-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoScrollBounce:Z

    .line 2981
    iput-boolean v4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDoPinchZoomBounce:Z

    .line 2982
    iput v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchState:I

    .line 2983
    iput v5, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mTouchSubState:I

    .line 2984
    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEatDragEvt:I

    .line 2986
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->invalidate()V

    .line 2987
    return-void
.end method

.method public orientationCompensation()V
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1317
    iget-object v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    if-nez v10, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 1320
    .local v6, mat:Landroid/graphics/Matrix;
    if-eqz v6, :cond_0

    .line 1322
    invoke-virtual {v6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v10

    if-nez v10, :cond_0

    .line 1324
    new-array v8, v11, [F

    fill-array-data v8, :array_0

    .line 1325
    .local v8, tl:[F
    new-array v1, v11, [F

    iget-object v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    aput v10, v1, v12

    iget-object v10, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapDisplayed:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    aput v10, v1, v13

    .line 1326
    .local v1, br:[F
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1327
    invoke-virtual {v6, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1328
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getWidth()I

    move-result v9

    .line 1329
    .local v9, w:I
    invoke-virtual {p0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->getHeight()I

    move-result v5

    .line 1330
    .local v5, h:I
    aget v10, v1, v12

    aget v11, v8, v12

    sub-float/2addr v10, v11

    float-to-int v2, v10

    .line 1331
    .local v2, bw:I
    aget v10, v1, v13

    aget v11, v8, v13

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 1332
    .local v0, bh:I
    const/4 v3, 0x0

    .line 1333
    .local v3, deltaX:I
    const/4 v4, 0x0

    .line 1334
    .local v4, deltaY:I
    if-le v0, v5, :cond_4

    .line 1335
    aget v10, v8, v13

    cmpl-float v10, v10, v14

    if-lez v10, :cond_3

    .line 1336
    aget v10, v8, v13

    float-to-int v4, v10

    .line 1346
    :goto_1
    if-le v2, v9, :cond_6

    .line 1347
    aget v10, v8, v12

    cmpl-float v10, v10, v14

    if-lez v10, :cond_5

    .line 1348
    aget v10, v8, v12

    float-to-int v3, v10

    .line 1359
    :goto_2
    if-nez v3, :cond_2

    if-eqz v4, :cond_0

    .line 1360
    :cond_2
    neg-int v10, v3

    int-to-float v10, v10

    neg-int v11, v4

    int-to-float v11, v11

    invoke-virtual {p0, v10, v11}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->panBy(FF)V

    goto :goto_0

    .line 1338
    :cond_3
    aget v10, v1, v13

    float-to-int v10, v10

    sub-int v4, v10, v5

    .line 1339
    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    .line 1343
    :cond_4
    sub-int v10, v5, v0

    div-int/lit8 v7, v10, 0x2

    .line 1344
    .local v7, pos:I
    aget v10, v8, v13

    float-to-int v10, v10

    sub-int v4, v10, v7

    goto :goto_1

    .line 1350
    .end local v7           #pos:I
    :cond_5
    aget v10, v1, v12

    float-to-int v10, v10

    sub-int v3, v10, v9

    .line 1351
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    .line 1355
    :cond_6
    sub-int v10, v9, v2

    div-int/lit8 v7, v10, 0x2

    .line 1356
    .restart local v7       #pos:I
    aget v10, v8, v12

    float-to-int v10, v10

    sub-int v3, v10, v7

    goto :goto_2

    .line 1324
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

    .line 1073
    invoke-super {p0, p1, p2}, Lcom/htc/opensense/widget/ImageViewTouchBase;->postTranslate(FF)V

    .line 1076
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->center(ZZZ)V

    .line 1078
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2920
    invoke-super {p0}, Lcom/htc/opensense/widget/ImageViewTouchBase;->release()V

    .line 2921
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_0

    .line 2922
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 2924
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2925
    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 2927
    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1132
    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1133
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1134
    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

    .line 1135
    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    .line 1136
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1137
    iput-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 1138
    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1139
    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1140
    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 1142
    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1143
    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1144
    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1145
    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1146
    iput-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1147
    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrawMode:I

    .line 1148
    return-void
.end method

.method protected scrollHandler()Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mScroller:Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$500(Lcom/htc/opensense/widget/FullScreenView;)Lcom/htc/opensense/widget/FullScreenView$ScrollHandler;

    move-result-object v0

    .line 1089
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
    .line 1094
    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->DEBUGID:I

    .line 1095
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

    .line 1251
    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    .line 1252
    iput-boolean p3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExpire:Z

    .line 1253
    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mDrmType:I

    .line 1254
    iput-boolean p4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrmThumb:Z

    .line 1255
    iget-boolean v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbDrm:Z

    if-eqz v1, :cond_0

    .line 1256
    const/4 v0, -0x1

    .line 1257
    .local v0, charPos:I
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    .line 1258
    :goto_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFileName:Ljava/lang/String;

    goto :goto_0

    .line 1264
    .end local v0           #charPos:I
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1265
    if-le p5, v3, :cond_1

    .line 1266
    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 1269
    :cond_1
    return-void
.end method

.method public setEnableTrackballScroll(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1061
    iput-boolean p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mEnableTrackballScroll:Z

    .line 1062
    return-void
.end method

.method public setHQBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 1018
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->changeDrawMode(I)V

    .line 1019
    invoke-virtual {p0, p1, v1, v1}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mHQLoaded:Z

    .line 1021
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V
    .locals 2
    .parameter "bitmap"
    .parameter "resetSupp"
    .parameter "isThumb"

    .prologue
    .line 1111
    if-eqz p3, :cond_1

    .line 1112
    iget-boolean v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    if-eqz v0, :cond_1

    .line 1113
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 1117
    :cond_0
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mThumbBitmap:Landroid/graphics/Bitmap;

    .line 1120
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/widget/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 1121
    sget-boolean v0, Lcom/htc/opensense/album/AlbumCommon/Constants;->ENABLE_ZOOM_CONTROLS:Z

    if-eqz v0, :cond_2

    .line 1122
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->name:Ljava/lang/String;

    const-string v1, "image2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1123
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    #calls: Lcom/htc/opensense/widget/FullScreenView;->showOnScreenControls()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$3100(Lcom/htc/opensense/widget/FullScreenView;)V

    .line 1126
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

    .line 1281
    iput p2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mIndex:I

    .line 1282
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    .line 1283
    iput p3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriW:I

    .line 1284
    iput p4, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mBitmapOriH:I

    .line 1285
    iput-boolean p6, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbExif:Z

    .line 1286
    if-eqz p5, :cond_1

    .line 1287
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 1288
    iput-boolean v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mbCorrupt:Z

    .line 1302
    :cond_0
    :goto_0
    return-void

    .line 1290
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    .line 1291
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1293
    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    goto :goto_0

    .line 1294
    :cond_2
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mMimeType:Ljava/lang/String;

    const-string v2, "image/gif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1295
    iget-object v1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/opensense/album/util/ImageUtils;->getGifFrameCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 1296
    .local v0, frameCount:I
    if-le v0, v3, :cond_0

    .line 1297
    iput v3, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mType:I

    goto :goto_0
.end method

.method public setOnlineIndicator(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1239
    iput p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mOnlineLoadingIndicator:I

    .line 1240
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "dataPath"

    .prologue
    .line 2934
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mFilePath:Ljava/lang/String;

    .line 2935
    return-void
.end method

.method public setView(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1069
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->mViewImage:Lcom/htc/opensense/widget/FullScreenView;

    .line 1070
    return-void
.end method

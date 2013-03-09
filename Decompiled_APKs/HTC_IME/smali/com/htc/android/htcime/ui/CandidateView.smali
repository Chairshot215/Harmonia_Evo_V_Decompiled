.class public Lcom/htc/android/htcime/ui/CandidateView;
.super Landroid/view/View;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;,
        Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;,
        Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    }
.end annotation


# static fields
.field public static final CLICK_ON_BOTTOM_BUTTON:I = 0x7

.field public static final CLICK_ON_BUTTON:I = 0x0

.field public static final CLICK_ON_CLOSE_BUTTON:I = 0x6

.field private static final DEBUG:Z = false

.field private static final DOTS:Ljava/lang/String; = "..."

.field private static final EMPTY_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;",
            ">;"
        }
    .end annotation
.end field

.field protected static FIX_WCL_BUTTON_WIDTH:I = 0x0

.field protected static FLOAT_WCL_BUTTON_WIDTH:I = 0x0

.field private static final HEAD_LENGTH:I = 0x3

.field public static final KEY_EVENT_SELCANDWORD:I = 0x2

.field public static final KEY_EVENT_SETNWPWCLINDEX:I = 0x5

.field public static final KEY_EVENT_SETWCLINDEX:I = 0x3

.field public static final KEY_EVENT_WCLBAR_SELECTION_AT_BTN:I = 0x4

.field private static final MAX_SUGGESTIONS:I = 0x20

.field protected static MIN_WIDTH:I = 0x0

.field private static final MSG_DELAY_SEND_KEY_EVENT:I = 0x1

.field protected static final OUT_OF_BOUNDS:I = -0x1

.field protected static final SCROLL_ENABLED:Z = false

.field private static final SCROLL_PIXELS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CV"

.field public static final UPDATE_POSITION_Y:I = 0x1

.field protected static final X_GAP:I = 0x8

.field protected static sPaintFontSize:F


# instance fields
.field private downY:I

.field private m2LinesVisibleCount:I

.field protected m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

.field private mAbleToDrag:Z

.field private mAccum2LinesWidth:I

.field protected mAccumWidth:I

.field protected mAddWordButton:Landroid/graphics/drawable/Drawable;

.field protected mBgPadding:Landroid/graphics/Rect;

.field protected mButtonStateSet:[I

.field private mButtonTopStateSet:[I

.field private mCB:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

.field protected mCandidateBackground:Landroid/graphics/drawable/Drawable;

.field protected mCloseWCLButton:Landroid/graphics/drawable/Drawable;

.field private mCurrentTopTouchWordIndex:I

.field protected mCurrentTouchWordIndex:I

.field protected mDescent:I

.field protected mDropdownBottomButton:Landroid/graphics/drawable/Drawable;

.field protected mDropdownButton:Landroid/graphics/drawable/Drawable;

.field protected mDropdownTopButton:Landroid/graphics/drawable/Drawable;

.field private mFoucsAtTopButton:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field protected mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field protected mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field protected mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

.field private mHandler:Landroid/os/Handler;

.field private mHaveMinimalSuggestion:Z

.field protected mHeight:I

.field protected mIsBeingDragged:Z

.field protected mIsDragged:Z

.field protected mIsShowPreview:Z

.field protected mMaxWidth:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mPressedAtBottomButton:Z

.field protected mPressedAtButton:Z

.field private mPressedAtCloseButton:Z

.field protected mPreview:Lcom/htc/android/htcime/ui/PreviewWindow;

.field protected mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

.field protected mRSpaceReserve:I

.field protected mScrolled:Z

.field protected mSelectedIndex:I

.field protected mSelectedString:Ljava/lang/CharSequence;

.field private mSelectedTopIndex:I

.field private mSelectedTopString:Ljava/lang/CharSequence;

.field protected mSelectionAtButton:Z

.field protected mShowDropdown:Z

.field private mShowingCompletions:Z

.field protected mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;",
            ">;"
        }
    .end annotation
.end field

.field protected mTargetScrollX:I

.field protected mTopCandBackground:Landroid/graphics/drawable/Drawable;

.field protected mTotalWidth:I

.field protected mTouchX:I

.field private mTouchY:I

.field private mTwoLinesSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;",
            ">;"
        }
    .end annotation
.end field

.field protected mTypedWordValid:Z

.field private mVibratorPattern:[J

.field protected mVisibleCount:I

.field protected mWCLBarBackground:Landroid/graphics/drawable/Drawable;

.field protected mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

.field protected mWCLBitmap:Landroid/graphics/drawable/Drawable;

.field private mWCLID:I

.field protected mWordWidth:[I

.field protected mWordX:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/android/htcime/ui/CandidateView;->EMPTY_LIST:Ljava/util/List;

    .line 120
    const/16 v0, 0x38

    sput v0, Lcom/htc/android/htcime/ui/CandidateView;->MIN_WIDTH:I

    .line 121
    sput v1, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    .line 122
    sput v1, Lcom/htc/android/htcime/ui/CandidateView;->FIX_WCL_BUTTON_WIDTH:I

    .line 135
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/htcime/ui/CandidateView;->sPaintFontSize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 306
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    sget-object v0, Lcom/htc/android/htcime/ui/CandidateView;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    .line 74
    sget-object v0, Lcom/htc/android/htcime/ui/CandidateView;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    .line 80
    iput v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    .line 81
    iput v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    .line 115
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordWidth:[I

    .line 116
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    .line 137
    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->downY:I

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVibratorPattern:[J

    .line 141
    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mRSpaceReserve:I

    .line 146
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    .line 147
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsDragged:Z

    .line 148
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAbleToDrag:Z

    .line 151
    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    .line 1557
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsShowPreview:Z

    .line 1721
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateView$2;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/CandidateView$2;-><init>(Lcom/htc/android/htcime/ui/CandidateView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHandler:Landroid/os/Handler;

    .line 308
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->loadConstant(Landroid/content/Context;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/htc/android/htcime/ui/CandidateView;->initRes(Landroid/content/Context;)V

    .line 312
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/htc/android/htcime/ui/CandidateView$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/CandidateView$1;-><init>(Lcom/htc/android/htcime/ui/CandidateView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 341
    invoke-virtual {p0, v3}, Lcom/htc/android/htcime/ui/CandidateView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 342
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/CandidateView;->setWillNotDraw(Z)V

    .line 343
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/CandidateView;->setHorizontalScrollBarEnabled(Z)V

    .line 344
    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/ui/CandidateView;->setVerticalScrollBarEnabled(Z)V

    .line 350
    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    .line 353
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsShowPreview:Z

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Lcom/htc/android/htcime/ui/PreviewWindow;

    invoke-direct {v0, p1}, Lcom/htc/android/htcime/ui/PreviewWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreview:Lcom/htc/android/htcime/ui/PreviewWindow;

    .line 355
    new-instance v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    invoke-direct {v0, p0}, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;-><init>(Lcom/htc/android/htcime/ui/CandidateView;)V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    .line 358
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    .line 360
    return-void

    .line 138
    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/ui/CandidateView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAbleToDrag:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/android/htcime/ui/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/android/htcime/ui/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    return v0
.end method

.method static synthetic access$116(Lcom/htc/android/htcime/ui/CandidateView;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/android/htcime/ui/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTopTouchWordIndex:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/android/htcime/ui/CandidateView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/htcime/ui/CandidateView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/android/htcime/ui/CandidateView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/ui/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    return v0
.end method

.method static synthetic access$524(Lcom/htc/android/htcime/ui/CandidateView;F)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/android/htcime/ui/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/android/htcime/ui/CandidateView;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView;->showPreview(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/android/htcime/ui/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/android/htcime/ui/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingBottom:I

    return v0
.end method

.method private clearDragStatus()V
    .locals 2

    .prologue
    .line 1417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    .line 1418
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v0, v0, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    aget v0, v0, v1

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1419
    const/4 v0, 0x3

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-direct {p0, v0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1420
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 1422
    return-void
.end method

.method private dispatchEventI(II)V
    .locals 2
    .parameter "event"
    .parameter "arg0"

    .prologue
    .line 1615
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCB:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    if-eqz v0, :cond_0

    .line 1616
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCB:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;->eventProcess_I(II)V

    .line 1620
    :goto_0
    return-void

    .line 1618
    :cond_0
    const-string v0, "CV"

    const-string v1, "NULL call back."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private precheckWidth(I)Z
    .locals 8
    .parameter "maxWidth"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1529
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    const/4 v7, 0x2

    if-eq v4, v7, :cond_0

    move v4, v5

    .line 1544
    :goto_0
    return v4

    .line 1533
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v6, :cond_1

    .line 1534
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget v4, v4, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    int-to-float v2, v4

    .line 1535
    .local v2, oldWidth0:F
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget v4, v4, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    int-to-float v3, v4

    .line 1536
    .local v3, oldWidth1:F
    add-float v4, v2, v3

    int-to-float v7, p1

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 1537
    int-to-float v4, p1

    add-float v7, v2, v3

    div-float v7, v2, v7

    mul-float/2addr v4, v7

    float-to-int v0, v4

    .line 1538
    .local v0, newWidth0:I
    sub-int v1, p1, v0

    .line 1539
    .local v1, newWidth1:I
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    invoke-virtual {v4, v0}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->setScaleX(I)V

    .line 1540
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    invoke-virtual {v4, v1}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->setScaleX(I)V

    move v4, v6

    .line 1541
    goto :goto_0

    .end local v0           #newWidth0:I
    .end local v1           #newWidth1:I
    .end local v2           #oldWidth0:F
    .end local v3           #oldWidth1:F
    :cond_1
    move v4, v5

    .line 1544
    goto :goto_0
.end method

.method private removeHighlight()V
    .locals 1

    .prologue
    .line 1515
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    .line 1516
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 1517
    return-void
.end method

.method private showPreview(ILjava/lang/String;)V
    .locals 0
    .parameter "wordIndex"
    .parameter "altText"

    .prologue
    .line 1512
    return-void
.end method

.method private tweakTwoLinesWCLWidth()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 994
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    if-nez v7, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 997
    :cond_0
    iput v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    .line 998
    const/4 v6, 0x0

    .line 999
    .local v6, width:I
    iput v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    .line 1004
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 1005
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    .line 1007
    .local v5, tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    if-eq v1, v9, :cond_2

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    div-int/lit8 v3, v7, 0x2

    .line 1010
    .local v3, maxWordWidth:I
    :goto_2
    invoke-virtual {v5, v3}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->isTextCompressed(I)Z

    move-result v4

    .line 1011
    .local v4, textCompressed:Z
    iget v6, v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 1014
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    add-int/2addr v7, v6

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    if-gt v7, v8, :cond_1

    .line 1016
    if-eqz v4, :cond_3

    .line 1017
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    .line 1018
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    .line 1020
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    .line 1033
    :goto_3
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    sub-int/2addr v7, v8

    sget v8, Lcom/htc/android/htcime/ui/CandidateView;->MIN_WIDTH:I

    if-ge v7, v8, :cond_4

    .line 1036
    .end local v3           #maxWordWidth:I
    .end local v4           #textCompressed:Z
    .end local v5           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_1
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    sub-int/2addr v7, v8

    sget v8, Lcom/htc/android/htcime/ui/CandidateView;->MIN_WIDTH:I

    shr-int/lit8 v8, v8, 0x1

    if-ge v7, v8, :cond_5

    .line 1038
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    if-ge v2, v7, :cond_5

    .line 1039
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    sub-int/2addr v8, v2

    div-int v0, v7, v8

    .line 1041
    .local v0, extraWidth:I
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget v8, v7, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    add-int/2addr v8, v0

    iput v8, v7, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 1042
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    .line 1038
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1007
    .end local v0           #extraWidth:I
    .end local v2           #j:I
    .restart local v5       #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_2
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    sub-int v3, v7, v8

    goto :goto_2

    .line 1025
    .restart local v3       #maxWordWidth:I
    .restart local v4       #textCompressed:Z
    :cond_3
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    .line 1026
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    .line 1027
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    iget v8, v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    goto :goto_3

    .line 1004
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1045
    .end local v3           #maxWordWidth:I
    .end local v4           #textCompressed:Z
    .end local v5           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_5
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    .line 1046
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v7}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    iput v8, v7, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectTopIdxLimit:I

    goto/16 :goto_0
.end method

.method private updateScrollPosition(I)V
    .locals 1
    .parameter "targetX"

    .prologue
    .line 1284
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    if-eq p1, v0, :cond_0

    .line 1286
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTargetScrollX:I

    .line 1287
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->requestLayout()V

    .line 1288
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 1289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrolled:Z

    .line 1291
    :cond_0
    return-void
.end method


# virtual methods
.method public ClearTwoLinesWCL()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 1306
    iput v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;

    .line 1308
    iput v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    .line 1309
    return-void
.end method

.method public calWCLBarWidth()I
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v0, 0x0

    .line 1687
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1699
    :cond_0
    :goto_0
    return v0

    .line 1689
    :cond_1
    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    if-eqz v3, :cond_0

    .line 1691
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 1693
    .local v0, isCurLandHWR:Z
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v3, v3, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v3, v6, :cond_3

    sget v1, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    .line 1696
    .local v1, nBtnWidth:I
    :goto_1
    sget-boolean v3, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-eq v6, v3, :cond_4

    if-eqz v0, :cond_4

    mul-int/lit8 v2, v1, 0x2

    .line 1699
    .local v2, nTotalBtnWidth:I
    :goto_2
    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mRSpaceReserve:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mRSpaceReserve:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    add-int v0, v3, v4

    goto :goto_0

    .line 1693
    .end local v1           #nBtnWidth:I
    .end local v2           #nTotalBtnWidth:I
    :cond_3
    sget v1, Lcom/htc/android/htcime/ui/CandidateView;->FIX_WCL_BUTTON_WIDTH:I

    goto :goto_1

    .restart local v1       #nBtnWidth:I
    :cond_4
    move v2, v1

    .line 1696
    goto :goto_2
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1295
    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    .line 1296
    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1297
    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;

    .line 1298
    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1299
    iput-boolean v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    .line 1300
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 1301
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordWidth:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1302
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 1303
    return-void
.end method

.method public clearDragged()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1436
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsDragged:Z

    .line 1438
    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    .line 1440
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTotalWidth:I

    return v0
.end method

.method protected dismissPreview()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1593
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsShowPreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreview:Lcom/htc/android/htcime/ui/PreviewWindow;

    if-eqz v0, :cond_0

    .line 1594
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreview:Lcom/htc/android/htcime/ui/PreviewWindow;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/PreviewWindow;->dismiss()V

    .line 1595
    const/4 v5, -0x1

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/android/htcime/ui/CandidateView;->updatePreviewInfo(IIIIIZ)V

    .line 1597
    :cond_0
    return-void
.end method

.method protected displayPreview(ILcom/htc/android/htcime/ui/CandidateView$PreviewInfo;)V
    .locals 18
    .parameter "i"
    .parameter "mPreviewInfo"

    .prologue
    .line 1561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPreview:Lcom/htc/android/htcime/ui/PreviewWindow;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsShowPreview:Z

    if-nez v1, :cond_1

    .line 1590
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    const/4 v1, 0x2

    new-array v12, v1, [I

    .local v12, parentOffsetOnScreen:[I
    const/4 v1, 0x2

    new-array v9, v1, [I

    .local v9, SIPOffsetOnScreen:[I
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 1565
    .local v8, SIPOffsetInWindow:[I
    const/4 v11, 0x1

    .line 1566
    .local v11, o:I
    const/16 v16, 0x0

    .local v16, positionY:I
    const/4 v15, 0x0

    .local v15, positionX:I
    const/4 v14, 0x0

    .local v14, popupWidth:I
    const/4 v13, 0x0

    .line 1567
    .local v13, popupHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ui/CandidateView;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 1568
    .local v10, mScreenWidth:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/htc/android/htcime/ui/CandidateView;->getLocationOnScreen([I)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v9}, Lcom/htc/android/htcime/HTCIMMView;->getLocationOnScreen([I)V

    .line 1571
    move-object/from16 v0, p2

    iget v1, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mWidth:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v14, v1

    .line 1572
    move-object/from16 v0, p2

    iget v1, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mHeight:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    double-to-int v13, v1

    .line 1573
    move-object/from16 v0, p2

    iget v1, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->x:I

    move-object/from16 v0, p2

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-double v1, v1

    move-object/from16 v0, p2

    iget v3, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mWidth:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000

    div-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int v15, v1

    .line 1574
    if-gez v15, :cond_3

    const/4 v15, 0x0

    .line 1576
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v11, v1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1578
    :goto_2
    const/4 v1, 0x1

    if-ne v11, v1, :cond_4

    .line 1579
    const/4 v1, 0x1

    aget v1, v9, v1

    const/4 v2, 0x1

    aget v2, v12, v2

    sub-int/2addr v1, v2

    rsub-int/lit8 v1, v1, 0x0

    int-to-double v1, v1

    move-object/from16 v0, p2

    iget v3, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mHeight:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v16, v0

    .line 1586
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPreview:Lcom/htc/android/htcime/ui/PreviewWindow;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget-object v1, v1, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    sget v3, Lcom/htc/android/htcime/ui/CandidateView;->sPaintFontSize:F

    invoke-virtual {v2, v1, v3}, Lcom/htc/android/htcime/ui/PreviewWindow;->setContent(Ljava/lang/String;F)Lcom/htc/android/htcime/ui/PreviewWindow;

    move-result-object v1

    invoke-virtual {v1, v14, v13}, Lcom/htc/android/htcime/ui/PreviewWindow;->setDimension(II)Lcom/htc/android/htcime/ui/PreviewWindow;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    move/from16 v0, v16

    invoke-virtual {v1, v2, v15, v0}, Lcom/htc/android/htcime/ui/PreviewWindow;->show(Landroid/view/View;II)V

    .line 1589
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/htc/android/htcime/ui/CandidateView;->updatePreviewInfo(IIIIIZ)V

    goto/16 :goto_0

    .line 1574
    :cond_3
    add-int v1, v15, v14

    if-le v1, v10, :cond_2

    sub-int v15, v10, v14

    goto :goto_1

    .line 1581
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    invoke-virtual {v1, v8}, Lcom/htc/android/htcime/HTCIMMView;->getLocationInWindow([I)V

    .line 1582
    const/4 v1, 0x1

    aget v1, v9, v1

    const/4 v2, 0x1

    aget v2, v8, v2

    sub-int v17, v1, v2

    .line 1583
    .local v17, status_bar_height:I
    const/4 v1, 0x1

    aget v1, v12, v1

    int-to-double v1, v1

    move-object/from16 v0, p2

    iget v3, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mHeight:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3ff8

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    move/from16 v0, v17

    int-to-double v3, v0

    sub-double/2addr v1, v3

    double-to-int v0, v1

    move/from16 v16, v0

    goto :goto_3

    .line 1577
    .end local v17           #status_bar_height:I
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 34
    .parameter "canvas"

    .prologue
    .line 464
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->dismissPreview()V

    .line 467
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTotalWidth:I

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    if-nez v2, :cond_2

    .line 799
    :cond_1
    :goto_0
    return-void

    .line 470
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v9, 0x3

    aget-object v7, v7, v9

    if-ne v2, v7, :cond_10

    const/16 v24, 0x1

    .line 472
    .local v24, isCurLandHWR:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I

    sub-int/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingBottom:I

    sub-int v6, v2, v7

    .line 473
    .local v6, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    if-nez v2, :cond_3

    .line 474
    new-instance v2, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v2, v7, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 477
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_11

    .line 478
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 491
    :cond_3
    :goto_2
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v2, :cond_13

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-eq v2, v7, :cond_13

    if-eqz v24, :cond_13

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    mul-int/lit8 v25, v2, 0x2

    .line 495
    .local v25, nTotalBtnWidth:I
    :goto_3
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    sub-int/2addr v2, v7

    sub-int v2, v2, v25

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mRSpaceReserve:I

    sub-int/2addr v2, v7

    div-int/lit8 v3, v2, 0x2

    .line 497
    .local v3, x:I
    if-gez v3, :cond_4

    const/4 v3, 0x0

    .line 498
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtCloseButton:Z

    .line 500
    if-eqz p1, :cond_6

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v2, :cond_6

    if-eqz v24, :cond_6

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-eq v2, v7, :cond_6

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCloseWCLButton:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/htc/android/htcime/ui/CandidateView;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 506
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    if-lt v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    sget v7, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    add-int/2addr v7, v3

    if-ge v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mScrolled:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_5

    .line 507
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtCloseButton:Z

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCloseWCLButton:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/htc/android/htcime/ui/CandidateView;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 512
    :cond_5
    int-to-float v2, v3

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 513
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCloseWCLButton:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 515
    neg-int v2, v3

    int-to-float v2, v2

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 516
    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    add-int/2addr v3, v2

    .line 520
    :cond_6
    if-eqz p1, :cond_14

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_14

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHeight:I

    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 522
    int-to-float v2, v3

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 523
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 524
    neg-int v2, v3

    int-to-float v2, v2

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 541
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    add-int/2addr v3, v2

    .line 542
    move/from16 v17, v3

    .line 544
    .local v17, Topx:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    .line 545
    .local v18, count:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v19

    .line 548
    .local v19, countTop:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 549
    .local v13, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    move/from16 v30, v0

    .line 550
    .local v30, touchX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    move/from16 v31, v0

    .line 551
    .local v31, touchY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    move/from16 v26, v0

    .line 552
    .local v26, scrollX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/android/htcime/ui/CandidateView;->mScrolled:Z

    move/from16 v27, v0

    .line 554
    .local v27, scrolled:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    add-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDescent:I

    int-to-float v7, v7

    sub-float/2addr v2, v7

    float-to-int v2, v2

    div-int/lit8 v4, v2, 0x2

    .line 556
    .local v4, y:I
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_8

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    add-float/2addr v2, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDescent:I

    int-to-float v7, v7

    sub-float/2addr v2, v7

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDescent:I

    sub-int v4, v2, v7

    .line 559
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDescent:I

    int-to-float v7, v7

    sub-float/2addr v2, v7

    float-to-int v2, v2

    mul-int/lit8 v14, v2, 0x2

    .line 560
    .local v14, TopY:I
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    .line 565
    const/16 v23, 0x0

    .local v23, i:I
    :goto_5
    move/from16 v0, v23

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    .line 567
    .local v22, currentSuggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_16

    .line 660
    .end local v22           #currentSuggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_9
    const/16 v23, 0x0

    :goto_6
    move/from16 v0, v23

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 662
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-eq v2, v7, :cond_27

    .line 739
    :cond_a
    move/from16 v0, v17

    if-lt v3, v0, :cond_37

    .line 741
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsShowPreview:Z

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iget-boolean v2, v2, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mUpdate:Z

    if-eqz v2, :cond_b

    .line 742
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/htc/android/htcime/ui/CandidateView;->displayPreview(ILcom/htc/android/htcime/ui/CandidateView$PreviewInfo;)V

    .line 744
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtButton:Z

    .line 745
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtBottomButton:Z

    .line 747
    if-eqz p1, :cond_f

    .line 748
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    add-int/2addr v3, v2

    .line 749
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownTopButton:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    .line 752
    .local v33, visibleButton:Landroid/graphics/drawable/Drawable;
    :goto_8
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_3a

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownBottomButton:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 762
    :cond_c
    :goto_9
    move/from16 v0, v30

    if-lt v0, v3, :cond_d

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    add-int/2addr v2, v3

    move/from16 v0, v30

    if-ge v0, v2, :cond_d

    if-nez v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_d

    .line 764
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_3c

    .line 765
    div-int/lit8 v2, v6, 0x2

    move/from16 v0, v31

    if-le v0, v2, :cond_3b

    .line 766
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtBottomButton:Z

    .line 767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    array-length v2, v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_d

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownBottomButton:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/htc/android/htcime/ui/CandidateView;->PRESSED_STATE_SET:[I

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 783
    :cond_d
    :goto_a
    int-to-float v2, v3

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 784
    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 785
    neg-int v2, v3

    int-to-float v2, v2

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 787
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_e

    .line 788
    int-to-float v2, v3

    div-int/lit8 v7, v6, 0x2

    add-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownBottomButton:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 790
    neg-int v2, v3

    int-to-float v2, v2

    neg-int v7, v6

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, -0x2

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 792
    :cond_e
    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    add-int/2addr v3, v2

    .line 795
    .end local v33           #visibleButton:Landroid/graphics/drawable/Drawable;
    :cond_f
    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTotalWidth:I

    .line 796
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTargetScrollX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    if-eq v2, v7, :cond_1

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->scrollToTarget()V

    goto/16 :goto_0

    .line 470
    .end local v3           #x:I
    .end local v4           #y:I
    .end local v6           #height:I
    .end local v13           #paint:Landroid/graphics/Paint;
    .end local v14           #TopY:I
    .end local v17           #Topx:I
    .end local v18           #count:I
    .end local v19           #countTop:I
    .end local v23           #i:I
    .end local v24           #isCurLandHWR:Z
    .end local v25           #nTotalBtnWidth:I
    .end local v26           #scrollX:I
    .end local v27           #scrolled:Z
    .end local v30           #touchX:I
    .end local v31           #touchY:I
    :cond_10
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 480
    .restart local v6       #height:I
    .restart local v24       #isCurLandHWR:Z
    :cond_11
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_12

    if-eqz v24, :cond_12

    .line 483
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto/16 :goto_2

    .line 485
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto/16 :goto_2

    .line 491
    :cond_13
    sget v25, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    goto/16 :goto_3

    .line 527
    .restart local v3       #x:I
    .restart local v25       #nTotalBtnWidth:I
    :cond_14
    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_15

    if-eqz v24, :cond_15

    .line 530
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHeight:I

    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 531
    int-to-float v2, v3

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 532
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 533
    neg-int v2, v3

    int-to-float v2, v2

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4

    .line 535
    :cond_15
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHeight:I

    invoke-virtual {v2, v7, v9, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 537
    int-to-float v2, v3

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 538
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 539
    neg-int v2, v3

    int-to-float v2, v2

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4

    .line 570
    .restart local v4       #y:I
    .restart local v13       #paint:Landroid/graphics/Paint;
    .restart local v14       #TopY:I
    .restart local v17       #Topx:I
    .restart local v18       #count:I
    .restart local v19       #countTop:I
    .restart local v22       #currentSuggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    .restart local v23       #i:I
    .restart local v26       #scrollX:I
    .restart local v27       #scrolled:Z
    .restart local v30       #touchX:I
    .restart local v31       #touchY:I
    :cond_16
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 571
    .local v28, suggestion:Ljava/lang/CharSequence;
    if-nez v28, :cond_17

    .line 565
    :goto_b
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_5

    .line 574
    :cond_17
    move-object/from16 v0, v22

    iget v5, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 576
    .local v5, wordWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWordWidth:[I

    aget v2, v2, v23

    if-nez v2, :cond_18

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWordWidth:[I

    aput v5, v2, v23

    .line 580
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    aput v3, v2, v23

    .line 582
    add-int v2, v30, v26

    if-lt v2, v3, :cond_1a

    add-int v2, v30, v26

    add-int v7, v3, v5

    if-ge v2, v7, :cond_1a

    if-nez v27, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_1a

    .line 583
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_19

    div-int/lit8 v2, v6, 0x2

    move/from16 v0, v31

    if-le v0, v2, :cond_1a

    .line 585
    :cond_19
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 586
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    .line 591
    :cond_1a
    if-nez v23, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTypedWordValid:Z

    if-eqz v2, :cond_21

    .line 592
    const/4 v2, -0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_20

    .line 594
    sget-object v20, Lcom/htc/android/htcime/ui/CandidateView;->PRESSED_FOCUSED_STATE_SET:[I

    .line 595
    .local v20, currentState:[I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsShowPreview:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iget v2, v2, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mCutIdx:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-eq v2, v7, :cond_1b

    .line 596
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/htcime/ui/CandidateView;->updatePreviewInfo(IIIIIZ)V

    .line 621
    :cond_1b
    :goto_c
    if-eqz p1, :cond_1c

    .line 622
    int-to-float v2, v3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 626
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v7, :cond_25

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    div-int/lit8 v9, v6, 0x2

    invoke-virtual {v2, v7, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 631
    :goto_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 632
    neg-int v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I

    neg-int v7, v7

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 635
    :cond_1c
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasScaleX:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 636
    move-object/from16 v0, v22

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->scaleRatio:F

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 638
    :cond_1d
    move-object/from16 v0, v22

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    int-to-float v2, v2

    move-object/from16 v0, v22

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    sub-float/2addr v2, v7

    const/high16 v7, 0x4000

    div-float v29, v2, v7

    .line 641
    .local v29, textOffsetX:F
    if-eqz p1, :cond_1e

    .line 642
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasUnderLine:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 644
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeft:Ljava/lang/String;

    int-to-float v7, v3

    add-float v7, v7, v29

    int-to-float v9, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 645
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 646
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrRight:Ljava/lang/String;

    int-to-float v7, v3

    move-object/from16 v0, v22

    iget v9, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->subStrLeftWidth:F

    add-float/2addr v7, v9

    add-float v7, v7, v29

    int-to-float v9, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v9, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 648
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 653
    :cond_1e
    :goto_e
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasScaleX:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 654
    const/high16 v2, 0x3f80

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 656
    :cond_1f
    add-int/2addr v3, v5

    goto/16 :goto_b

    .line 600
    .end local v20           #currentState:[I
    .end local v29           #textOffsetX:F
    :cond_20
    sget-object v20, Lcom/htc/android/htcime/ui/CandidateView;->FOCUSED_STATE_SET:[I

    .restart local v20       #currentState:[I
    goto/16 :goto_c

    .line 602
    .end local v20           #currentState:[I
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-nez v2, :cond_23

    .line 603
    const/4 v2, -0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 604
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 605
    sget-object v20, Lcom/htc/android/htcime/ui/CandidateView;->PRESSED_SELECTED_STATE_SET:[I

    .line 606
    .restart local v20       #currentState:[I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsShowPreview:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iget v2, v2, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mCutIdx:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-eq v2, v7, :cond_1b

    .line 607
    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/htc/android/htcime/ui/CandidateView;->updatePreviewInfo(IIIIIZ)V

    goto/16 :goto_c

    .line 611
    .end local v20           #currentState:[I
    :cond_22
    sget-object v20, Lcom/htc/android/htcime/ui/CandidateView;->SELECTED_STATE_SET:[I

    .restart local v20       #currentState:[I
    goto/16 :goto_c

    .line 614
    .end local v20           #currentState:[I
    :cond_23
    const/high16 v2, -0x100

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 615
    if-nez v23, :cond_24

    .line 616
    sget-object v20, Lcom/htc/android/htcime/ui/CandidateView;->ENABLED_STATE_SET:[I

    .restart local v20       #currentState:[I
    goto/16 :goto_c

    .line 618
    .end local v20           #currentState:[I
    :cond_24
    sget-object v20, Lcom/htc/android/htcime/ui/CandidateView;->EMPTY_STATE_SET:[I

    .restart local v20       #currentState:[I
    goto/16 :goto_c

    .line 630
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v9, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_d

    .line 651
    .restart local v29       #textOffsetX:F
    :cond_26
    const/4 v9, 0x0

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v10

    int-to-float v2, v3

    add-float v11, v2, v29

    int-to-float v12, v4

    move-object/from16 v7, p1

    move-object/from16 v8, v28

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_e

    .line 665
    .end local v5           #wordWidth:I
    .end local v20           #currentState:[I
    .end local v22           #currentSuggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    .end local v28           #suggestion:Ljava/lang/CharSequence;
    .end local v29           #textOffsetX:F
    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v23

    if-ge v0, v2, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    move/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    move-object/from16 v32, v2

    .line 667
    .local v32, two_lines_Suggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :goto_f
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 670
    if-eqz v32, :cond_29

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    .line 671
    .local v8, suggestion_tow_lines:Ljava/lang/CharSequence;
    :goto_10
    if-nez v8, :cond_2a

    .line 660
    :goto_11
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 665
    .end local v8           #suggestion_tow_lines:Ljava/lang/CharSequence;
    .end local v32           #two_lines_Suggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_28
    const/16 v32, 0x0

    goto :goto_f

    .line 670
    .restart local v32       #two_lines_Suggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_29
    const/4 v8, 0x0

    goto :goto_10

    .line 673
    .restart local v8       #suggestion_tow_lines:Ljava/lang/CharSequence;
    :cond_2a
    if-eqz v32, :cond_31

    move-object/from16 v0, v32

    iget v0, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    move/from16 v16, v0

    .line 676
    .local v16, TopwordWidth:I
    :goto_12
    add-int v2, v30, v26

    move/from16 v0, v17

    if-lt v2, v0, :cond_2b

    add-int v2, v30, v26

    add-int v7, v17, v16

    if-ge v2, v7, :cond_2b

    if-nez v27, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_2b

    .line 678
    div-int/lit8 v2, v6, 0x2

    move/from16 v0, v31

    if-gt v0, v2, :cond_2b

    .line 679
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;

    .line 680
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTopTouchWordIndex:I

    .line 685
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_33

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-nez v2, :cond_33

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/ui/CandidateView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 687
    sget-object v21, Lcom/htc/android/htcime/ui/CandidateView;->PRESSED_SELECTED_STATE_SET:[I

    .line 701
    .local v21, currentStateTop:[I
    :goto_13
    if-eqz p1, :cond_2d

    .line 702
    move/from16 v0, v17

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 704
    if-eqz v8, :cond_2c

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTopCandBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTopCandBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    const/4 v9, 0x0

    div-int/lit8 v10, v6, 0x2

    add-int/lit8 v10, v10, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v7, v9, v0, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mTopCandBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 709
    :cond_2c
    move/from16 v0, v17

    neg-int v2, v0

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I

    neg-int v7, v7

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 712
    :cond_2d
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasScaleX:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 713
    move-object/from16 v0, v32

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->scaleRatio:F

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 715
    :cond_2e
    if-eqz v32, :cond_35

    move-object/from16 v0, v32

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    int-to-float v2, v2

    move-object/from16 v0, v32

    iget v7, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->wordWidth:F

    sub-float/2addr v2, v7

    const/high16 v7, 0x4000

    div-float v15, v2, v7

    .line 719
    .local v15, ToptextOffsetX:F
    :goto_14
    if-eqz p1, :cond_2f

    .line 720
    if-eqz v8, :cond_2f

    const-string v2, ""

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 721
    const/high16 v2, -0x100

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 722
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    if-eqz v2, :cond_36

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    move/from16 v0, v23

    if-ne v2, v0, :cond_36

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-nez v2, :cond_36

    .line 724
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 725
    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move/from16 v0, v17

    int-to-float v2, v0

    add-float v11, v2, v15

    int-to-float v12, v14

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 726
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 732
    :cond_2f
    :goto_15
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->hasScaleX:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 733
    const/high16 v2, 0x3f80

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 735
    :cond_30
    add-int v17, v17, v16

    goto/16 :goto_11

    .line 673
    .end local v15           #ToptextOffsetX:F
    .end local v16           #TopwordWidth:I
    .end local v21           #currentStateTop:[I
    :cond_31
    const/16 v16, 0x0

    goto/16 :goto_12

    .line 690
    .restart local v16       #TopwordWidth:I
    :cond_32
    sget-object v21, Lcom/htc/android/htcime/ui/CandidateView;->SELECTED_STATE_SET:[I

    .restart local v21       #currentStateTop:[I
    goto/16 :goto_13

    .line 693
    .end local v21           #currentStateTop:[I
    :cond_33
    if-nez v23, :cond_34

    .line 694
    sget-object v21, Lcom/htc/android/htcime/ui/CandidateView;->ENABLED_STATE_SET:[I

    .restart local v21       #currentStateTop:[I
    goto/16 :goto_13

    .line 696
    .end local v21           #currentStateTop:[I
    :cond_34
    sget-object v21, Lcom/htc/android/htcime/ui/CandidateView;->EMPTY_STATE_SET:[I

    .restart local v21       #currentStateTop:[I
    goto/16 :goto_13

    .line 715
    :cond_35
    const/4 v15, 0x0

    goto :goto_14

    .line 729
    .restart local v15       #ToptextOffsetX:F
    :cond_36
    const/4 v9, 0x0

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v10

    move/from16 v0, v17

    int-to-float v2, v0

    add-float v11, v2, v15

    int-to-float v12, v14

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto :goto_15

    .end local v8           #suggestion_tow_lines:Ljava/lang/CharSequence;
    .end local v15           #ToptextOffsetX:F
    .end local v16           #TopwordWidth:I
    .end local v21           #currentStateTop:[I
    .end local v32           #two_lines_Suggestion:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_37
    move/from16 v3, v17

    .line 739
    goto/16 :goto_7

    .line 749
    :cond_38
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mShowDropdown:Z

    if-eqz v2, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    goto/16 :goto_8

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/ui/CandidateView;->mAddWordButton:Landroid/graphics/drawable/Drawable;

    move-object/from16 v33, v0

    goto/16 :goto_8

    .line 756
    .restart local v33       #visibleButton:Landroid/graphics/drawable/Drawable;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v2, :cond_c

    .line 759
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownBottomButton:Landroid/graphics/drawable/Drawable;

    sget-object v7, Lcom/htc/android/htcime/ui/CandidateView;->EMPTY_STATE_SET:[I

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_9

    .line 771
    :cond_3b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtButton:Z

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    array-length v2, v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_d

    .line 773
    sget-object v2, Lcom/htc/android/htcime/ui/CandidateView;->PRESSED_STATE_SET:[I

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_a

    .line 777
    :cond_3c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtButton:Z

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    array-length v2, v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_d

    .line 780
    sget-object v2, Lcom/htc/android/htcime/ui/CandidateView;->PRESSED_STATE_SET:[I

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_a
.end method

.method public getCandidateCount()I
    .locals 1

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragStatus()Z
    .locals 1

    .prologue
    .line 1447
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAbleToDrag:Z

    return v0
.end method

.method public getPaddingSpace()I
    .locals 2

    .prologue
    .line 1681
    sget v0, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWCLID()I
    .locals 1

    .prologue
    .line 1670
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    return v0
.end method

.method public getWCLSelectionAtButton()Z
    .locals 1

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    return v0
.end method

.method protected initRes(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    .line 255
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCandidateBackground:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    .line 260
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    .line 261
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAddWordButton:Landroid/graphics/drawable/Drawable;

    .line 264
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAddWordButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAddWordButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 267
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->mIsChaCha:Z

    if-eqz v1, :cond_0

    .line 268
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020123

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTopCandBackground:Landroid/graphics/drawable/Drawable;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownTopButton:Landroid/graphics/drawable/Drawable;

    .line 273
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownTopButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownTopButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownBottomButton:Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownBottomButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownBottomButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 281
    :cond_0
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v1, :cond_1

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02013e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCloseWCLButton:Landroid/graphics/drawable/Drawable;

    .line 284
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCloseWCLButton:Landroid/graphics/drawable/Drawable;

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCloseWCLButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    :cond_1
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 291
    .local v0, inflate:Landroid/view/LayoutInflater;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 292
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 293
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 294
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->sPaintFontSize:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 295
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 296
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDescent:I

    .line 298
    return-void
.end method

.method public isDragged()Z
    .locals 1

    .prologue
    .line 1432
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsDragged:Z

    return v0
.end method

.method public isFoucsAtTop()Z
    .locals 1

    .prologue
    .line 1710
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    return v0
.end method

.method loadConstant(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 367
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sput v1, Lcom/htc/android/htcime/ui/CandidateView;->sPaintFontSize:F

    .line 372
    return-void
.end method

.method public onDpadKeyEventDown(I)Z
    .locals 8
    .parameter "keyCode"

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x2

    .line 1083
    const/4 v0, 0x0

    .line 1084
    .local v0, bRet:Z
    packed-switch p1, :pswitch_data_0

    .line 1243
    :cond_0
    :goto_0
    return v0

    .line 1086
    :pswitch_0
    const/4 v0, 0x1

    .line 1088
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v2, :cond_2

    .line 1089
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1090
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    .line 1091
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;

    .line 1092
    const/4 v2, 0x5

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    invoke-direct {p0, v2, v3}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1093
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto :goto_0

    .line 1096
    :cond_1
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    array-length v2, v2

    if-eq v2, v4, :cond_0

    .line 1097
    sget-object v2, Landroid/view/View;->SELECTED_STATE_SET:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    .line 1098
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    .line 1099
    const/4 v2, 0x4

    invoke-direct {p0, v2, v6}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1100
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto :goto_0

    .line 1104
    :cond_2
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 1105
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1106
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1107
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-direct {p0, v7, v2}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1108
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto :goto_0

    .line 1111
    :cond_3
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    array-length v2, v2

    if-eq v2, v4, :cond_0

    .line 1112
    sget-object v2, Landroid/view/View;->SELECTED_STATE_SET:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    .line 1113
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    .line 1114
    const/4 v2, 0x4

    invoke-direct {p0, v2, v6}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1115
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1120
    :pswitch_1
    const/4 v0, 0x1

    .line 1122
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v3, :cond_6

    .line 1124
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-eqz v3, :cond_5

    .line 1125
    sget-object v3, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    .line 1126
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    .line 1130
    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v3, :cond_4

    .line 1131
    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1132
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesVisibleCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    .line 1134
    :cond_4
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1143
    :cond_5
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    if-lt v2, v3, :cond_0

    .line 1144
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    .line 1145
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;

    .line 1146
    const/4 v2, 0x5

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    invoke-direct {p0, v2, v3}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1147
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1153
    :cond_6
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-eqz v3, :cond_8

    .line 1154
    sget-object v3, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    .line 1155
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    .line 1158
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v2, :cond_7

    .line 1159
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1160
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1163
    :cond_8
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-ne v2, v6, :cond_9

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 1164
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1165
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1166
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-direct {p0, v7, v2}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1167
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1169
    :cond_9
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-lt v2, v3, :cond_0

    .line 1170
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1171
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1172
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-direct {p0, v7, v2}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1173
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1179
    :pswitch_2
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v3, :cond_0

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-ne v6, v3, :cond_a

    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-eqz v3, :cond_0

    .line 1183
    :cond_a
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    .line 1184
    const/4 v0, 0x1

    .line 1186
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-eqz v3, :cond_b

    .line 1187
    sget-object v2, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    .line 1188
    sget-object v2, Landroid/view/View;->SELECTED_STATE_SET:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    .line 1189
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1191
    :cond_b
    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-lt v3, v4, :cond_0

    .line 1192
    const/16 v3, 0xff

    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    if-ne v3, v4, :cond_d

    :goto_1
    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    .line 1193
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    iget-object v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v3, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v3}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v3

    iget v3, v3, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectTopIdxLimit:I

    if-lt v2, v3, :cond_c

    .line 1194
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v2, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v2}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v2

    iget v2, v2, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectTopIdxLimit:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    .line 1195
    :cond_c
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;

    .line 1196
    const/4 v2, 0x5

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    invoke-direct {p0, v2, v3}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1197
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1192
    :cond_d
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    goto :goto_1

    .line 1203
    :pswitch_3
    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v3, :cond_0

    const/16 v3, 0xff

    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    if-ne v3, v4, :cond_e

    iget-boolean v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-eqz v3, :cond_0

    .line 1208
    :cond_e
    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    .line 1209
    const/4 v0, 0x1

    .line 1211
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-eqz v2, :cond_f

    .line 1212
    sget-object v2, Landroid/view/View;->SELECTED_STATE_SET:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    .line 1213
    sget-object v2, Landroid/view/View;->EMPTY_STATE_SET:[I

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    .line 1214
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1216
    :cond_f
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    if-lt v2, v3, :cond_0

    .line 1218
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget-object v2, v2, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->candidateStr:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 1219
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-direct {p0, v7, v2}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1220
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1224
    :pswitch_4
    const/4 v0, 0x1

    .line 1225
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingBottom:I

    sub-int v1, v2, v3

    .line 1226
    .local v1, height:I
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-eqz v2, :cond_11

    .line 1229
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    if-nez v2, :cond_10

    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v2, :cond_10

    .line 1230
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    .line 1232
    :cond_10
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTotalWidth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    .line 1233
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ui/CandidateView;->setPressed(Z)V

    .line 1234
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1236
    :cond_11
    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-ltz v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    array-length v2, v2

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    if-le v2, v3, :cond_0

    .line 1237
    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    .line 1238
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ui/CandidateView;->setPressed(Z)V

    .line 1239
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1084
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onDpadKeyEventUp(I)Z
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x2

    .line 1052
    const/4 v0, 0x0

    .line 1053
    .local v0, bRet:Z
    packed-switch p1, :pswitch_data_0

    .line 1079
    :goto_0
    return v0

    .line 1055
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ui/CandidateView;->setPressed(Z)V

    .line 1056
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    if-eqz v1, :cond_4

    .line 1057
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mShowDropdown:Z

    if-eqz v1, :cond_2

    .line 1059
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v2, v1, :cond_1

    .line 1060
    const/4 v1, 0x7

    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    invoke-direct {p0, v1, v2}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1075
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 1076
    const/4 v0, 0x1

    goto :goto_0

    .line 1062
    :cond_1
    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    invoke-direct {p0, v4, v1}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1065
    :cond_2
    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-nez v1, :cond_3

    .line 1066
    invoke-direct {p0, v2, v3}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1067
    :cond_3
    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1068
    const/4 v1, 0x5

    invoke-direct {p0, v1, v3}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1071
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 1072
    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    invoke-direct {p0, v2, v1}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1073
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->dismissPreview()V

    goto :goto_1

    .line 1053
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "me"

    .prologue
    const/4 v10, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 1314
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v4, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    if-eqz v4, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return v8

    .line 1317
    :cond_1
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1321
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1322
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 1323
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 1324
    .local v3, y:I
    iput v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    .line 1325
    iput v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    .line 1327
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 1329
    .local v1, height:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1331
    :pswitch_0
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrolled:Z

    .line 1332
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtButton:Z

    .line 1333
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtCloseButton:Z

    .line 1334
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtBottomButton:Z

    .line 1335
    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    .line 1336
    iput v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1337
    iput v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    .line 1338
    invoke-virtual {p0, v8}, Lcom/htc/android/htcime/ui/CandidateView;->setPressed(Z)V

    .line 1340
    sput-boolean v8, Lcom/htc/android/htcime/HTCIMMData;->mCPWCLCOMMIT:Z

    .line 1341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->downY:I

    .line 1342
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto :goto_0

    .line 1345
    :pswitch_1
    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-eqz v4, :cond_2

    .line 1346
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->downY:I

    sub-int v4, v3, v4

    invoke-direct {p0, v8, v4}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_0

    .line 1348
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto :goto_0

    .line 1351
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->dismissPreview()V

    .line 1352
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ui/CandidateView;->setPressed(Z)V

    .line 1353
    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrolled:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-nez v4, :cond_4

    .line 1354
    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtButton:Z

    if-eqz v4, :cond_a

    .line 1355
    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mShowDropdown:Z

    if-eqz v4, :cond_6

    .line 1357
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mDropdownButton:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v4

    sget-object v5, Landroid/view/View;->PRESSED_SELECTED_STATE_SET:[I

    if-ne v4, v5, :cond_3

    .line 1358
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v4, v4, Lcom/htc/android/htcime/HTCIMMData;->mWCLIdx:[I

    iget v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    aget v4, v4, v5

    iput v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1359
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    goto/16 :goto_0

    .line 1363
    :cond_3
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    invoke-direct {p0, v6, v4}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    .line 1404
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    if-eqz v4, :cond_5

    .line 1405
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/CandidateView;->clearDragStatus()V

    .line 1407
    iput v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    .line 1408
    iput v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    .line 1410
    :cond_5
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->requestLayout()V

    goto/16 :goto_0

    .line 1365
    :cond_6
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-nez v4, :cond_7

    .line 1366
    invoke-direct {p0, v7, v9}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1367
    :cond_7
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v8, :cond_8

    .line 1368
    invoke-direct {p0, v10, v9}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1369
    :cond_8
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v7, :cond_4

    .line 1370
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    div-int/lit8 v5, v1, 0x2

    if-le v4, v5, :cond_9

    .line 1371
    invoke-direct {p0, v7, v9}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1374
    :cond_9
    invoke-direct {p0, v10, v9}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1378
    :cond_a
    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtBottomButton:Z

    if-eqz v4, :cond_b

    .line 1379
    const/4 v4, 0x7

    iget v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    invoke-direct {p0, v4, v5}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1380
    :cond_b
    iget-boolean v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPressedAtCloseButton:Z

    if-eqz v4, :cond_c

    .line 1381
    const/4 v4, 0x6

    invoke-direct {p0, v4, v9}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1383
    :cond_c
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopString:Ljava/lang/CharSequence;

    if-eqz v4, :cond_11

    .line 1384
    :cond_d
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-nez v4, :cond_e

    .line 1385
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    invoke-direct {p0, v7, v4}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1386
    :cond_e
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v8, :cond_f

    .line 1387
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    invoke-direct {p0, v10, v4}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1388
    :cond_f
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v4, v7, :cond_4

    .line 1389
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchY:I

    div-int/lit8 v5, v1, 0x2

    if-le v4, v5, :cond_10

    .line 1390
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTouchWordIndex:I

    invoke-direct {p0, v7, v4}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1393
    :cond_10
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCurrentTopTouchWordIndex:I

    invoke-direct {p0, v10, v4}, Lcom/htc/android/htcime/ui/CandidateView;->dispatchEventI(II)V

    goto :goto_1

    .line 1396
    :cond_11
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v4, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v4}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v4

    iget v4, v4, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    if-ne v7, v4, :cond_4

    .line 1397
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 1329
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollNext()V
    .locals 7

    .prologue
    .line 1268
    const/4 v1, 0x0

    .line 1269
    .local v1, i:I
    iget v3, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    .line 1270
    .local v3, targetX:I
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 1271
    .local v0, count:I
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->getWidth()I

    move-result v5

    add-int v2, v4, v5

    .line 1272
    .local v2, rightEdge:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1273
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    aget v4, v4, v1

    if-gt v4, v2, :cond_1

    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordWidth:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    if-lt v4, v2, :cond_1

    .line 1275
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    aget v4, v4, v1

    iget v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTotalWidth:I

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1280
    :cond_0
    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ui/CandidateView;->updateScrollPosition(I)V

    .line 1281
    return-void

    .line 1278
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public scrollPrev()V
    .locals 6

    .prologue
    .line 1251
    const/4 v2, 0x0

    .line 1252
    .local v2, i:I
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 1253
    .local v0, count:I
    const/4 v1, 0x0

    .line 1254
    .local v1, firstItem:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1255
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    aget v4, v4, v2

    iget v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordWidth:[I

    aget v5, v5, v2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    add-int/lit8 v5, v5, -0x1

    if-lt v4, v5, :cond_2

    .line 1257
    move v1, v2

    .line 1262
    :cond_0
    iget-object v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordX:[I

    aget v4, v4, v1

    iget-object v5, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWordWidth:[I

    aget v5, v5, v1

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->getWidth()I

    move-result v5

    sub-int v3, v4, v5

    .line 1263
    .local v3, leftEdge:I
    if-gez v3, :cond_1

    const/4 v3, 0x0

    .line 1264
    :cond_1
    invoke-direct {p0, v3}, Lcom/htc/android/htcime/ui/CandidateView;->updateScrollPosition(I)V

    .line 1265
    return-void

    .line 1260
    .end local v3           #leftEdge:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected scrollToTarget()V
    .locals 2

    .prologue
    .line 802
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTargetScrollX:I

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    if-le v0, v1, :cond_1

    .line 803
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    .line 804
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTargetScrollX:I

    if-lt v0, v1, :cond_0

    .line 805
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTargetScrollX:I

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    .line 806
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->requestLayout()V

    .line 815
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 816
    return-void

    .line 809
    :cond_1
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    .line 810
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    iget v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTargetScrollX:I

    if-gt v0, v1, :cond_0

    .line 811
    iget v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTargetScrollX:I

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    .line 812
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->requestLayout()V

    goto :goto_0
.end method

.method public setButton(Z[I)V
    .locals 0
    .parameter "showDropdown"
    .parameter "stateSet"

    .prologue
    .line 827
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mShowDropdown:Z

    .line 828
    iput-object p2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    .line 829
    iput-object p2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    .line 830
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 831
    return-void
.end method

.method public setButtonState([I)V
    .locals 2
    .parameter "stateSet"

    .prologue
    const/4 v1, 0x2

    .line 819
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    array-length v0, v0

    if-eq v0, v1, :cond_0

    .line 820
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonStateSet:[I

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    array-length v0, v0

    if-eq v0, v1, :cond_1

    .line 823
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mButtonTopStateSet:[I

    .line 824
    :cond_1
    return-void
.end method

.method public setCallBack(Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 389
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mCB:Lcom/htc/android/htcime/ui/CandidateView$CVEventListener;

    .line 390
    return-void
.end method

.method protected setDragStatus()V
    .locals 2

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVibratorPattern:[J

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/VibrationUtil;->playVibrationEffectPattern(Landroid/os/Vibrator;[J)V

    .line 1427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsDragged:Z

    .line 1429
    return-void
.end method

.method public setDragStatus(Z)V
    .locals 0
    .parameter "d"

    .prologue
    .line 1443
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAbleToDrag:Z

    .line 1444
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 398
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHeight:I

    .line 402
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1471
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 1472
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 1473
    return-void
.end method

.method public setService(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 1
    .parameter "service"
    .parameter "htcimmview"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 380
    iput-object p2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 381
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 382
    return-void
.end method

.method public setSuggestions(Ljava/lang/String;I)V
    .locals 12
    .parameter "suggestionString"
    .parameter "defaultIndex"

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->clear()V

    .line 836
    iget-object v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v8

    iget v4, v8, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 837
    .local v4, im_id:I
    const/4 v5, 0x0

    .line 840
    .local v5, nLimitCandCount:I
    if-ne v9, v4, :cond_3

    .line 841
    const-string v8, "\t"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 844
    .local v6, pattern:Ljava/util/regex/Pattern;
    :goto_0
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 851
    .local v2, candidates:[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    if-nez v8, :cond_4

    .line 852
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    .line 856
    :goto_1
    const/16 v8, 0x8

    if-eq v8, v4, :cond_0

    if-ne v9, v4, :cond_5

    .line 857
    :cond_0
    const/4 v5, 0x6

    .line 861
    :goto_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    array-length v8, v2

    if-ge v3, v8, :cond_2

    .line 863
    aget-object v1, v2, v3

    .line 864
    .local v1, candStr:Ljava/lang/String;
    new-instance v7, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    invoke-direct {v7, p0, v1}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;-><init>(Lcom/htc/android/htcime/ui/CandidateView;Ljava/lang/String;)V

    .line 866
    .local v7, tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    const/16 v8, 0x3c

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 867
    .local v0, autoCmp_Start:I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    .line 868
    iget-object v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/16 v9, 0x3e

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    invoke-virtual {v7, v1, v8, v0, v9}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->setUnderLine(Ljava/lang/String;Landroid/graphics/Paint;II)V

    .line 870
    :cond_1
    iget-object v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->computeWidth(Landroid/graphics/Paint;)V

    .line 871
    iget-object v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    if-lt v3, v5, :cond_6

    .line 876
    .end local v0           #autoCmp_Start:I
    .end local v1           #candStr:Ljava/lang/String;
    .end local v7           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->tweakWidth()V

    .line 877
    iput p2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedIndex:I

    .line 878
    iput-boolean v11, p0, Lcom/htc/android/htcime/ui/CandidateView;->mShowingCompletions:Z

    .line 879
    iput-boolean v10, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectionAtButton:Z

    .line 880
    iget-object v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v8, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v8}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v8

    iget-boolean v8, v8, Lcom/htc/android/htcime/Intf/HTCIMData;->imNonWord:Z

    iput-boolean v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTypedWordValid:Z

    .line 881
    iput v10, p0, Lcom/htc/android/htcime/ui/CandidateView;->mScrollX:I

    .line 882
    iput v10, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTargetScrollX:I

    .line 883
    iput-boolean v11, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHaveMinimalSuggestion:Z

    .line 886
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 887
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->requestLayout()V

    .line 889
    return-void

    .line 843
    .end local v2           #candidates:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v6           #pattern:Ljava/util/regex/Pattern;
    :cond_3
    const-string v8, "\\|"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .restart local v6       #pattern:Ljava/util/regex/Pattern;
    goto :goto_0

    .line 854
    .restart local v2       #candidates:[Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 859
    :cond_5
    const/4 v5, 0x5

    goto :goto_2

    .line 861
    .restart local v0       #autoCmp_Start:I
    .restart local v1       #candStr:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v7       #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public setTwoLinesWCLSuggestions(Ljava/lang/String;I)V
    .locals 8
    .parameter "suggestionString"
    .parameter "defaultIndex"

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->ClearTwoLinesWCL()V

    .line 894
    const/4 v3, 0x0

    .line 897
    .local v3, nLimitCandCount:I
    const-string v6, "\\|"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 898
    .local v4, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    .line 900
    .local v1, candidates:[Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    if-nez v6, :cond_2

    .line 901
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    .line 905
    :goto_0
    const/4 v3, 0x6

    .line 907
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 909
    aget-object v0, v1, v2

    .line 910
    .local v0, candStr:Ljava/lang/String;
    new-instance v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    invoke-direct {v5, p0, v0}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;-><init>(Lcom/htc/android/htcime/ui/CandidateView;Ljava/lang/String;)V

    .line 912
    .local v5, tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->computeWidth(Landroid/graphics/Paint;)V

    .line 913
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    if-lt v2, v3, :cond_3

    .line 919
    .end local v0           #candStr:Ljava/lang/String;
    .end local v5           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_0
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/CandidateView;->tweakTwoLinesWCLWidth()V

    .line 920
    iput p2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    .line 922
    const/16 v6, 0xff

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedTopIndex:I

    if-ne v6, v7, :cond_1

    .line 923
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mFoucsAtTopButton:Z

    .line 924
    :cond_1
    return-void

    .line 903
    .end local v2           #i:I
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTwoLinesSuggestions:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 907
    .restart local v0       #candStr:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v5       #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public setWCLID(I)V
    .locals 5
    .parameter "idx"

    .prologue
    const/4 v4, 0x0

    .line 1641
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    .line 1642
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v1, v1, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    iget-object v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mLandSIP:[Lcom/htc/android/htcime/Intf/IHTCSIP;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 1643
    .local v0, isCurLandHWR:Z
    :goto_0
    const/4 v1, 0x2

    iget v2, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v1, v2, :cond_2

    .line 1645
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1646
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1647
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1649
    :cond_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->m2LinesWCLBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1667
    :goto_1
    return-void

    .line 1642
    .end local v0           #isCurLandHWR:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1651
    .restart local v0       #isCurLandHWR:Z
    :cond_2
    sget-boolean v1, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 1654
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 1655
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1656
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1658
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarWithCloseBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1661
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 1662
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1663
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1665
    :cond_5
    iget-object v1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/CandidateView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public takeSuggestionAt(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 1456
    float-to-int v0, p1

    iput v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mTouchX:I

    .line 1458
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/CandidateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1459
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 1467
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/CandidateView;->invalidate()V

    .line 1469
    return-void
.end method

.method protected tweakWidth()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 928
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    if-nez v7, :cond_0

    .line 989
    :goto_0
    return-void

    .line 931
    :cond_0
    iput v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    .line 932
    const/4 v6, 0x0

    .line 933
    .local v6, width:I
    iput v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    .line 938
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 939
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    .line 941
    .local v5, tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    if-eq v1, v10, :cond_2

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    div-int/lit8 v3, v7, 0x2

    .line 942
    .local v3, maxWordWidth:I
    :goto_2
    invoke-virtual {v5, v3}, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->isTextCompressed(I)Z

    move-result v4

    .line 943
    .local v4, textCompressed:Z
    iget v6, v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 945
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    add-int/2addr v7, v6

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    if-gt v7, v9, :cond_1

    .line 947
    if-eqz v4, :cond_3

    .line 948
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    .line 949
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    .line 951
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    .line 966
    :goto_3
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    sub-int/2addr v7, v9

    sget v9, Lcom/htc/android/htcime/ui/CandidateView;->MIN_WIDTH:I

    if-ge v7, v9, :cond_4

    .line 969
    .end local v3           #maxWordWidth:I
    .end local v4           #textCompressed:Z
    .end local v5           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_1
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    sub-int/2addr v7, v9

    sget v9, Lcom/htc/android/htcime/ui/CandidateView;->MIN_WIDTH:I

    shr-int/lit8 v9, v9, 0x1

    if-ge v7, v9, :cond_5

    .line 971
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    if-ge v2, v7, :cond_5

    .line 972
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    sub-int/2addr v7, v9

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    sub-int/2addr v9, v2

    div-int v0, v7, v9

    .line 973
    .local v0, extraWidth:I
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mSuggestions:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;

    iget v9, v7, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    add-int/2addr v9, v0

    iput v9, v7, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    .line 974
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    add-int/2addr v7, v0

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    .line 971
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 941
    .end local v0           #extraWidth:I
    .end local v2           #j:I
    .restart local v5       #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_2
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    sub-int v3, v7, v9

    goto :goto_2

    .line 957
    .restart local v3       #maxWordWidth:I
    .restart local v4       #textCompressed:Z
    :cond_3
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->visible:Ljava/lang/Boolean;

    .line 958
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    .line 959
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    iget v9, v5, Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;->areaWidth:I

    add-int/2addr v7, v9

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    goto :goto_3

    .line 938
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 977
    .end local v3           #maxWordWidth:I
    .end local v4           #textCompressed:Z
    .end local v5           #tmpMetaData:Lcom/htc/android/htcime/ui/CandidateView$CandidateMetaData;
    :cond_5
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    if-lez v7, :cond_6

    .line 979
    const/4 v7, 0x2

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mWCLID:I

    if-ne v7, v9, :cond_8

    .line 980
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v7, v8

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    .line 981
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    if-lt v7, v8, :cond_7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    :goto_5
    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    .line 987
    :cond_6
    :goto_6
    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v7, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v7}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v7

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mVisibleCount:I

    iput v8, v7, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    goto/16 :goto_0

    .line 981
    :cond_7
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccum2LinesWidth:I

    goto :goto_5

    .line 984
    :cond_8
    iget v9, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    sget-boolean v7, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v7, v7, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v7, v10, :cond_9

    move v7, v8

    :goto_7
    add-int/2addr v7, v9

    iput v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mAccumWidth:I

    goto :goto_6

    :cond_9
    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    iget v8, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    add-int/2addr v7, v8

    goto :goto_7
.end method

.method public updateDimension()V
    .locals 9

    .prologue
    const/high16 v5, 0x40c0

    const/4 v8, 0x2

    const/high16 v4, 0x40a0

    .line 408
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v6}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v6

    iget v0, v6, Lcom/htc/android/htcime/Intf/HTCIMData;->imID:I

    .line 409
    .local v0, im_id:I
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-object v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrSIP:Lcom/htc/android/htcime/Intf/IHTCSIP;

    invoke-interface {v6}, Lcom/htc/android/htcime/Intf/IHTCSIP;->getSIPData()Lcom/htc/android/htcime/Intf/HTCSIPData;

    move-result-object v6

    iget v3, v6, Lcom/htc/android/htcime/Intf/HTCSIPData;->sipID:I

    .line 411
    .local v3, sip_id:I
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v6, v8, :cond_0

    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    .line 414
    .local v2, nBtnWidth:I
    :goto_0
    const/4 v6, 0x3

    if-ne v6, v3, :cond_1

    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v6, v8, :cond_1

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_HWR_DPADSupport:Z

    if-eqz v6, :cond_1

    .line 417
    sget v6, Lcom/htc/android/htcime/ezsip/handwriting/HandwriteBaseSIP;->sHWR_PANEL_WIDTH_WITH_DPAD:I

    sget v7, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    .line 427
    :goto_1
    const/4 v1, 0x0

    .line 428
    .local v1, maxVisibleCount:F
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v6, :cond_5

    .line 429
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v5, v6, :cond_4

    move v1, v4

    .line 438
    :goto_2
    iget v4, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    float-to-int v4, v4

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/htc/android/htcime/ui/CandidateView;->MIN_WIDTH:I

    .line 439
    return-void

    .line 411
    .end local v1           #maxVisibleCount:F
    .end local v2           #nBtnWidth:I
    :cond_0
    sget v2, Lcom/htc/android/htcime/ui/CandidateView;->FIX_WCL_BUTTON_WIDTH:I

    goto :goto_0

    .line 418
    .restart local v2       #nBtnWidth:I
    :cond_1
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_WCL_With_Close_Btn:Z

    if-eqz v6, :cond_2

    .line 419
    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    sget v7, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mRSpaceReserve:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    goto :goto_1

    .line 421
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mOrientation:I

    if-ne v6, v8, :cond_3

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_FixedWCL:Z

    if-nez v6, :cond_3

    .line 423
    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    sget v7, Lcom/htc/android/htcime/ui/CandidateView;->FLOAT_WCL_BUTTON_WIDTH:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mRSpaceReserve:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    goto :goto_1

    .line 425
    :cond_3
    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    sub-int/2addr v6, v2

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingLeft:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPaddingRight:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/CandidateView;->mRSpaceReserve:I

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/htc/android/htcime/ui/CandidateView;->mMaxWidth:I

    goto :goto_1

    .restart local v1       #maxVisibleCount:F
    :cond_4
    move v1, v4

    .line 429
    goto :goto_2

    .line 431
    :cond_5
    sget-boolean v6, Lcom/htc/android/htcime/HTCIMMData;->sFeature_Tablet:Z

    if-eqz v6, :cond_7

    .line 432
    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sget v7, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v6, v7, :cond_6

    move v1, v4

    :goto_3
    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_3

    .line 433
    :cond_7
    const/16 v6, 0x8

    if-eq v6, v0, :cond_8

    if-ne v8, v0, :cond_a

    .line 434
    :cond_8
    sget v5, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v5, v6, :cond_9

    move v1, v4

    :goto_4
    goto :goto_2

    :cond_9
    const/high16 v1, 0x40e0

    goto :goto_4

    .line 436
    :cond_a
    sget v4, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sget v6, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v4, v6, :cond_b

    const/high16 v1, 0x4080

    :goto_5
    goto :goto_2

    :cond_b
    move v1, v5

    goto :goto_5
.end method

.method protected updatePreviewInfo(IIIIIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "idx"
    .parameter "u"

    .prologue
    .line 1600
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mIsShowPreview:Z

    if-nez v0, :cond_0

    .line 1607
    :goto_0
    return-void

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iput p1, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->x:I

    .line 1602
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iput p2, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->y:I

    .line 1603
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iput p3, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mWidth:I

    .line 1604
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iput p4, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mHeight:I

    .line 1605
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iput p5, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mCutIdx:I

    .line 1606
    iget-object v0, p0, Lcom/htc/android/htcime/ui/CandidateView;->mPreviewInfo:Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;

    iput-boolean p6, v0, Lcom/htc/android/htcime/ui/CandidateView$PreviewInfo;->mUpdate:Z

    goto :goto_0
.end method

.method public updatemRSpaceReserve(I)V
    .locals 0
    .parameter "w"

    .prologue
    .line 1675
    iput p1, p0, Lcom/htc/android/htcime/ui/CandidateView;->mRSpaceReserve:I

    .line 1676
    return-void
.end method

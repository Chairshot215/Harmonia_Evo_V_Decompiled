.class public Lcom/htc/widget/TabSwitchWidget;
.super Landroid/widget/RelativeLayout;
.source "TabSwitchWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;,
        Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;
    }
.end annotation


# static fields
.field private static final MSG_SCREEN_READY:I

.field public static TAB_INFO_IMAGE:I

.field public static TAB_INFO_TEXT:I


# instance fields
.field private AUTO_HIDE_DURATION:I

.field private final LOG_TAG:Ljava/lang/String;

.field private isSelectTab:Z

.field private mAlphaZero_Gap:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBeforeIndex:I

.field private mBeforeX:F

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCatagoryInfo:Landroid/widget/LinearLayout;

.field private mCheckMultTouch:Z

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mDisplay:Landroid/view/Display;

.field private mEndPos:I

.field private mFingerMoveArea:I

.field private mFocusMode:I

.field private mH:Landroid/os/Handler;

.field private mHVGA:Z

.field public mHandler:Landroid/os/Handler;

.field private mIconRect:Landroid/graphics/Rect;

.field private mIndex:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInfoImage:Landroid/widget/ImageView;

.field private mInfoText:Landroid/widget/TextView;

.field private mIsBeforeShowCounter:Z

.field private mIsVaildIndex:Z

.field private mJumpNextId:I

.field private mJumpTab:Z

.field private mKeepX:I

.field private mKeyPaddingJumpTab:Z

.field private mLandscapeMode:Z

.field private mLastMotionX:F

.field private mLockTouchMove:Z

.field private mMakeBitmap:Landroid/graphics/Bitmap;

.field private mNowCountView:Landroid/view/View;

.field private mNowIconView:Landroid/widget/ImageView;

.field private mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mPanelInfoTouchListener:Landroid/view/View$OnTouchListener;

.field mPanelWidth:I

.field private mQVGA:Z

.field private mRefreshIndex:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollXStart:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectedTab:I

.field private mSelectedWidth:I

.field private mSelected_Gap:I

.field private mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

.field private mShow:Ljava/lang/Runnable;

.field private mShowTabNum:I

.field private mStartPos:I

.field private mSwitchInfo:Landroid/view/View;

.field private mSwitchWidget:Landroid/view/View;

.field private mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

.field private mSwitcher:Landroid/widget/RelativeLayout;

.field private mTabAreaWidth:I

.field private mTabCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHint:Z

.field private mTabIconWidth:I

.field private mTabRect:Landroid/graphics/Rect;

.field private mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

.field private mTempOffset:I

.field private mTextLargeSize:I

.field private mTextSmallSize:I

.field private mTouchDown:Z

.field private mTouchUp:Z

.field private mValidTouch:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWQVGA:Z

.field private mWVGA:Z

.field private mWidgetHeight:I

.field private mWidgetWidth:I

.field private mX:I

.field private mY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_TEXT:I

    const/4 v0, 0x1

    sput v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TabSwitchWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x2030069

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/TabSwitchWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    const/16 v4, 0x44

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/16 v4, 0x38

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    const/16 v4, 0x28

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelected_Gap:I

    const/16 v4, 0x18

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    const/16 v4, 0x18

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    const/16 v4, 0x18

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    const/16 v4, 0xa8

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/16 v6, 0x18b

    const/16 v7, 0x140

    const/16 v8, 0x1e0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x60

    const/16 v6, 0x18b

    const/16 v7, 0x86

    const/16 v8, 0x106

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    const/16 v4, 0x1f4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->AUTO_HIDE_DURATION:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    const/16 v4, 0x15

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    const-string v4, "TabSwitchWidget"

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Lcom/htc/widget/TabSwitchWidget$1;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$1;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelInfoTouchListener:Landroid/view/View$OnTouchListener;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    new-instance v4, Lcom/htc/widget/TabSwitchWidget$2;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$2;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    new-instance v4, Lcom/htc/widget/TabSwitchWidget$3;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$3;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/htc/widget/TabSwitchWidget$4;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$4;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20500b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    const v4, 0x20500b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    const/16 v4, 0x140

    if-ne v1, v4, :cond_0

    const/16 v4, 0xf0

    if-eq v0, v4, :cond_1

    :cond_0
    const/16 v4, 0xf0

    if-ne v1, v4, :cond_3

    const/16 v4, 0x140

    if-ne v0, v4, :cond_3

    :cond_1
    const/16 v4, 0x33

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/16 v4, 0x23

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    const/16 v4, 0x1e

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    const/16 v4, 0x10

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->initTabWidget(Landroid/content/Context;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->setAlwaysDrawnWithCacheEnabled(Z)V

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->initDraw()V

    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    return-void

    :cond_3
    const/16 v4, 0x320

    if-ne v1, v4, :cond_4

    const/16 v4, 0x1e0

    if-eq v0, v4, :cond_5

    :cond_4
    const/16 v4, 0x1e0

    if-ne v1, v4, :cond_6

    const/16 v4, 0x320

    if-ne v0, v4, :cond_6

    :cond_5
    const/16 v4, 0x66

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/16 v4, 0x4d

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    const/16 v4, 0x20

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    goto :goto_0

    :cond_6
    const/16 v4, 0x190

    if-ne v1, v4, :cond_7

    const/16 v4, 0xf0

    if-eq v0, v4, :cond_8

    :cond_7
    const/16 v4, 0xf0

    if-ne v1, v4, :cond_2

    const/16 v4, 0x190

    if-ne v0, v4, :cond_2

    :cond_8
    const/16 v4, 0x33

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/16 v4, 0x28

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    const/16 v4, 0x1e

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    const/16 v4, 0x10

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/widget/TabSwitchWidget;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget/TabSwitchWidget;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/TabSwitchWidget;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/TabSwitchWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setOnKey()V

    return-void
.end method

.method private countMapTabIndex(I)I
    .locals 5

    const/4 v4, 0x0

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int v2, p1, v2

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    add-int/2addr v2, v3

    int-to-float v1, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    :cond_1
    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    :cond_2
    return v0
.end method

.method private createSelectBitmap(Landroid/view/View;)V
    .locals 8

    instance-of v3, p1, Landroid/widget/ImageView;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getSelectedIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->drawBackground(Landroid/graphics/Canvas;)V

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    :goto_1
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/htc/widget/TabSwitchWidget;->drawTabCount(Landroid/graphics/Canvas;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x6

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x4

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_2
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_2
.end method

.method private delayShow(I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private doFingerUp()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->refreshDownInfo(I)V

    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchUp()V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    if-nez v6, :cond_1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    :cond_3
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v3, v6, :cond_4

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    :cond_4
    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_1
    move v4, v5

    goto :goto_0

    :pswitch_0
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-lt v3, v6, :cond_6

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    if-le v3, v6, :cond_7

    :cond_6
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    move v4, v5

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    int-to-float v6, v3

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    int-to-float v6, v3

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->onTouchDown(I)I

    move-result v0

    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    if-nez v6, :cond_8

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    goto :goto_1

    :cond_8
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-eqz v6, :cond_9

    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    :goto_2
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v4}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchDown()V

    goto :goto_1

    :cond_9
    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->refreshUpInfo(I)V

    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->invalidate()V

    goto :goto_2

    :pswitch_1
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->doFingerUp()V

    move v4, v5

    goto/16 :goto_0

    :cond_a
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-nez v6, :cond_b

    move v4, v5

    goto/16 :goto_0

    :cond_b
    int-to-float v6, v3

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    sub-float v2, v6, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x4120

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    int-to-double v6, v3

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fd0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v3, v6

    :cond_c
    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    move-result v6

    if-nez v6, :cond_1

    int-to-float v4, v3

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v4}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchMove()V

    goto/16 :goto_1

    :pswitch_2
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-nez v6, :cond_5

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v6}, Lcom/htc/widget/TabSwitchWidget;->refreshDownInfo(I)V

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-interface {v6, v7, v4}, Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->onTouchUpAction()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private drawTabCount(Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 2

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1
.end method

.method private drawTabImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 7

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v2, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v2, v1, -0x3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    add-int/lit8 v3, v3, 0x9

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x3

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x9

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v2, :cond_2

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int/lit8 v2, v1, -0x3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    add-int/lit8 v3, v3, 0x5

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x3

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method private generateBoundary()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v1, :cond_1

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x1d4

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    :goto_0
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-gez v1, :cond_0

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    :cond_0
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    return-void

    :cond_1
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x134

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v1, :cond_3

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x30a

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x1cc

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v1, :cond_5

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x186

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_5
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0xe3

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_6
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v1, :cond_7

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x136

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_7
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0xe6

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private generateBoundaryLand(I)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x1d4

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    :goto_0
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    return-void

    :cond_0
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x134

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x30a

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x1cc

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v0, :cond_4

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x186

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0xe3

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v0, :cond_6

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x136

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    :cond_6
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0xe6

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private getTabIconView(I)Landroid/view/View;
    .locals 4

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initDraw()V
    .locals 3

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    :goto_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method

.method private initTabWidget(Landroid/content/Context;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x20900b7

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    const-string v7, "common_slide_bar"

    invoke-static {p1, v7}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    :cond_0
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x20900b6

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    const-string v7, "grid_dark_background"

    const v8, -0x14e6e6e7

    invoke-static {p1, v7, v8}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual {p0, v10}, Lcom/htc/widget/TabSwitchWidget;->setFocusable(Z)V

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setFocusable(Z)V

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    const v7, 0x20200c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelInfoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x2010028

    invoke-virtual {v6, v7, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    :try_start_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v3, :cond_3

    const-string v6, "tab_switch_cover"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v2, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const-string v6, "common_slide_bar_cover"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_2
    const-string v6, "common_subnav_selector_tab"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    :cond_3
    return-void

    :catch_0
    move-exception v1

    const-string v6, "TabSwitchWidget"

    const-string v7, "can\'t find package"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private moveThumbToInternal(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->requestLayout()V

    return-void
.end method

.method private onCountWidthIndex(I)I
    .locals 3

    int-to-float v1, p1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onMoveByIndex(I)I
    .locals 4

    const/4 v3, 0x0

    int-to-float v1, p1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onTouchDown(I)I
    .locals 6

    const/4 v5, 0x0

    move v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    int-to-float v3, v0

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v4}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v3, v3, 0x0

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v2, v3, 0x0

    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-eq v3, v0, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    :cond_1
    return v2

    :cond_2
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onTouchScrollAction(I)V
    .locals 8

    move v6, p1

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    sub-int v3, v6, v0

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onTouchUpAction()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchUp()V

    :cond_0
    return-void
.end method

.method private refreshDownInfo(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    const/4 v1, 0x0

    int-to-float v2, v0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void

    :cond_1
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v1, v2, :cond_0

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private refreshUpInfo(I)V
    .locals 10

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v4

    :try_start_0
    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-eq v7, v4, :cond_4

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    if-ltz v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    invoke-direct {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v7}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getInfoText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getInfoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    if-nez v2, :cond_5

    instance-of v7, v1, Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_1
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->createSelectBitmap(Landroid/view/View;)V

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    :cond_3
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    const-string v7, "TabSwitch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error msg = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    :try_start_1
    iput-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setCurrectTabAndBack(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method private setOnKey()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setCurrectTabAndBack(I)V

    return-void
.end method

.method private setScroll(I)Z
    .locals 6

    const/4 v5, 0x0

    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int v3, p1, v3

    int-to-float v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-lt v3, v4, :cond_1

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v2, v3

    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    if-ge v3, v4, :cond_2

    :goto_1
    return v5

    :cond_1
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    sub-int v1, v3, v4

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v3, v3

    div-float v3, v2, v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v0, v3

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    sub-int v4, v0, v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_1
.end method

.method private setTabParameter()V
    .locals 7

    const/16 v2, 0xf0

    const/16 v6, 0xe3

    const/16 v4, 0xe2

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_3

    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_2

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    :goto_0
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x133

    if-le v1, v2, :cond_0

    const/16 v1, 0x133

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    :cond_0
    :goto_1
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v2, v2, -0x80

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v3, v3, -0x55

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v4, v4, -0x80

    div-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x80

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v5, v5, -0x55

    add-int/lit8 v5, v5, -0x80

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x80

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    :goto_2
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-le v1, v2, :cond_1

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    :cond_1
    return-void

    :cond_2
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_4

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    :goto_3
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x1d8

    if-le v1, v2, :cond_0

    const/16 v1, 0x1d8

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_1

    :cond_4
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_3

    :cond_5
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_8

    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_7

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    :goto_4
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x1cc

    if-le v1, v2, :cond_6

    const/16 v1, 0x1cc

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    :cond_6
    :goto_5
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v2, v2, -0x80

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v3, v3, -0x55

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v4, v4, -0x80

    div-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x80

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v5, v5, -0x55

    add-int/lit8 v5, v5, -0x80

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x80

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    goto/16 :goto_2

    :cond_7
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_4

    :cond_8
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_9

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    :goto_6
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x30c

    if-le v1, v2, :cond_6

    const/16 v1, 0x30c

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_5

    :cond_9
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_6

    :cond_a
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-ne v1, v2, :cond_d

    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_c

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    :goto_7
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    if-le v1, v6, :cond_b

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    :cond_b
    :goto_8
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v2, v2, -0x80

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v3, v3, -0x55

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v4, v4, -0x80

    div-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x80

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v5, v5, -0x55

    add-int/lit8 v5, v5, -0x80

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x80

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    goto/16 :goto_2

    :cond_c
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_7

    :cond_d
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_e

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    :goto_9
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x180

    if-le v1, v2, :cond_b

    const/16 v1, 0x180

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_8

    :cond_e
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_9

    :cond_f
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-ne v1, v2, :cond_12

    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_11

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    :goto_a
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    if-le v1, v4, :cond_10

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    :cond_10
    :goto_b
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v2, v2, -0x80

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v3, v3, -0x55

    add-int/lit8 v3, v3, -0x80

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    add-int/lit8 v4, v4, -0x80

    div-int/lit8 v4, v4, 0x2

    add-int/lit16 v4, v4, 0x80

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    add-int/lit8 v5, v5, -0x55

    add-int/lit8 v5, v5, -0x80

    div-int/lit8 v5, v5, 0x2

    add-int/lit16 v5, v5, 0x80

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    goto/16 :goto_2

    :cond_11
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_a

    :cond_12
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_13

    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    :goto_c
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x134

    if-le v1, v2, :cond_10

    const/16 v1, 0x134

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_b

    :cond_13
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_c
.end method

.method private tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6

    const/16 v5, 0xb

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/16 v3, 0x9

    const/4 v2, 0x0

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_1

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, v2, v2, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    invoke-virtual {p2, v0, v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x9

    invoke-virtual {p2, v0, v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v0, :cond_6

    if-ne p1, v1, :cond_4

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x4

    invoke-virtual {p2, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v0, :cond_9

    if-ne p1, v1, :cond_7

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v0, 0x6

    invoke-virtual {p2, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_7
    if-nez p1, :cond_8

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v0, :cond_0

    if-ne p1, v1, :cond_a

    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p2, v2, v2, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_a
    if-nez p1, :cond_b

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_b
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int/lit8 v2, v2, 0x6

    rsub-int v2, v2, 0x140

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    instance-of v4, p1, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v4}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v7, :cond_3

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-direct {p0, v1, v2}, Lcom/htc/widget/TabSwitchWidget;->tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    :goto_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    :cond_1
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-ltz v4, :cond_2

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->invalidate()V

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x4

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v4, :cond_5

    invoke-virtual {v2, v5, v5, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_5
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    :cond_6
    const/4 v4, 0x2

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public checkFocusMode()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    return v0
.end method

.method public computeScroll()V
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->moveThumbToInternal(I)V

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->refreshUpInfo(I)V

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TabSwitchWidget;->drawTabImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setCurrectTabAndBack(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJumpNextId()I
    .locals 1

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isJumpTab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    return v0
.end method

.method public isSelectTab()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    const v0, 0x20200c2

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const v1, 0x20200c3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const v1, 0x20200c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/16 v5, 0x16

    const/16 v4, 0x15

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-eq v3, v5, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v4, :cond_8

    :cond_2
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_5

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    :cond_5
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    if-gez v3, :cond_6

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    :cond_6
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    :cond_7
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-direct {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->AUTO_HIDE_DURATION:I

    invoke-direct {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->delayShow(I)V

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iput p2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    sub-int v4, v0, v3

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mSelected_Gap:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    return-void
.end method

.method public refreshWidget(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    return-void
.end method

.method public removeViewIndex(II)V
    .locals 13

    const/4 v12, -0x1

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    const/4 v9, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, p1, :cond_3

    move-object v9, v6

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v11, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :cond_0
    if-eq v0, v12, :cond_5

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_4

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    instance-of v10, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v10, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v10, v2, -0x1

    invoke-direct {p0, v10, v4}, Lcom/htc/widget/TabSwitchWidget;->tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V

    const/4 v10, 0x1

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_1
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v2, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/TabSwitchWidget;->setCountText(ILjava/lang/CharSequence;)V

    :cond_2
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_5
    if-nez v9, :cond_6

    :goto_2
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v11, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    float-to-int v10, v10

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v12, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-eqz v10, :cond_7

    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    :cond_7
    if-ltz p2, :cond_8

    invoke-virtual {p0, p2}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    goto :goto_2
.end method

.method public setCountText(ILjava/lang/CharSequence;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    if-ltz p1, :cond_0

    const-string v4, "0"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const/4 v0, 0x0

    if-nez v2, :cond_9

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x20900b4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    add-int/lit8 v4, p1, 0x1

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v4, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x20

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, -0x18

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_4
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v4, :cond_6

    if-nez p1, :cond_5

    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x16

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_5
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, -0x10

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v4, :cond_2

    :cond_7
    if-nez p1, :cond_8

    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_8
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v4, -0xc

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    :cond_9
    move-object v3, v2

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setCountVisibility(IZ)V
    .locals 3

    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    if-ne v2, p1, :cond_2

    iput-boolean p2, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    :cond_2
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    if-ne v2, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->createSelectBitmap(Landroid/view/View;)V

    :cond_3
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public setCurrentTab(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onCountWidthIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    :cond_2
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    goto :goto_0
.end method

.method public setFocusMode(I)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    return-void
.end method

.method public setInfoMessageEnable(II)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    sget v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_TEXT:I

    if-ne p1, v0, :cond_1

    sparse-switch p2, :sswitch_data_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_IMAGE:I

    if-ne p1, v0, :cond_0

    sparse-switch p2, :sswitch_data_1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_3
    .end sparse-switch
.end method

.method public setInfoTextToWidget(ILjava/lang/CharSequence;)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getInfoText()Ljava/lang/CharSequence;

    move-result-object v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setRequest()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    return-void
.end method

.method public setTabHintEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    return-void
.end method

.method public setTabSelectionListener(Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    return-void
.end method

.method public setTabSwitchHost(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    return-void
.end method

.method public setWidgetTouchListener(Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    return-void
.end method

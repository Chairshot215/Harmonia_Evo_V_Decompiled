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

    .prologue
    .line 52
    const/4 v0, 0x0

    sput v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_TEXT:I

    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_IMAGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TabSwitchWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 241
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 244
    const v0, 0x2030069

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/TabSwitchWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 245
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 76
    const/16 v4, 0x44

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    .line 78
    const/16 v4, 0x38

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    .line 80
    const/16 v4, 0x28

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    .line 82
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    .line 84
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelected_Gap:I

    .line 86
    const/16 v4, 0x18

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    .line 88
    const/16 v4, 0x18

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    .line 97
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    .line 99
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    .line 101
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    .line 103
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 105
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    .line 107
    const/16 v4, 0x18

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 109
    const/16 v4, 0xa8

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 111
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    .line 113
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 119
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    .line 122
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    .line 126
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    .line 135
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    .line 144
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    .line 146
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    .line 148
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 150
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    .line 152
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/16 v6, 0x18b

    const/16 v7, 0x140

    const/16 v8, 0x1e0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    .line 154
    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x60

    const/16 v6, 0x18b

    const/16 v7, 0x86

    const/16 v8, 0x106

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    .line 158
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    .line 160
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    .line 162
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    .line 164
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    .line 166
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 168
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 170
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 172
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 174
    const/16 v4, 0x1f4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->AUTO_HIDE_DURATION:I

    .line 178
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 180
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    .line 184
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    .line 188
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 190
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    .line 192
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    .line 194
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    .line 196
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    .line 198
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    .line 200
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    .line 202
    const/16 v4, 0x15

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    .line 204
    const-string v4, "TabSwitchWidget"

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->LOG_TAG:Ljava/lang/String;

    .line 1225
    new-instance v4, Lcom/htc/widget/TabSwitchWidget$1;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$1;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelInfoTouchListener:Landroid/view/View$OnTouchListener;

    .line 1263
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    .line 1265
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1267
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1746
    new-instance v4, Lcom/htc/widget/TabSwitchWidget$2;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$2;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1771
    new-instance v4, Lcom/htc/widget/TabSwitchWidget$3;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$3;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHandler:Landroid/os/Handler;

    .line 1789
    new-instance v4, Lcom/htc/widget/TabSwitchWidget$4;

    invoke-direct {v4, p0}, Lcom/htc/widget/TabSwitchWidget$4;-><init>(Lcom/htc/widget/TabSwitchWidget;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    .line 251
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 252
    .local v2, manager:Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    .line 254
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 255
    .local v1, displayWidth:I
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 256
    .local v0, displayHeight:I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 257
    .local v3, res:Landroid/content/res/Resources;
    const v4, 0x20500b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    .line 258
    const v4, 0x20500b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    .line 260
    const/16 v4, 0x140

    if-ne v1, v4, :cond_0

    const/16 v4, 0xf0

    if-eq v0, v4, :cond_1

    :cond_0
    const/16 v4, 0xf0

    if-ne v1, v4, :cond_3

    const/16 v4, 0x140

    if-ne v0, v4, :cond_3

    .line 262
    :cond_1
    const/16 v4, 0x33

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    .line 263
    const/16 v4, 0x23

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    .line 264
    const/16 v4, 0x1e

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    .line 265
    const/16 v4, 0x10

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    .line 266
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    .line 267
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    .line 268
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    .line 285
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 287
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    .line 288
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->initTabWidget(Landroid/content/Context;)V

    .line 290
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 291
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->initDraw()V

    .line 294
    new-instance v4, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    .line 296
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    .line 297
    return-void

    .line 269
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

    .line 271
    :cond_5
    const/16 v4, 0x66

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    .line 272
    const/16 v4, 0x4d

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    .line 273
    const/16 v4, 0x20

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    .line 274
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    .line 275
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    goto :goto_0

    .line 276
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

    .line 278
    :cond_8
    const/16 v4, 0x33

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    .line 279
    const/16 v4, 0x28

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    .line 280
    const/16 v4, 0x1e

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    .line 281
    const/16 v4, 0x10

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    .line 282
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    .line 283
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    return v0
.end method

.method static synthetic access$102(Lcom/htc/widget/TabSwitchWidget;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/htc/widget/TabSwitchWidget;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/widget/TabSwitchWidget;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/widget/TabSwitchWidget;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/widget/TabSwitchWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setOnKey()V

    return-void
.end method

.method private countMapTabIndex(I)I
    .locals 5
    .parameter "x"

    .prologue
    const/4 v4, 0x0

    .line 1451
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

    .line 1452
    .local v1, pos:F
    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    .line 1453
    const/4 v1, 0x0

    .line 1455
    :cond_0
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1456
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1458
    .local v0, i:I
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 1459
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 1460
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    .line 1462
    :cond_1
    if-gez v0, :cond_2

    .line 1463
    const/4 v0, 0x0

    .line 1464
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    .line 1467
    :cond_2
    return v0
.end method

.method private createSelectBitmap(Landroid/view/View;)V
    .locals 8
    .parameter "child"

    .prologue
    .line 1528
    instance-of v3, p1, Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, p1

    .line 1531
    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1534
    .local v1, childId:I
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iput-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    .line 1536
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/TabSwitchHost$TabSpec;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getSelectedIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1537
    .local v2, selectIcon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1538
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->drawBackground(Landroid/graphics/Canvas;)V

    .line 1539
    if-nez v2, :cond_2

    .line 1540
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1541
    .local v0, bi:Landroid/graphics/drawable/Drawable;
    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1542
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1543
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

    .line 1545
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1546
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 1547
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 1574
    .end local v0           #bi:Landroid/graphics/drawable/Drawable;
    :goto_1
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1575
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    invoke-direct {p0, v3, v4}, Lcom/htc/widget/TabSwitchWidget;->drawTabCount(Landroid/graphics/Canvas;Landroid/view/View;)V

    goto/16 :goto_0

    .line 1549
    :cond_2
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 1550
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v3, :cond_3

    .line 1551
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

    .line 1570
    :goto_2
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1571
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 1556
    :cond_3
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v3, :cond_4

    .line 1557
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

    .line 1563
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
    .parameter "time"

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1786
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1787
    return-void
.end method

.method private doFingerUp()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1425
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->refreshDownInfo(I)V

    .line 1426
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1427
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    .line 1428
    iput-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1429
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 1430
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchUp()V

    .line 1432
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1433
    return-void
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1270
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 1271
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_0

    .line 1272
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1274
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1275
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1276
    .local v1, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 1283
    .local v3, x:I
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    if-nez v6, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 1381
    :cond_1
    :goto_0
    return v4

    .line 1285
    :cond_2
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    if-nez v6, :cond_1

    .line 1288
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 1290
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    .line 1291
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    .line 1292
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 1294
    :cond_3
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v3, v6, :cond_4

    .line 1295
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 1297
    :cond_4
    packed-switch v1, :pswitch_data_0

    :cond_5
    :goto_1
    move v4, v5

    .line 1381
    goto :goto_0

    .line 1300
    :pswitch_0
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 1301
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    .line 1302
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

    .line 1303
    :cond_6
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 1304
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    move v4, v5

    .line 1305
    goto :goto_0

    .line 1307
    :cond_7
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mH:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1308
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    .line 1310
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    .line 1311
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1312
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 1313
    int-to-float v6, v3

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    .line 1314
    int-to-float v6, v3

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    .line 1316
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1318
    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->onTouchDown(I)I

    move-result v0

    .line 1320
    .local v0, EndX:I
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mIsVaildIndex:Z

    if-nez v6, :cond_8

    .line 1321
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1322
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    goto :goto_1

    .line 1326
    :cond_8
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-eqz v6, :cond_9

    .line 1327
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 1328
    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    .line 1329
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1330
    iput-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1331
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 1339
    :goto_2
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v4, :cond_5

    .line 1340
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v4}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchDown()V

    goto :goto_1

    .line 1333
    :cond_9
    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->refreshUpInfo(I)V

    .line 1334
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1335
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1336
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->invalidate()V

    goto :goto_2

    .line 1345
    .end local v0           #EndX:I
    :pswitch_1
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-nez v6, :cond_5

    .line 1347
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    if-eqz v6, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_a

    .line 1348
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->doFingerUp()V

    move v4, v5

    .line 1349
    goto/16 :goto_0

    .line 1352
    :cond_a
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-nez v6, :cond_b

    move v4, v5

    .line 1353
    goto/16 :goto_0

    .line 1354
    :cond_b
    int-to-float v6, v3

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    sub-float v2, v6, v7

    .line 1355
    .local v2, delta:F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x4120

    cmpl-float v6, v6, v7

    if-lez v6, :cond_c

    .line 1356
    int-to-double v6, v3

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fd0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v3, v6

    .line 1358
    :cond_c
    invoke-direct {p0, v3}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1361
    int-to-float v4, v3

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    .line 1363
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 1365
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v4, :cond_5

    .line 1366
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v4}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchMove()V

    goto/16 :goto_1

    .line 1369
    .end local v2           #delta:F
    :pswitch_2
    iget-boolean v6, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    if-nez v6, :cond_5

    .line 1373
    iget v6, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v6}, Lcom/htc/widget/TabSwitchWidget;->refreshDownInfo(I)V

    .line 1374
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-interface {v6, v7, v4}, Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 1375
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1376
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->onTouchUpAction()V

    goto/16 :goto_1

    .line 1297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private drawBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 705
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 706
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v0, :cond_1

    .line 707
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

    .line 714
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 716
    :cond_0
    return-void

    .line 712
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
    .parameter "canvas"
    .parameter "tabCountView"

    .prologue
    .line 741
    if-nez p2, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 745
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 756
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v0, :cond_3

    .line 757
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

    .line 762
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 764
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 758
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v0, :cond_4

    .line 759
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

    .line 761
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
    .parameter "canvas"
    .parameter "iv"

    .prologue
    .line 726
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 728
    .local v1, xStart:I
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v2, :cond_0

    .line 729
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

    .line 736
    .local v0, rect:Landroid/graphics/Rect;
    :goto_0
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 737
    return-void

    .line 730
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_0
    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v2, :cond_2

    .line 731
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

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0

    .line 733
    .end local v0           #rect:Landroid/graphics/Rect;
    :cond_2
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 734
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

    .restart local v0       #rect:Landroid/graphics/Rect;
    goto :goto_0
.end method

.method private generateBoundary()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 529
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 530
    .local v0, tabSize:I
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v1, :cond_2

    .line 531
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v1, :cond_1

    .line 532
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 533
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x1d4

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 564
    :goto_0
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-gez v1, :cond_0

    .line 565
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 566
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 569
    :cond_0
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    .line 570
    return-void

    .line 535
    :cond_1
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 536
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x134

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 538
    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v1, :cond_4

    .line 539
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v1, :cond_3

    .line 540
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 541
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x30a

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 543
    :cond_3
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 544
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x1cc

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 546
    :cond_4
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v1, :cond_6

    .line 547
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v1, :cond_5

    .line 548
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 549
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x186

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 551
    :cond_5
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 552
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0xe3

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 555
    :cond_6
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v1, :cond_7

    .line 556
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 557
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0x136

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 559
    :cond_7
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 560
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v1, v1, 0xe6

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private generateBoundaryLand(I)V
    .locals 2
    .parameter "tabSize"

    .prologue
    const/4 v1, 0x0

    .line 573
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v0, :cond_1

    .line 574
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v0, :cond_0

    .line 575
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 576
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x1d4

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    .line 606
    :goto_0
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    .line 607
    return-void

    .line 578
    :cond_0
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 579
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x134

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 581
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v0, :cond_3

    .line 582
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v0, :cond_2

    .line 583
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 584
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x30a

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 586
    :cond_2
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 587
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x1cc

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 589
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v0, :cond_5

    .line 590
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v0, :cond_4

    .line 591
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 592
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x186

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 594
    :cond_4
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 595
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0xe3

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 598
    :cond_5
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    if-eqz v0, :cond_6

    .line 599
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 600
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0x136

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0

    .line 602
    :cond_6
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 603
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    rsub-int v0, v0, 0xe6

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private getTabIconView(I)Landroid/view/View;
    .locals 4
    .parameter "id"

    .prologue
    .line 1124
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    .line 1126
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1127
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1128
    .local v2, tmp:Landroid/view/View;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v3, p1, :cond_0

    instance-of v3, v2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1131
    .end local v2           #tmp:Landroid/view/View;
    :goto_1
    return-object v2

    .line 1126
    .restart local v2       #tmp:Landroid/view/View;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1131
    .end local v2           #tmp:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initDraw()V
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    .line 301
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    .line 302
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCoverPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 305
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    .line 309
    :goto_0
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v0, :cond_1

    .line 310
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    .line 313
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 314
    return-void

    .line 308
    :cond_0
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedWidth:I

    goto :goto_0

    .line 312
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
    .parameter "context"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 611
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 612
    const/4 v3, 0x0

    .line 613
    .local v3, need_cover:Z
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x20900b7

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    .line 619
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_0

    .line 620
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    const-string v7, "common_slide_bar"

    invoke-static {p1, v7}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 621
    const/4 v3, 0x1

    .line 623
    :cond_0
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x20900b6

    invoke-virtual {v6, v7, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    .line 629
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-nez v6, :cond_1

    .line 630
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    const-string v7, "grid_dark_background"

    const v8, -0x14e6e6e7

    invoke-static {p1, v7, v8}, Lcom/htc/res/HtcResources;->getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundColor(I)V

    .line 631
    :cond_1
    invoke-virtual {p0, v10}, Lcom/htc/widget/TabSwitchWidget;->setFocusable(Z)V

    .line 632
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mOnFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 633
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 634
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchInfo:Landroid/view/View;

    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 635
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    const v7, 0x20200c5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    .line 636
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelInfoTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 637
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-super {p0, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 639
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 640
    .local v5, res:Landroid/content/res/Resources;
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 641
    .local v4, out:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const v7, 0x2010028

    invoke-virtual {v6, v7, v4, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 644
    :try_start_0
    iget v6, v4, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    if-eqz v3, :cond_3

    .line 651
    const-string v6, "tab_switch_cover"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 652
    .local v2, layout_id:I
    if-eqz v2, :cond_2

    .line 653
    iget-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v6, v2, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 654
    .local v0, cover:Landroid/view/View;
    const-string v6, "common_slide_bar_cover"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 655
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 657
    .end local v0           #cover:Landroid/view/View;
    :cond_2
    const-string v6, "common_subnav_selector_tab"

    invoke-static {p1, v6}, Lcom/htc/res/HtcResources;->getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 659
    .end local v2           #layout_id:I
    :cond_3
    return-void

    .line 645
    :catch_0
    move-exception v1

    .line 646
    .local v1, eres:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "TabSwitchWidget"

    const-string v7, "can\'t find package"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/htc/widget/TabSwitchWidget;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private moveThumbToInternal(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 1420
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    .line 1421
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->requestLayout()V

    .line 1422
    return-void
.end method

.method private onCountWidthIndex(I)I
    .locals 3
    .parameter "index"

    .prologue
    .line 1579
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

    .line 1581
    .local v0, outX:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v0, v1, :cond_1

    .line 1582
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 1587
    :cond_0
    :goto_0
    return v0

    .line 1583
    :cond_1
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v0, v1, :cond_0

    .line 1584
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onMoveByIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 1591
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

    .line 1594
    .local v0, outX:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v0, v1, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v3}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1596
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 1602
    :cond_0
    :goto_0
    return v0

    .line 1597
    :cond_1
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v0, v1, :cond_0

    .line 1598
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1599
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onTouchDown(I)I
    .locals 6
    .parameter "x"

    .prologue
    const/4 v5, 0x0

    .line 1606
    move v1, p1

    .line 1607
    .local v1, inputX:I
    const/4 v2, 0x0

    .line 1609
    .local v2, outX:I
    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    .line 1610
    .local v0, i:I
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    .line 1611
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

    .line 1613
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v3, v3, 0x0

    if-ge v2, v3, :cond_2

    .line 1614
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2, v5}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1615
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    add-int/lit8 v2, v3, 0x0

    .line 1621
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-eq v3, v0, :cond_1

    .line 1622
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLockTouchMove:Z

    .line 1625
    :cond_1
    return v2

    .line 1616
    :cond_2
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v2, v3, :cond_0

    .line 1617
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1618
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private onTouchScrollAction(I)V
    .locals 8
    .parameter "x"

    .prologue
    .line 1396
    move v6, p1

    .line 1397
    .local v6, to:I
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    sub-int v3, v6, v0

    .line 1398
    .local v3, dx:I
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v7

    .line 1399
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1f4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1400
    monitor-exit v7

    .line 1402
    return-void

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onTouchUpAction()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1385
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchUp:Z

    .line 1386
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    .line 1387
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1388
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    .line 1389
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mCheckMultTouch:Z

    .line 1391
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    if-eqz v0, :cond_0

    .line 1392
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;->onTouchUp()V

    .line 1393
    :cond_0
    return-void
.end method

.method private refreshDownInfo(I)V
    .locals 5
    .parameter "x"

    .prologue
    const/4 v4, 0x0

    .line 1658
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    .line 1660
    .local v0, i:I
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1661
    const/4 v1, 0x0

    .line 1662
    .local v1, outX:I
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

    .line 1664
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-ge v1, v2, :cond_1

    .line 1665
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1666
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    .line 1671
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    .line 1673
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1674
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1675
    return-void

    .line 1667
    :cond_1
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-le v1, v2, :cond_0

    .line 1668
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout;->scrollBy(II)V

    .line 1669
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    goto :goto_0
.end method

.method private refreshUpInfo(I)V
    .locals 10
    .parameter "x"

    .prologue
    .line 1472
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v4

    .line 1475
    .local v4, i:I
    :try_start_0
    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-eq v7, v4, :cond_4

    .line 1477
    iget v7, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    if-ltz v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    if-eqz v7, :cond_0

    .line 1478
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1480
    :cond_0
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    .line 1481
    invoke-direct {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v1

    .line 1482
    .local v1, child:Landroid/view/View;
    iget-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    if-eqz v7, :cond_2

    .line 1484
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v7}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/TabSwitchHost$TabSpec;

    .line 1485
    .local v5, s:Lcom/htc/widget/TabSwitchHost$TabSpec;
    invoke-virtual {v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getInfoText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 1486
    .local v6, text:Ljava/lang/CharSequence;
    invoke-virtual {v5}, Lcom/htc/widget/TabSwitchHost$TabSpec;->getInfoDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1487
    .local v2, dr:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 1489
    if-nez v2, :cond_5

    .line 1490
    instance-of v7, v1, Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 1491
    move-object v0, v1

    check-cast v0, Landroid/widget/ImageView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1493
    :cond_1
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mTextSmallSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1498
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1499
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1501
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 1502
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIconRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 1505
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .end local v5           #s:Lcom/htc/widget/TabSwitchHost$TabSpec;
    .end local v6           #text:Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v1}, Lcom/htc/widget/TabSwitchWidget;->createSelectBitmap(Landroid/view/View;)V

    .line 1507
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 1508
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_3

    .line 1509
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    .line 1511
    :cond_3
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mNowCountView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1516
    :goto_1
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    .line 1524
    .end local v1           #child:Landroid/view/View;
    :cond_4
    :goto_2
    return-void

    .line 1495
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #dr:Landroid/graphics/drawable/Drawable;
    .restart local v5       #s:Lcom/htc/widget/TabSwitchHost$TabSpec;
    .restart local v6       #text:Ljava/lang/CharSequence;
    :cond_5
    iget-object v7, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    iget v8, p0, Lcom/htc/widget/TabSwitchWidget;->mTextLargeSize:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1519
    .end local v1           #child:Landroid/view/View;
    .end local v2           #dr:Landroid/graphics/drawable/Drawable;
    .end local v5           #s:Lcom/htc/widget/TabSwitchHost$TabSpec;
    .end local v6           #text:Ljava/lang/CharSequence;
    :catch_0
    move-exception v3

    .line 1520
    .local v3, ex:Ljava/lang/Exception;
    const/4 v7, -0x1

    iput v7, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    .line 1521
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

    .line 1522
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1513
    .end local v3           #ex:Ljava/lang/Exception;
    .restart local v1       #child:Landroid/view/View;
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
    .parameter "x"

    .prologue
    .line 1650
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->countMapTabIndex(I)I

    move-result v0

    .line 1652
    .local v0, i:I
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;->onTabSelectionChanged(IZ)V

    .line 1653
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1654
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 1655
    return-void
.end method

.method private setOnKey()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1758
    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    .line 1759
    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    .line 1760
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-eqz v0, :cond_0

    .line 1761
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1763
    :cond_0
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setCurrectTabAndBack(I)V

    .line 1764
    return-void
.end method

.method private setScroll(I)Z
    .locals 6
    .parameter "x"

    .prologue
    const/4 v5, 0x0

    .line 1629
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1630
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    sub-int v3, p1, v3

    int-to-float v2, v3

    .line 1631
    .local v2, pos:F
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    if-lt v3, v4, :cond_1

    .line 1632
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mEndPos:I

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1633
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v2, v3

    .line 1639
    :cond_0
    :goto_0
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    if-ge v3, v4, :cond_2

    .line 1646
    :goto_1
    return v5

    .line 1634
    :cond_1
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    if-gt v3, v4, :cond_0

    .line 1635
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mStartPos:I

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1636
    const/4 v2, 0x0

    goto :goto_0

    .line 1641
    :cond_2
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    sub-int v1, v3, v4

    .line 1642
    .local v1, delta:I
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mFingerMoveArea:I

    int-to-float v3, v3

    div-float v3, v2, v3

    int-to-float v4, v1

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 1644
    .local v0, ScrollX:I
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTempOffset:I

    sub-int v4, v0, v4

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    goto :goto_1
.end method

.method private setTabParameter()V
    .locals 7

    .prologue
    const/16 v2, 0xf0

    const/16 v6, 0xe3

    const/16 v4, 0xe2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 365
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v1, :cond_5

    .line 366
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    const/16 v2, 0x140

    if-ne v1, v2, :cond_3

    .line 367
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 368
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 370
    .local v0, TabRealWidth:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_2

    .line 371
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 372
    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    .line 379
    :goto_0
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 380
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x133

    if-le v1, v2, :cond_0

    .line 381
    const/16 v1, 0x133

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 400
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

    .line 402
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

    .line 524
    :goto_2
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-le v1, v2, :cond_1

    .line 525
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 526
    :cond_1
    return-void

    .line 374
    :cond_2
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 375
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 376
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_0

    .line 384
    .end local v0           #TabRealWidth:I
    :cond_3
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 385
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 386
    .restart local v0       #TabRealWidth:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_4

    .line 387
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 388
    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    .line 395
    :goto_3
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 396
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x1d8

    if-le v1, v2, :cond_0

    .line 397
    const/16 v1, 0x1d8

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_1

    .line 390
    :cond_4
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 391
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 392
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_3

    .line 404
    .end local v0           #TabRealWidth:I
    :cond_5
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v1, :cond_a

    .line 405
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    const/16 v2, 0x1e0

    if-ne v1, v2, :cond_8

    .line 406
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 407
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 409
    .restart local v0       #TabRealWidth:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_7

    .line 410
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 411
    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    .line 418
    :goto_4
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 419
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x1cc

    if-le v1, v2, :cond_6

    .line 420
    const/16 v1, 0x1cc

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 439
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

    .line 441
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

    .line 413
    :cond_7
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 414
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 415
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_4

    .line 423
    .end local v0           #TabRealWidth:I
    :cond_8
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 424
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 425
    .restart local v0       #TabRealWidth:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_9

    .line 426
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 427
    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    .line 434
    :goto_6
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 435
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x30c

    if-le v1, v2, :cond_6

    .line 436
    const/16 v1, 0x30c

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_5

    .line 429
    :cond_9
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 430
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 431
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_6

    .line 443
    .end local v0           #TabRealWidth:I
    :cond_a
    iget-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v1, :cond_f

    .line 444
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-ne v1, v2, :cond_d

    .line 445
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 446
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 448
    .restart local v0       #TabRealWidth:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_c

    .line 449
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 450
    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    .line 457
    :goto_7
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 458
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    if-le v1, v6, :cond_b

    .line 459
    iput v6, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 478
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

    .line 480
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

    .line 452
    :cond_c
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 453
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 454
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_7

    .line 462
    .end local v0           #TabRealWidth:I
    :cond_d
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 463
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 464
    .restart local v0       #TabRealWidth:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_e

    .line 465
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 466
    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    .line 473
    :goto_9
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 474
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x180

    if-le v1, v2, :cond_b

    .line 475
    const/16 v1, 0x180

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_8

    .line 468
    :cond_e
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 469
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 470
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_9

    .line 483
    .end local v0           #TabRealWidth:I
    :cond_f
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-ne v1, v2, :cond_12

    .line 484
    iput-boolean v5, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 485
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 487
    .restart local v0       #TabRealWidth:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_11

    .line 488
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 489
    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    .line 496
    :goto_a
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 497
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    if-le v1, v4, :cond_10

    .line 498
    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 518
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

    .line 520
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

    .line 491
    :cond_11
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 492
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 493
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_a

    .line 502
    .end local v0           #TabRealWidth:I
    :cond_12
    iput-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mLandscapeMode:Z

    .line 503
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    mul-int v0, v1, v2

    .line 504
    .restart local v0       #TabRealWidth:I
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-lt v0, v1, :cond_13

    .line 505
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 506
    invoke-direct {p0, v5}, Lcom/htc/widget/TabSwitchWidget;->generateBoundaryLand(I)V

    .line 513
    :goto_c
    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    .line 514
    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    const/16 v2, 0x134

    if-le v1, v2, :cond_10

    .line 515
    const/16 v1, 0x134

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabAreaWidth:I

    goto :goto_b

    .line 508
    :cond_13
    iput v5, p0, Lcom/htc/widget/TabSwitchWidget;->mScrollXStart:I

    .line 509
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mShowTabNum:I

    .line 510
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    goto :goto_c
.end method

.method private tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 6
    .parameter "lastId"
    .parameter "params"

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x2

    const/4 v1, -0x1

    const/16 v3, 0x9

    const/4 v2, 0x0

    .line 870
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 871
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v0, :cond_3

    .line 872
    if-ne p1, v1, :cond_1

    .line 873
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 874
    invoke-virtual {p2, v2, v2, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    if-nez p1, :cond_2

    .line 876
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    invoke-virtual {p2, v0, v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 878
    :cond_2
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x9

    invoke-virtual {p2, v0, v5, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 880
    :cond_3
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v0, :cond_6

    .line 881
    if-ne p1, v1, :cond_4

    .line 882
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 883
    const/4 v0, 0x4

    invoke-virtual {p2, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 884
    :cond_4
    if-nez p1, :cond_5

    .line 885
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 887
    :cond_5
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x6

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v5, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 888
    :cond_6
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v0, :cond_9

    .line 889
    if-ne p1, v1, :cond_7

    .line 890
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 891
    const/4 v0, 0x6

    invoke-virtual {p2, v2, v2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 892
    :cond_7
    if-nez p1, :cond_8

    .line 893
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 895
    :cond_8
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabIconWidth:I

    sub-int/2addr v0, v1

    const/4 v1, 0x6

    invoke-virtual {p2, v0, v3, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 896
    :cond_9
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v0, :cond_0

    .line 897
    if-ne p1, v1, :cond_a

    .line 898
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 899
    invoke-virtual {p2, v2, v2, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 900
    :cond_a
    if-nez p1, :cond_b

    .line 901
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    const/16 v1, 0x8

    invoke-virtual {p2, v0, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 902
    :cond_b
    const/4 v0, 0x5

    if-ne p1, v0, :cond_c

    .line 903
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

    .line 905
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
    .parameter "child"

    .prologue
    const/16 v8, 0x9

    const/4 v7, 0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 814
    instance-of v4, p1, Landroid/widget/ImageView;

    if-nez v4, :cond_0

    .line 866
    :goto_0
    return-void

    .line 817
    :cond_0
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 819
    .local v2, lpImage:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xf

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 821
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v4}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 823
    .local v3, tabCount:I
    if-le v3, v7, :cond_3

    .line 825
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    add-int/lit8 v5, v3, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 826
    .local v0, lastChild:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    .line 827
    .local v1, lastId:I
    invoke-virtual {v2, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 828
    invoke-direct {p0, v1, v2}, Lcom/htc/widget/TabSwitchWidget;->tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 829
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 848
    .end local v0           #lastChild:Landroid/view/View;
    .end local v1           #lastId:I
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 854
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    .line 855
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    .line 856
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    .line 857
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 859
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-eqz v4, :cond_1

    .line 860
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    .line 862
    :cond_1
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    if-ltz v4, :cond_2

    .line 863
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    .line 865
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/TabSwitchWidget;->invalidate()V

    goto :goto_0

    .line 833
    :cond_3
    invoke-virtual {v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 834
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 835
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v4, :cond_4

    .line 837
    const/4 v4, 0x4

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 845
    :goto_2
    invoke-virtual {p1, v5}, Landroid/view/View;->setId(I)V

    goto :goto_1

    .line 838
    :cond_4
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v4, :cond_5

    .line 839
    invoke-virtual {v2, v5, v5, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 840
    :cond_5
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-eqz v4, :cond_6

    .line 841
    const/4 v4, 0x6

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2

    .line 843
    :cond_6
    const/4 v4, 0x2

    invoke-virtual {v2, v5, v5, v5, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method

.method public checkFocusMode()I
    .locals 1

    .prologue
    .line 1212
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    return v0
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 1409
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v2

    .line 1410
    :try_start_0
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1411
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    .line 1412
    .local v0, curX:I
    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->moveThumbToInternal(I)V

    .line 1414
    .end local v0           #curX:I
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    invoke-super {p0}, Landroid/widget/RelativeLayout;->computeScroll()V

    .line 1416
    return-void

    .line 1414
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
    .parameter "canvas"

    .prologue
    .line 678
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->refreshUpInfo(I)V

    .line 679
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 684
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mMakeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/TabSwitchWidget;->drawTabImage(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 686
    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    monitor-enter v1

    .line 687
    :try_start_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 701
    :cond_0
    :goto_0
    monitor-exit v1

    .line 702
    return-void

    .line 690
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-eqz v0, :cond_0

    .line 691
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 692
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    if-nez v0, :cond_0

    .line 693
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setCurrectTabAndBack(I)V

    goto :goto_0

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1440
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    if-eqz v0, :cond_0

    .line 1441
    const/4 v0, 0x1

    .line 1446
    :goto_0
    return v0

    .line 1443
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1444
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 1446
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJumpNextId()I
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpNextId:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isJumpTab()Z
    .locals 1

    .prologue
    .line 1251
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    return v0
.end method

.method public isSelectTab()Z
    .locals 1

    .prologue
    .line 1694
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 666
    const v0, 0x20200c2

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    .line 667
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const v1, 0x20200c3

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    .line 670
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    const v1, 0x20200c4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    .line 671
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v5, 0x16

    const/16 v4, 0x15

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1702
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTouchDown:Z

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 1735
    :goto_0
    return v1

    .line 1705
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

    .line 1707
    :cond_2
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->isSelectTab:Z

    .line 1708
    iget-boolean v3, p0, Lcom/htc/widget/TabSwitchWidget;->mValidTouch:Z

    if-eqz v3, :cond_3

    .line 1709
    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mCatagoryInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1711
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v4, :cond_4

    .line 1712
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1713
    :cond_4
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    if-ne v3, v5, :cond_5

    .line 1714
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1716
    :cond_5
    iget v3, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    if-gez v3, :cond_6

    .line 1717
    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1718
    :cond_6
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    iget-object v3, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v3}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_7

    .line 1719
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v2}, Lcom/htc/widget/TabSwitchHost;->getTabSpecs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    .line 1721
    :cond_7
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-direct {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    .line 1723
    .local v0, EndX:I
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeX:F

    .line 1724
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    iput v2, p0, Lcom/htc/widget/TabSwitchWidget;->mKeepX:I

    .line 1725
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mJumpTab:Z

    .line 1726
    iput-boolean v1, p0, Lcom/htc/widget/TabSwitchWidget;->mKeyPaddingJumpTab:Z

    .line 1727
    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->onTouchScrollAction(I)V

    .line 1729
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->AUTO_HIDE_DURATION:I

    invoke-direct {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->delayShow(I)V

    .line 1731
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1735
    .end local v0           #EndX:I
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 772
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 773
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 348
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 349
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    .line 350
    iput p2, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenHeight:I

    .line 351
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    .line 352
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    .line 354
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;

    .line 355
    .local v2, widget:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 356
    .local v3, widgetHeight:I
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 357
    .local v0, screenheight:I
    invoke-super {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 358
    .local v1, screenwidth:I
    iput v1, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    .line 359
    sub-int v4, v0, v3

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mAlphaZero_Gap:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/htc/widget/TabSwitchWidget;->mSelected_Gap:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/widget/TabSwitchWidget;->mY:I

    .line 360
    iget v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    invoke-virtual {p0, v4}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    .line 361
    return-void
.end method

.method public refreshWidget(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1683
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 1684
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    .line 1685
    return-void
.end method

.method public removeViewIndex(II)V
    .locals 13
    .parameter "childindex"
    .parameter "CurrentTab"

    .prologue
    const/4 v12, -0x1

    .line 918
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    .line 919
    .local v5, size:I
    const/4 v9, 0x0

    .line 920
    .local v9, view:Landroid/view/View;
    const/4 v0, -0x1

    .line 921
    .local v0, found:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 922
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 923
    .local v6, tmp:Landroid/view/View;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v10

    if-ne v10, p1, :cond_3

    .line 924
    move-object v9, v6

    .line 925
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 926
    iget-object v11, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v11, v10}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 927
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 928
    move v0, v1

    .line 933
    .end local v6           #tmp:Landroid/view/View;
    :cond_0
    if-eq v0, v12, :cond_5

    .line 935
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    .line 936
    move v2, v0

    .local v2, j:I
    :goto_1
    if-ge v2, v5, :cond_4

    .line 937
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 938
    .restart local v6       #tmp:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v6, v10}, Landroid/view/View;->setId(I)V

    .line 940
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 941
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    const/4 v4, 0x0

    .line 942
    .local v4, relativeParams:Landroid/widget/RelativeLayout$LayoutParams;
    instance-of v10, v3, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v10, :cond_1

    move-object v4, v3

    .line 943
    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 944
    add-int/lit8 v10, v2, -0x1

    invoke-direct {p0, v10, v4}, Lcom/htc/widget/TabSwitchWidget;->tuneMargin(ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 945
    const/4 v10, 0x1

    add-int/lit8 v11, v2, -0x1

    invoke-virtual {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 948
    :cond_1
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 949
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 950
    .local v8, v:Landroid/widget/TextView;
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 951
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v2, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 952
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 953
    .local v7, tx:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 954
    invoke-virtual {p0, v2, v7}, Lcom/htc/widget/TabSwitchWidget;->setCountText(ILjava/lang/CharSequence;)V

    .line 957
    .end local v7           #tx:Ljava/lang/CharSequence;
    .end local v8           #v:Landroid/widget/TextView;
    :cond_2
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v2}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 959
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 936
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 921
    .end local v2           #j:I
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #relativeParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 961
    .end local v6           #tmp:Landroid/view/View;
    .restart local v2       #j:I
    :cond_4
    iget-object v10, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 964
    .end local v2           #j:I
    :cond_5
    if-nez v9, :cond_6

    .line 980
    :goto_2
    return-void

    .line 967
    :cond_6
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->generateBoundary()V

    .line 968
    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    iget v11, p0, Lcom/htc/widget/TabSwitchWidget;->mWidgetWidth:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mPanelWidth:I

    .line 969
    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mLastMotionX:F

    float-to-int v10, v10

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 970
    iput v12, p0, Lcom/htc/widget/TabSwitchWidget;->mRefreshIndex:I

    .line 971
    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/htc/widget/TabSwitchWidget;->mIndex:I

    .line 973
    iget v10, p0, Lcom/htc/widget/TabSwitchWidget;->mScreenWidth:I

    if-eqz v10, :cond_7

    .line 974
    invoke-direct {p0}, Lcom/htc/widget/TabSwitchWidget;->setTabParameter()V

    .line 976
    :cond_7
    if-ltz p2, :cond_8

    .line 977
    invoke-virtual {p0, p2}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    goto :goto_2

    .line 979
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/htc/widget/TabSwitchWidget;->refreshWidget(I)V

    goto :goto_2
.end method

.method public setCountText(ILjava/lang/CharSequence;)V
    .locals 11
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1024
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_0

    if-ltz p1, :cond_0

    const-string v4, "0"

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1028
    .local v2, tabCountView:Landroid/view/View;
    const/4 v0, 0x0

    .line 1030
    .local v0, childView:Landroid/view/View;
    if-nez v2, :cond_9

    .line 1031
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x20900b4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1032
    if-eqz v2, :cond_0

    .line 1035
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v0

    .line 1036
    if-eqz v0, :cond_0

    .line 1039
    add-int/lit8 v4, p1, 0x1

    mul-int/lit16 v4, v4, 0x3e8

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    move-object v3, v2

    .line 1041
    check-cast v3, Landroid/widget/TextView;

    .line 1042
    .local v3, textView:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1044
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

    .line 1048
    .local v1, lpTabCount:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1050
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWVGA:Z

    if-eqz v4, :cond_4

    .line 1052
    if-nez p1, :cond_3

    .line 1057
    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1058
    const/16 v4, 0x20

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1092
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitcher:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    iget-object v4, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v4, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1060
    :cond_3
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1061
    const/16 v4, -0x18

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1064
    :cond_4
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mHVGA:Z

    if-eqz v4, :cond_6

    .line 1066
    if-nez p1, :cond_5

    .line 1071
    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1072
    const/16 v4, 0x16

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1074
    :cond_5
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1075
    const/16 v4, -0x10

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1077
    :cond_6
    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mWQVGA:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/htc/widget/TabSwitchWidget;->mQVGA:Z

    if-eqz v4, :cond_2

    .line 1079
    :cond_7
    if-nez p1, :cond_8

    .line 1084
    invoke-virtual {v1, v10, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1085
    const/16 v4, 0x10

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1087
    :cond_8
    invoke-virtual {v1, v9, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1088
    const/16 v4, -0xc

    invoke-virtual {v1, v4, v7, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .end local v1           #lpTabCount:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #textView:Landroid/widget/TextView;
    :cond_9
    move-object v3, v2

    .line 1095
    check-cast v3, Landroid/widget/TextView;

    .line 1096
    .restart local v3       #textView:Landroid/widget/TextView;
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public setCountVisibility(IZ)V
    .locals 3
    .parameter "index"
    .parameter "enable"

    .prologue
    .line 994
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 1014
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 998
    .local v1, tabCountView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1001
    if-eqz p2, :cond_4

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1003
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mBeforeIndex:I

    if-ne v2, p1, :cond_2

    .line 1004
    iput-boolean p2, p0, Lcom/htc/widget/TabSwitchWidget;->mIsBeforeShowCounter:Z

    .line 1006
    :cond_2
    iget v2, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    if-ne v2, p1, :cond_0

    .line 1007
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->getTabIconView(I)Landroid/view/View;

    move-result-object v0

    .line 1009
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 1010
    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->createSelectBitmap(Landroid/view/View;)V

    .line 1012
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1001
    .end local v0           #child:Landroid/view/View;
    :cond_4
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public setCurrentTab(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 796
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabCounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onCountWidthIndex(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 800
    invoke-direct {p0, p1}, Lcom/htc/widget/TabSwitchWidget;->onMoveByIndex(I)I

    move-result v0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    .line 801
    iget v0, p0, Lcom/htc/widget/TabSwitchWidget;->mX:I

    invoke-direct {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->setScroll(I)Z

    .line 802
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/htc/widget/TabSwitchWidget;->invalidate(Landroid/graphics/Rect;)V

    .line 804
    :cond_2
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectedTab:I

    goto :goto_0
.end method

.method public setFocusMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1222
    iput p1, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 1223
    return-void
.end method

.method public setInfoMessageEnable(II)V
    .locals 4
    .parameter "view"
    .parameter "state"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 1144
    sget v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_TEXT:I

    if-ne p1, v0, :cond_1

    .line 1145
    sparse-switch p2, :sswitch_data_0

    .line 1153
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1147
    :sswitch_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1150
    :sswitch_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1155
    :cond_1
    sget v0, Lcom/htc/widget/TabSwitchWidget;->TAB_INFO_IMAGE:I

    if-ne p1, v0, :cond_0

    .line 1156
    sparse-switch p2, :sswitch_data_1

    .line 1164
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1158
    :sswitch_2
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1161
    :sswitch_3
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 1145
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
    .end sparse-switch

    .line 1156
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_3
    .end sparse-switch
.end method

.method public setInfoTextToWidget(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "index"
    .parameter "label"

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 337
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

    .line 338
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    :cond_0
    return-void
.end method

.method public setRequest()V
    .locals 1

    .prologue
    .line 1743
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/TabSwitchWidget;->mFocusMode:I

    .line 1744
    return-void
.end method

.method public setTabHintEnabled(Z)V
    .locals 0
    .parameter "tabHint"

    .prologue
    .line 1185
    iput-boolean p1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabHint:Z

    .line 1186
    return-void
.end method

.method public setTabSelectionListener(Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSelectionChangedListener:Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;

    .line 1176
    return-void
.end method

.method public setTabSwitchHost(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 329
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mTabSwitchHost:Lcom/htc/widget/TabSwitchHost;

    .line 330
    return-void
.end method

.method public setWidgetTouchListener(Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget;->mSwitchWidgetListener:Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;

    .line 237
    return-void
.end method

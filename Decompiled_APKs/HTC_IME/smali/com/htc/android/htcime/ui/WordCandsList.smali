.class public Lcom/htc/android/htcime/ui/WordCandsList;
.super Landroid/widget/LinearLayout;
.source "WordCandsList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;,
        Lcom/htc/android/htcime/ui/WordCandsList$touchState;
    }
.end annotation


# static fields
.field private static final DUMPLOG:Z = false

.field public static final HORIZONTAL_PADDING:I = 0x9

.field public static final NON_SELECTED_INDEX:I = -0x1

.field private static final PAGE_THRESOLD:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WordCandsList"

.field public static final VERTICALTAL_PADDING:I = 0x8

.field public static final WCV_COUNT:I = 0x7

.field public static WCV_MIN_WIDTH:I

.field public static mWCVheight:I


# instance fields
.field private final MSG_LONGPRESS:I

.field private WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

.field private currentY:I

.field private isEnableScroll:Z

.field private isScrolling:Z

.field private mAccuWidth:I

.field private mAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

.field private mCandidates:[Ljava/lang/String;

.field private mCurrentRow:I

.field private mDefaultSelectedIndex:I

.field private mFirstTouchDownX:F

.field private mFirstTouchDownY:F

.field private mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

.field private mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

.field private mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

.field protected mHandler:Landroid/os/Handler;

.field private mIsBeingDragged:Z

.field protected mIsDragged:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mLineCount:I

.field private mMaxWidth:I

.field private mPressedBG:Landroid/graphics/drawable/Drawable;

.field private mRowCount:I

.field private mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;

.field private mScroller:Landroid/widget/Scroller;

.field private mSecPressedBG:Landroid/graphics/drawable/Drawable;

.field private mSecSelectedBG:Landroid/graphics/drawable/Drawable;

.field private mSelectedBG:Landroid/graphics/drawable/Drawable;

.field private mSelectedIndex:I

.field private mSize:I

.field private mTouchState:Lcom/htc/android/htcime/ui/WordCandsList$touchState;

.field private mUnSelectedBG:[Landroid/graphics/drawable/Drawable;

.field private mVibratorPattern:[J

.field protected mWCLBarVisible:Z

.field private offsetY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/android/htcime/ui/WordCandsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 161
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mLineCount:I

    .line 84
    iput v4, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    .line 89
    sget-object v1, Lcom/htc/android/htcime/ui/WordCandsList$touchState;->notMoveYet:Lcom/htc/android/htcime/ui/WordCandsList$touchState;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mTouchState:Lcom/htc/android/htcime/ui/WordCandsList$touchState;

    .line 94
    iput-boolean v4, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsBeingDragged:Z

    .line 95
    iput-boolean v4, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsDragged:Z

    .line 97
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mWCLBarVisible:Z

    .line 99
    iput-boolean v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->isEnableScroll:Z

    .line 106
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAddWordBtn:Lcom/htc/android/htcime/ui/DefaultKeyButton;

    .line 108
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mScroller:Landroid/widget/Scroller;

    .line 113
    iput-boolean v4, p0, Lcom/htc/android/htcime/ui/WordCandsList;->isScrolling:Z

    .line 114
    new-instance v1, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;-><init>(Lcom/htc/android/htcime/ui/WordCandsList;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;

    .line 122
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    .line 134
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 135
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 136
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 142
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mPressedBG:Landroid/graphics/drawable/Drawable;

    .line 145
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 146
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSecPressedBG:Landroid/graphics/drawable/Drawable;

    .line 147
    iput-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 722
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->MSG_LONGPRESS:I

    .line 723
    const/4 v1, 0x2

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mVibratorPattern:[J

    .line 724
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mDefaultSelectedIndex:I

    .line 725
    iput v4, p0, Lcom/htc/android/htcime/ui/WordCandsList;->offsetY:I

    .line 726
    iput v4, p0, Lcom/htc/android/htcime/ui/WordCandsList;->currentY:I

    .line 728
    new-instance v1, Lcom/htc/android/htcime/ui/WordCandsList$1;

    invoke-direct {v1, p0}, Lcom/htc/android/htcime/ui/WordCandsList$1;-><init>(Lcom/htc/android/htcime/ui/WordCandsList;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHandler:Landroid/os/Handler;

    .line 162
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mScroller:Landroid/widget/Scroller;

    .line 167
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mUnSelectedBG:[Landroid/graphics/drawable/Drawable;

    .line 168
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mUnSelectedBG:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 169
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mUnSelectedBG:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mUnSelectedBG:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mPressedBG:Landroid/graphics/drawable/Drawable;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSecPressedBG:Landroid/graphics/drawable/Drawable;

    .line 177
    const v1, 0x7f02013c

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsList;->setBackgroundResource(I)V

    .line 178
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->onFinishInflate()V

    .line 179
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    sget v3, Lcom/htc/android/htcime/ui/WordCandsList;->mWCVheight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 180
    return-void

    .line 723
    nop

    :array_0
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/htc/android/htcime/ui/WordCandsList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->offsetY:I

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/ui/WordCandsList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->currentY:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/ui/WordCandsList;)Lcom/htc/android/htcime/HTCIMMView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/ui/WordCandsList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->setDragStatus()V

    return-void
.end method

.method private clearDragStatus()V
    .locals 3

    .prologue
    .line 788
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsBeingDragged:Z

    .line 789
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 790
    const v0, 0x7f02013c

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsList;->setBackgroundResource(I)V

    .line 791
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    const/high16 v1, 0x712

    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mDefaultSelectedIndex:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 792
    return-void
.end method

.method private precheckWCV()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 930
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSize:I

    if-le v6, v4, :cond_0

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsView;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/WordCandsView;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    if-lt v6, v7, :cond_0

    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget v6, v6, Lcom/htc/android/htcime/HTCIMMData;->mPortPrimarySIP:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 933
    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    .line 935
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsView;->getMeasuredWidth()I

    move-result v6

    int-to-float v2, v6

    .line 936
    .local v2, measureWidth0:F
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsView;->getMeasuredWidth()I

    move-result v6

    int-to-float v3, v6

    .line 937
    .local v3, measureWidth1:F
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    int-to-float v6, v6

    add-float v7, v2, v3

    div-float v7, v2, v7

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 938
    .local v0, layoutWidth0:I
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    sub-int v1, v6, v0

    .line 940
    .local v1, layoutWidth1:I
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v5

    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/WordCandsView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v0, v7

    int-to-float v7, v7

    div-float/2addr v7, v2

    invoke-direct {p0, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsList;->wcvResize(Lcom/htc/android/htcime/ui/WordCandsView;F)V

    .line 941
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v4

    iget-object v7, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Lcom/htc/android/htcime/ui/WordCandsView;->getPaddingLeft()I

    move-result v7

    sub-int v7, v1, v7

    int-to-float v7, v7

    div-float/2addr v7, v3

    invoke-direct {p0, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsList;->wcvResize(Lcom/htc/android/htcime/ui/WordCandsView;F)V

    .line 943
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v5, v6, v5

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcom/htc/android/htcime/ui/WordCandsList;->mWCVheight:I

    invoke-direct {v6, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/htcime/ui/WordCandsList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v5, v5, v4

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    sget v7, Lcom/htc/android/htcime/ui/WordCandsList;->mWCVheight:I

    invoke-direct {v6, v1, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v5, v6}, Lcom/htc/android/htcime/ui/WordCandsList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    iget v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    iput v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    .line 948
    .end local v0           #layoutWidth0:I
    .end local v1           #layoutWidth1:I
    .end local v2           #measureWidth0:F
    .end local v3           #measureWidth1:F
    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0
.end method

.method private resetWCRows()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 446
    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/ui/WordCandsList;->setOrientation(I)V

    .line 447
    const/4 v5, 0x0

    .line 448
    .local v5, width:I
    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    .line 449
    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mRowCount:I

    .line 451
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->precheckWCV()Z

    move-result v6

    if-nez v6, :cond_0

    .line 452
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    array-length v6, v6

    if-ge v2, v6, :cond_0

    .line 455
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 481
    .end local v2           #i:I
    :cond_0
    :goto_1
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    sub-int/2addr v6, v7

    sget v7, Lcom/htc/android/htcime/ui/WordCandsList;->WCV_MIN_WIDTH:I

    shr-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_4

    .line 483
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 484
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v3

    div-int v1, v6, v7

    .line 485
    .local v1, extraWidth:I
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 486
    .local v0, adjustParams:Landroid/widget/LinearLayout$LayoutParams;
    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int/2addr v6, v1

    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 487
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    .line 488
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v3

    invoke-virtual {v6, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 458
    .end local v0           #adjustParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #extraWidth:I
    .end local v3           #j:I
    .restart local v2       #i:I
    :cond_1
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsView;->getMeasuredWidth()I

    move-result v6

    sget v7, Lcom/htc/android/htcime/ui/WordCandsList;->WCV_MIN_WIDTH:I

    if-ge v6, v7, :cond_2

    sget v5, Lcom/htc/android/htcime/ui/WordCandsList;->WCV_MIN_WIDTH:I

    .line 461
    :goto_3
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    add-int/2addr v6, v5

    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    if-ge v6, v7, :cond_0

    .line 463
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsView;->isTextCompressed()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 464
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    sget v9, Lcom/htc/android/htcime/ui/WordCandsList;->mWCVheight:I

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    goto :goto_1

    .line 458
    :cond_2
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/htc/android/htcime/ui/WordCandsView;->getMeasuredWidth()I

    move-result v5

    goto :goto_3

    .line 470
    :cond_3
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v6, v6, v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    sget v8, Lcom/htc/android/htcime/ui/WordCandsList;->mWCVheight:I

    invoke-direct {v7, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v6, v7}, Lcom/htc/android/htcime/ui/WordCandsList;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    .line 478
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    iget v7, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    sub-int/2addr v6, v7

    sget v7, Lcom/htc/android/htcime/ui/WordCandsList;->WCV_MIN_WIDTH:I

    if-lt v6, v7, :cond_0

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 491
    .end local v2           #i:I
    :cond_4
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    .line 492
    iget-object v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-object v6, Lcom/htc/android/htcime/HTCIMMData;->mCurrIM:Lcom/htc/android/htcime/Intf/IHTCIM;

    invoke-interface {v6}, Lcom/htc/android/htcime/Intf/IHTCIM;->getInputMethodData()Lcom/htc/android/htcime/Intf/HTCIMData;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->getChildCount()I

    move-result v7

    iput v7, v6, Lcom/htc/android/htcime/Intf/HTCIMData;->imSelectIdxLimit:I

    .line 494
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 495
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v4, :cond_5

    .line 496
    iget v6, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 497
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ui/WordCandsList;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    :cond_5
    return-void
.end method

.method private scrollToRow(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 507
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mScrollRunnable:Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;

    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/android/htcime/ui/WordCandsList$ScrollRunnable;->start(I)V

    .line 515
    return-void
.end method

.method private setDragStatus()V
    .locals 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setUnSelected()V

    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsBeingDragged:Z

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsDragged:Z

    .line 799
    iget-object v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v0}, Lcom/htc/android/htcime/HTCIMEService;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mVibratorPattern:[J

    invoke-static {v0, v1}, Lcom/htc/android/htcime/util/VibrationUtil;->playVibrationEffectPattern(Landroid/os/Vibrator;[J)V

    .line 800
    const v0, 0x7f02013d

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsList;->setBackgroundResource(I)V

    .line 801
    return-void
.end method

.method private underLineEffect(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "src_str"

    .prologue
    const/4 v4, -0x1

    .line 889
    const/16 v3, 0x3c

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 890
    .local v1, autoCmp_Start:I
    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 891
    .local v0, autoCmp_End:I
    if-eq v4, v1, :cond_0

    if-eq v4, v0, :cond_0

    if-ge v1, v0, :cond_0

    .line 892
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 893
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 894
    .local v2, span_str:Landroid/text/SpannableString;
    new-instance v3, Landroid/text/style/UnderlineSpan;

    invoke-direct {v3}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0x21

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 897
    .end local v2           #span_str:Landroid/text/SpannableString;
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p1

    goto :goto_0
.end method

.method private wcvResize(Lcom/htc/android/htcime/ui/WordCandsView;F)V
    .locals 6
    .parameter "wcv"
    .parameter "p"

    .prologue
    .line 916
    invoke-virtual {p1}, Lcom/htc/android/htcime/ui/WordCandsView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 917
    .local v1, text:Ljava/lang/CharSequence;
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 918
    .local v0, span_str:Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ScaleXSpan;

    invoke-direct {v2, p2}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v4

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 920
    invoke-virtual {p1, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 397
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->removeAllViews()V

    .line 399
    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsList;->setSelection(I)V

    .line 400
    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSize:I

    .line 401
    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mRowCount:I

    .line 402
    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    .line 403
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->invalidate()V

    .line 404
    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mDefaultSelectedIndex:I

    .line 405
    return-void
.end method

.method public clearDragged()V
    .locals 1

    .prologue
    .line 808
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsDragged:Z

    .line 809
    return-void
.end method

.method public enableScroll(Z)V
    .locals 0
    .parameter "isEnableScroll"

    .prologue
    .line 818
    iput-boolean p1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->isEnableScroll:Z

    .line 819
    return-void
.end method

.method public getAccuWidth()I
    .locals 1

    .prologue
    .line 911
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mAccuWidth:I

    return v0
.end method

.method public getCandidateCount()I
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSize:I

    return v0
.end method

.method public getFirstRowCount()I
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSelectionIndex()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    return v0
.end method

.method public init(Lcom/htc/android/htcime/HTCIMEService;Lcom/htc/android/htcime/HTCIMMView;)V
    .locals 2
    .parameter "htcIMM"
    .parameter "htcIMMView"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    .line 238
    invoke-virtual {p1}, Lcom/htc/android/htcime/HTCIMEService;->getShareData()Lcom/htc/android/htcime/HTCIMMData;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    .line 239
    iput-object p2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    .line 240
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/htc/android/htcime/ui/WordCandsView;->init(Lcom/htc/android/htcime/HTCIMEService;)V

    .line 240
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method

.method public isDragged()Z
    .locals 1

    .prologue
    .line 804
    iget-boolean v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsDragged:Z

    return v0
.end method

.method public nextPage()V
    .locals 2

    .prologue
    .line 411
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mRowCount:I

    if-ge v0, v1, :cond_0

    .line 412
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    .line 414
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsList;->scrollToRow(I)V

    .line 416
    :cond_0
    return-void
.end method

.method public nextSelection()V
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsList;->setSelection(I)V

    .line 288
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 871
    move-object v0, p1

    check-cast v0, Lcom/htc/android/htcime/ui/WordCandsView;

    .line 872
    .local v0, eventView:Lcom/htc/android/htcime/ui/WordCandsView;
    invoke-virtual {v0}, Lcom/htc/android/htcime/ui/WordCandsView;->getIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsList;->sendWordToEditText(I)V

    .line 873
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 520
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 526
    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0, v5}, Lcom/htc/android/htcime/ui/WordCandsList;->setGravity(I)V

    .line 189
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/htc/android/htcime/ui/WordCandsView;

    iput-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    .line 190
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    new-instance v2, Lcom/htc/android/htcime/ui/WordCandsView;

    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/android/htcime/ui/WordCandsView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 192
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setHeadPartLength(I)V

    .line 195
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/htc/android/htcime/ui/WordCandsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Lcom/htc/android/htcime/ui/WordCandsView;->setGravity(I)V

    .line 203
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mUnSelectedBG:[Landroid/graphics/drawable/Drawable;

    rem-int/lit8 v3, v0, 0x6

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setUnSelectedBG(Landroid/graphics/drawable/Drawable;)V

    .line 205
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setSelectedBG(Landroid/graphics/drawable/Drawable;)V

    .line 206
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mPressedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setPressedBG(Landroid/graphics/drawable/Drawable;)V

    .line 208
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSecSelectedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setSecSelectedBG(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSecPressedBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/android/htcime/ui/WordCandsView;->setSecPressedBG(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/WordCandsView;->setUnSelected()V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ui/WordCandsList;->setHorizontalFadingEdgeEnabled(Z)V

    .line 226
    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/ui/WordCandsList;->setHorizontalScrollBarEnabled(Z)V

    .line 228
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "ev"

    .prologue
    const/4 v1, 0x1

    .line 764
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 766
    .local v0, action:I
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    sget-boolean v2, Lcom/htc/android/htcime/HTCIMMData;->mTutorialing:Z

    if-eqz v2, :cond_0

    .line 784
    :goto_0
    return v1

    .line 769
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 784
    :goto_1
    :pswitch_0
    iget-boolean v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsBeingDragged:Z

    goto :goto_0

    .line 771
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 772
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->currentY:I

    .line 773
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsBeingDragged:Z

    .line 774
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 778
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->clearDragStatus()V

    goto :goto_1

    .line 769
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 309
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 310
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    .line 743
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 744
    .local v1, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 746
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 759
    :goto_0
    iget-boolean v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsBeingDragged:Z

    return v2

    .line 748
    :pswitch_0
    iput-boolean v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mIsBeingDragged:Z

    .line 749
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 752
    :pswitch_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMView:Lcom/htc/android/htcime/HTCIMMView;

    float-to-int v3, v1

    iget v4, p0, Lcom/htc/android/htcime/ui/WordCandsList;->offsetY:I

    invoke-virtual {v2, v5, v3, v4}, Lcom/htc/android/htcime/HTCIMMView;->updateWCLWin(III)V

    goto :goto_0

    .line 756
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->clearDragStatus()V

    goto :goto_0

    .line 746
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public prePage()V
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    if-lez v0, :cond_0

    .line 423
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    .line 425
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    invoke-direct {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsList;->scrollToRow(I)V

    .line 427
    :cond_0
    return-void
.end method

.method public preSelection()V
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/ui/WordCandsList;->setSelection(I)V

    .line 295
    return-void
.end method

.method public sendCandsStringToWCL(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 303
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/htcime/ui/WordCandsList;->sendCandsStringToWCL(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public sendCandsStringToWCL(Ljava/lang/String;I)Z
    .locals 7
    .parameter "str"
    .parameter "defaultIndex"

    .prologue
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 337
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->clear()V

    .line 340
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v4

    .line 385
    :goto_0
    return v3

    .line 343
    :cond_1
    const-string v5, "\\|"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 344
    .local v1, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCandidates:[Ljava/lang/String;

    .line 347
    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCandidates:[Ljava/lang/String;

    array-length v5, v5

    if-le v5, v3, :cond_2

    :goto_1
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSize:I

    .line 350
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 351
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSize:I

    if-ge v0, v3, :cond_3

    .line 354
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v4}, Lcom/htc/android/htcime/ui/WordCandsView;->setVisibility(I)V

    .line 355
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v3, v3, v0

    iget-object v5, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCandidates:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-direct {p0, v5}, Lcom/htc/android/htcime/ui/WordCandsList;->underLineEffect(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Lcom/htc/android/htcime/ui/WordCandsView;->setTextandIndex(Ljava/lang/CharSequence;I)V

    .line 350
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 347
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCandidates:[Ljava/lang/String;

    array-length v3, v3

    goto :goto_1

    .line 358
    .restart local v0       #i:I
    :cond_3
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v3, v3, v0

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/htc/android/htcime/ui/WordCandsView;->setVisibility(I)V

    goto :goto_3

    .line 365
    :cond_4
    invoke-direct {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->resetWCRows()V

    .line 368
    if-eq p2, v6, :cond_6

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSize:I

    if-gt p2, v3, :cond_6

    .line 369
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/WordCandsView;->getWCRowID()I

    move-result v2

    .line 370
    .local v2, targetRow:I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_5

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    if-eq v2, v3, :cond_5

    .line 371
    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    .line 373
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->getLeft()I

    move-result v3

    invoke-virtual {p0, v3, v4}, Lcom/htc/android/htcime/ui/WordCandsList;->scrollTo(II)V

    .line 375
    :cond_5
    iget-object v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v3, v3, p2

    invoke-virtual {v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setSelected()V

    .line 377
    .end local v2           #targetRow:I
    :cond_6
    iput p2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    .line 379
    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mDefaultSelectedIndex:I

    if-eq v3, v6, :cond_7

    if-ne p2, v6, :cond_7

    .line 380
    iput p2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mDefaultSelectedIndex:I

    .line 383
    :cond_7
    invoke-virtual {p0}, Lcom/htc/android/htcime/ui/WordCandsList;->requestLayout()V

    .line 385
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public sendWordToEditText(I)V
    .locals 5
    .parameter "Index"

    .prologue
    .line 879
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMMData:Lcom/htc/android/htcime/HTCIMMData;

    iget-boolean v2, v2, Lcom/htc/android/htcime/HTCIMMData;->mIsIMFAutoCompletion:Z

    if-eqz v2, :cond_0

    .line 880
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2}, Lcom/htc/android/htcime/HTCIMEService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/htc/android/htcime/ui/WordCandsView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " selected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 881
    .local v1, toast:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 884
    .end local v1           #toast:Landroid/widget/Toast;
    :cond_0
    const/high16 v2, 0x70b

    or-int v0, v2, p1

    .line 885
    .local v0, command:I
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mHTCIMM:Lcom/htc/android/htcime/HTCIMEService;

    invoke-virtual {v2, v0}, Lcom/htc/android/htcime/HTCIMEService;->sendInternalKeyEvent(I)V

    .line 886
    return-void
.end method

.method public setHeight(I)V
    .locals 4
    .parameter "h"

    .prologue
    .line 315
    add-int/lit8 v2, p1, -0x8

    sput v2, Lcom/htc/android/htcime/ui/WordCandsList;->mWCVheight:I

    .line 316
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    add-int/lit8 v2, v2, -0x31

    iput v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    .line 317
    sget v2, Lcom/htc/android/htcime/HTCIMMData;->mDisplayHeight:I

    sget v3, Lcom/htc/android/htcime/HTCIMMData;->mDisplayWidth:I

    if-le v2, v3, :cond_0

    const/high16 v1, 0x4080

    .line 318
    .local v1, wcvCount:F
    :goto_0
    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/htc/android/htcime/ui/WordCandsList;->WCV_MIN_WIDTH:I

    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mMaxWidth:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setWidthConstrain(I)V

    .line 321
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v2, v2, v0

    sget v3, Lcom/htc/android/htcime/ui/WordCandsList;->mWCVheight:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setHeight(I)V

    .line 322
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v2, v2, v0

    sget v3, Lcom/htc/android/htcime/ui/WordCandsList;->mWCVheight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setTextSize(F)V

    .line 323
    iget-object v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v2, v2, v0

    sget v3, Lcom/htc/android/htcime/ui/WordCandsList;->WCV_MIN_WIDTH:I

    invoke-virtual {v2, v3}, Lcom/htc/android/htcime/ui/WordCandsView;->setMinWidth(I)V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    .end local v0           #i:I
    .end local v1           #wcvCount:F
    :cond_0
    const/high16 v1, 0x40c0

    goto :goto_0

    .line 325
    .restart local v0       #i:I
    .restart local v1       #wcvCount:F
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, -0x1

    .line 255
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    if-eq v1, v3, :cond_0

    .line 256
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    iget v2, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/WordCandsView;->setUnSelected()V

    .line 260
    :cond_0
    if-gez p1, :cond_2

    .line 261
    iput v3, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    .line 278
    :goto_0
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mDefaultSelectedIndex:I

    if-ne v1, v3, :cond_1

    .line 279
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mDefaultSelectedIndex:I

    .line 281
    :cond_1
    return-void

    .line 263
    :cond_2
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSize:I

    if-le p1, v1, :cond_3

    .line 264
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    goto :goto_0

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/WordCandsView;->getWCRowID()I

    move-result v0

    .line 270
    .local v0, targetRow:I
    const/4 v1, -0x2

    if-eq v0, v1, :cond_4

    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    if-eq v0, v1, :cond_4

    .line 271
    iput v0, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    .line 272
    iget v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mCurrentRow:I

    invoke-direct {p0, v1}, Lcom/htc/android/htcime/ui/WordCandsList;->scrollToRow(I)V

    .line 274
    :cond_4
    iget-object v1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->WCView:[Lcom/htc/android/htcime/ui/WordCandsView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/htc/android/htcime/ui/WordCandsView;->setSelected()V

    .line 275
    iput p1, p0, Lcom/htc/android/htcime/ui/WordCandsList;->mSelectedIndex:I

    goto :goto_0
.end method

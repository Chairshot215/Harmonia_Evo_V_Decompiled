.class public Lcom/htc/widget/BouncingListView;
.super Lcom/htc/widget/HtcListViewCore;
.source "BouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/BouncingListView$1;,
        Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;
    }
.end annotation


# static fields
.field private static final SCROLL_OVER_BOUNDARY_THRESHOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HtcBouncingList"

.field private static localLOGV:Z


# instance fields
.field private mAutoRelayoutOnActionCancel:Z

.field protected mBouncingEnabled:Z

.field private mChildrenTotalHeight:I

.field private mChildrenTotalWidth:I

.field private final mDeceleration:F

.field private mEnableScrollOverBottomBoundary:Z

.field private mEnableScrollOverLeftBoundary:Z

.field private mEnableScrollOverRightBoundary:Z

.field private mEnableScrollOverTopBoundary:Z

.field private mMotionViewdifferent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;)V

    .line 40
    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    .line 43
    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    .line 44
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    .line 49
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    .line 58
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 111
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingListView;->mDeceleration:F

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    .line 43
    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    .line 44
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    .line 49
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    .line 58
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 102
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingListView;->mDeceleration:F

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    .line 43
    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    .line 44
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    .line 46
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    .line 49
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    .line 53
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    .line 58
    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    .line 61
    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    .line 93
    .local v0, ppi:F
    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingListView;->mDeceleration:F

    .line 97
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/BouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/widget/BouncingListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/widget/BouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverRightBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/BouncingListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;->enableScrollOverLeftBoundary(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/widget/BouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/widget/BouncingListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;->enableScrollOverRightBoundary(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/BouncingListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/BouncingListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/widget/BouncingListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/widget/BouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverLeftBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/BouncingListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/BouncingListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/htc/widget/BouncingListView;->mPaddingRight:I

    return v0
.end method

.method private disableScrollOverBoundary()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 866
    invoke-direct {p0, v0}, Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V

    .line 867
    invoke-direct {p0, v0}, Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V

    .line 869
    invoke-direct {p0, v0}, Lcom/htc/widget/BouncingListView;->enableScrollOverLeftBoundary(Z)V

    .line 870
    invoke-direct {p0, v0}, Lcom/htc/widget/BouncingListView;->enableScrollOverRightBoundary(Z)V

    .line 872
    return-void
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const v11, 0x7fffffff

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 701
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 702
    .local v0, action:I
    const/4 v6, 0x2

    if-ne v0, v6, :cond_6

    .line 703
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 704
    .local v5, y:I
    iget v6, p0, Lcom/htc/widget/BouncingListView;->mMotionY:I

    if-le v6, v5, :cond_5

    iget-boolean v6, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    if-eqz v6, :cond_5

    .line 705
    invoke-direct {p0, v9}, Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V

    .line 788
    .end local v5           #y:I
    :cond_0
    :goto_0
    if-ne v0, v10, :cond_1

    .line 789
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 791
    :cond_1
    const/4 v6, 0x3

    if-ne v0, v6, :cond_4

    .line 792
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 793
    sget-boolean v6, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v6, :cond_2

    const-string v6, "HtcBouncingList"

    const-string v7, "dispatchTouchEvent(ACTION_CANCEL)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 797
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isAutoRelayoutOnActionCancel()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverLeftBoundary()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverRightBoundary()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 798
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->requestLayout()V

    .line 808
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListViewCore;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    return v6

    .line 706
    .restart local v5       #y:I
    :cond_5
    iget v6, p0, Lcom/htc/widget/BouncingListView;->mMotionY:I

    if-ge v6, v5, :cond_0

    iget-boolean v6, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v6, :cond_0

    .line 707
    invoke-direct {p0, v9}, Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V

    goto :goto_0

    .line 709
    .end local v5           #y:I
    :cond_6
    if-nez v0, :cond_0

    .line 711
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 712
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_8

    .line 715
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 716
    iget-object v6, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v9}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v3, v6, v7

    .line 717
    .local v3, spaceAbove:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int v4, v6, v7

    .line 720
    .local v4, spaceBelow:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_7

    if-gtz v3, :cond_7

    .line 721
    invoke-direct {p0, v10}, Lcom/htc/widget/BouncingListView;->enableScrollOverLeftBoundary(Z)V

    .line 723
    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_8

    if-gtz v4, :cond_8

    .line 724
    invoke-direct {p0, v10}, Lcom/htc/widget/BouncingListView;->enableScrollOverRightBoundary(Z)V

    .line 743
    .end local v3           #spaceAbove:I
    .end local v4           #spaceBelow:I
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 744
    iget v6, p0, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    if-eqz v6, :cond_c

    .line 745
    iput v11, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    .line 760
    :goto_3
    sget-boolean v6, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v6, :cond_9

    .line 761
    const-string v6, "HtcBouncingList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mChildrenTotalHeight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", childrenCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_9
    :goto_4
    sget-boolean v6, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v6, :cond_0

    const-string v6, "HtcBouncingList"

    const-string v7, "dispatchTouchEvent(ACTION_DOWN)"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 727
    :cond_a
    iget-object v6, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v9}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v3, v6, v7

    .line 728
    .restart local v3       #spaceAbove:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int v4, v6, v7

    .line 731
    .restart local v4       #spaceBelow:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getFirstVisiblePosition()I

    move-result v6

    if-nez v6, :cond_b

    if-gtz v3, :cond_b

    .line 732
    invoke-direct {p0, v10}, Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V

    .line 734
    :cond_b
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLastVisiblePosition()I

    move-result v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_8

    if-gtz v4, :cond_8

    .line 735
    invoke-direct {p0, v10}, Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V

    goto/16 :goto_2

    .line 747
    .end local v3           #spaceAbove:I
    .end local v4           #spaceBelow:I
    :cond_c
    const/4 v2, 0x0

    .line 748
    .local v2, childrenWidth:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_d

    .line 749
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0, v9}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    sub-int v2, v6, v7

    .line 752
    :cond_d
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v6

    if-ge v2, v6, :cond_e

    .line 754
    iput v2, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    goto/16 :goto_3

    .line 756
    :cond_e
    iput v11, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    goto/16 :goto_3

    .line 764
    .end local v2           #childrenWidth:I
    :cond_f
    iget v6, p0, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    if-eqz v6, :cond_10

    .line 765
    iput v11, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    .line 780
    :goto_5
    sget-boolean v6, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v6, :cond_9

    .line 781
    const-string v6, "HtcBouncingList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mChildrenTotalWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", childrenCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 767
    :cond_10
    const/4 v1, 0x0

    .line 768
    .local v1, childrenHeight:I
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_11

    .line 769
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p0, v9}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int v1, v6, v7

    .line 772
    :cond_11
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v6

    if-ge v1, v6, :cond_12

    .line 774
    iput v1, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    goto :goto_5

    .line 776
    :cond_12
    iput v11, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    goto :goto_5

    .line 801
    .end local v1           #childrenHeight:I
    :cond_13
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isAutoRelayoutOnActionCancel()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v6

    if-nez v6, :cond_14

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 802
    :cond_14
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->requestLayout()V

    goto/16 :goto_1
.end method

.method private doTrackMotionScrollWithConstrain(II)Z
    .locals 2
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverLeftBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    .line 181
    :goto_0
    return v0

    .line 167
    :cond_0
    if-gez p1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverRightBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0

    .line 171
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0

    .line 174
    :cond_2
    if-lez p1, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0

    .line 177
    :cond_3
    if-gez p1, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 178
    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0

    .line 181
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0
.end method

.method private enableScrollOverBottomBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 861
    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOverBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    .line 863
    return-void
.end method

.method private enableScrollOverLeftBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 845
    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOverBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    .line 847
    return-void
.end method

.method private enableScrollOverRightBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 850
    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOverBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    .line 852
    return-void
.end method

.method private enableScrollOverTopBoundary(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 856
    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "enableScrollOverBoundary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableScrollOverBoundary("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    .line 858
    return-void
.end method

.method private getEstimateDistance(F)I
    .locals 16
    .parameter "initialVelocity"

    .prologue
    .line 311
    sget-boolean v13, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v13, :cond_0

    const-string v13, "HtcBouncingList"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initialVelocity = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v13

    if-lez v13, :cond_8

    .line 314
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 315
    const/4 v9, 0x0

    .line 316
    .local v9, largestChildWidth:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v13

    if-ge v7, v13, :cond_2

    .line 317
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 318
    .local v2, childWidth:I
    if-le v2, v9, :cond_1

    .line 319
    move v9, v2

    .line 316
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 322
    .end local v2           #childWidth:I
    :cond_2
    const/4 v13, 0x0

    cmpl-float v13, p1, v13

    if-ltz v13, :cond_3

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getFirstVisiblePosition()I

    move-result v6

    .line 324
    .local v6, firstVisibleChildPosition:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 325
    .local v4, firstChildLeft:I
    add-int/lit8 v13, v9, 0x1

    mul-int/2addr v13, v6

    sub-int/2addr v13, v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getLeftBorderWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    add-int v3, v13, v14

    .line 361
    .end local v4           #firstChildLeft:I
    .end local v6           #firstVisibleChildPosition:I
    .end local v7           #i:I
    .end local v9           #largestChildWidth:I
    :goto_1
    return v3

    .line 329
    .restart local v7       #i:I
    .restart local v9       #largestChildWidth:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getLastVisiblePosition()I

    move-result v12

    .line 330
    .local v12, lastVisibleChildPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getRightBorderWidth()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int v11, v13, v14

    .line 332
    .local v11, lastChildRight:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v12

    add-int/lit8 v14, v9, 0x1

    mul-int/2addr v13, v14

    add-int v3, v13, v11

    .line 333
    .local v3, estimateDistance:I
    goto :goto_1

    .line 337
    .end local v3           #estimateDistance:I
    .end local v7           #i:I
    .end local v9           #largestChildWidth:I
    .end local v11           #lastChildRight:I
    .end local v12           #lastVisibleChildPosition:I
    :cond_4
    const/4 v8, 0x0

    .line 338
    .local v8, largestChildHeight:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v13

    if-ge v7, v13, :cond_6

    .line 339
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 340
    .local v1, childHeight:I
    if-le v1, v8, :cond_5

    .line 341
    move v8, v1

    .line 338
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 344
    .end local v1           #childHeight:I
    :cond_6
    const/4 v13, 0x0

    cmpl-float v13, p1, v13

    if-ltz v13, :cond_7

    .line 345
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getFirstVisiblePosition()I

    move-result v6

    .line 346
    .restart local v6       #firstVisibleChildPosition:I
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v5

    .line 347
    .local v5, firstChildTop:I
    add-int/lit8 v13, v8, 0x1

    mul-int/2addr v13, v6

    sub-int/2addr v13, v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    add-int v3, v13, v14

    .line 349
    .restart local v3       #estimateDistance:I
    goto :goto_1

    .line 351
    .end local v3           #estimateDistance:I
    .end local v5           #firstChildTop:I
    .end local v6           #firstVisibleChildPosition:I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getLastVisiblePosition()I

    move-result v12

    .line 352
    .restart local v12       #lastVisibleChildPosition:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    add-int v10, v13, v14

    .line 354
    .local v10, lastChildBottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/BouncingListView;->getCount()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v13, v12

    add-int/lit8 v14, v8, 0x1

    mul-int/2addr v13, v14

    add-int v3, v13, v10

    .line 355
    .restart local v3       #estimateDistance:I
    goto/16 :goto_1

    .line 361
    .end local v3           #estimateDistance:I
    .end local v7           #i:I
    .end local v8           #largestChildHeight:I
    .end local v10           #lastChildBottom:I
    .end local v12           #lastVisibleChildPosition:I
    :cond_8
    const v3, 0x7fffffff

    goto/16 :goto_1
.end method

.method private getTotalDistance(F)I
    .locals 3
    .parameter "initialVelocity"

    .prologue
    .line 301
    mul-float v0, p1, p1

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/htc/widget/BouncingListView;->mDeceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isOverBottomBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 195
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/BouncingListView;->mItemCount:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOverLeftBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLeftBorderWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOverRightBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/BouncingListView;->mItemCount:I

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getRightBorderWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isOverTopBoundary()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/BouncingListView;->mFirstPosition:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 694
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 697
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListViewCore;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method enableStopScrollNow()Z
    .locals 1

    .prologue
    .line 813
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->enableStopScrollNow()Z

    move-result v0

    return v0
.end method

.method protected getBottomBoundary()I
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 130
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;
    .locals 2

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingListView;Lcom/htc/widget/BouncingListView$1;)V

    .line 678
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    goto :goto_0
.end method

.method getLeftBoundary()I
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLeftBorderWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getRightBorderWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 139
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->getLeftBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getRightBoundary()I
    .locals 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLeftBorderWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getRightBorderWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->getRightBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getTopBoundary()I
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 122
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBoundary()I

    move-result v0

    goto :goto_0
.end method

.method public isAutoRelayoutOnActionCancel()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    return v0
.end method

.method protected onFling(I)V
    .locals 5
    .parameter "initialVelocity"

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverLeftBoundary()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverRightBoundary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->onUp()V

    .line 298
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    instance-of v2, v2, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    if-nez v2, :cond_2

    .line 280
    new-instance v2, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingListView;Lcom/htc/widget/BouncingListView$1;)V

    iput-object v2, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 282
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/widget/BouncingListView;->reportScrollStateChange(I)V

    .line 283
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 284
    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/widget/BouncingListView;->getTotalDistance(F)I

    move-result v1

    .line 285
    .local v1, totalDistance:I
    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/widget/BouncingListView;->getEstimateDistance(F)I

    move-result v0

    .line 286
    .local v0, estimateDistance:I
    if-le v1, v0, :cond_4

    .line 287
    if-gtz p1, :cond_3

    .line 288
    iget-object v2, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v2, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    .line 291
    :cond_3
    iget-object v2, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v2, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    neg-int v3, v0

    neg-int v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    .line 296
    .end local v0           #estimateDistance:I
    .end local v1           #totalDistance:I
    :cond_4
    iget-object v2, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 1

    .prologue
    .line 882
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 883
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isAutoRelayoutOnActionCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->requestLayout()V

    .line 885
    :cond_1
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onFocusLost()V

    .line 886
    return-void
.end method

.method public onResumeRequestLayout()V
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverLeftBoundary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverRightBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->requestLayout()V

    .line 83
    :cond_1
    :goto_0
    return-void

    .line 78
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->requestLayout()V

    goto :goto_0
.end method

.method onScrollToBoundary()V
    .locals 2

    .prologue
    .line 818
    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcBouncingList"

    const-string v1, "onScrollToBoundary()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_2

    .line 820
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onScrollToBoundary()V

    .line 821
    iget-object v0, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/BouncingListView;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 822
    iget-object v0, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    .line 823
    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcBouncingList"

    const-string v1, "onScrollToBoundary()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_1
    :goto_0
    return-void

    .line 826
    :cond_2
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onScrollToBoundary()V

    goto :goto_0
.end method

.method protected onUp()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 221
    iget-boolean v5, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-nez v5, :cond_0

    .line 222
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onUp()V

    .line 270
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    instance-of v5, v5, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    if-nez v5, :cond_1

    .line 226
    new-instance v5, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingListView;Lcom/htc/widget/BouncingListView$1;)V

    iput-object v5, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 231
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverLeftBoundary()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    iget-object v5, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v5, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    invoke-virtual {p0, v7}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLeftBorderWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .line 234
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverRightBoundary()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 236
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getRightBorderWidth()I

    move-result v6

    sub-int v2, v5, v6

    .line 238
    .local v2, distanceToRight:I
    iget v5, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLeftBorderWidth()I

    move-result v6

    add-int v1, v5, v6

    .line 241
    .local v1, distanceToLeft:I
    if-ge v1, v2, :cond_3

    move v4, v1

    .line 243
    .local v4, scrollDistance:I
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v5, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .end local v4           #scrollDistance:I
    :cond_3
    move v4, v2

    .line 241
    goto :goto_1

    .line 246
    .end local v1           #distanceToLeft:I
    .end local v2           #distanceToRight:I
    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 247
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onUp()V

    goto/16 :goto_0

    .line 250
    :cond_5
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 251
    iget-object v5, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v5, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    invoke-virtual {p0, v7}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .line 253
    :cond_6
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 255
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v6

    sub-int v0, v5, v6

    .line 257
    .local v0, distanceToBottom:I
    iget v5, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/BouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v6

    add-int v3, v5, v6

    .line 260
    .local v3, distanceToTop:I
    if-ge v3, v0, :cond_7

    move v4, v3

    .line 262
    .restart local v4       #scrollDistance:I
    :goto_2
    iget-object v5, p0, Lcom/htc/widget/BouncingListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v5, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    neg-int v6, v4

    invoke-virtual {v5, v6}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .end local v4           #scrollDistance:I
    :cond_7
    move v4, v0

    .line 260
    goto :goto_2

    .line 265
    .end local v0           #distanceToBottom:I
    .end local v3           #distanceToTop:I
    :cond_8
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 266
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onUp()V

    goto/16 :goto_0
.end method

.method resurrectSelection()Z
    .locals 1

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 877
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->resurrectSelection()Z

    move-result v0

    return v0
.end method

.method public setAutoRelayoutOnActionCancel(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    .line 65
    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    .line 88
    return-void
.end method

.method public setSelectionFromLeft(II)V
    .locals 0
    .parameter "position"
    .parameter "x"

    .prologue
    .line 840
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 841
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromLeft(II)V

    .line 842
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 0
    .parameter "position"
    .parameter "y"

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    .line 834
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromTop(II)V

    .line 835
    return-void
.end method

.method trackMotionScrollWithConstrain(II)Z
    .locals 1
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingListView;->doTrackMotionScrollWithConstrain(II)Z

    move-result v0

    .line 156
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0
.end method

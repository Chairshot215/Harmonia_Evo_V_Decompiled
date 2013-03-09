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

    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;)V

    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingListView;->mDeceleration:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingListView;->mDeceleration:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const v3, 0x7fffffff

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListViewCore;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    iput v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    iput-boolean v2, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    iput-boolean v1, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x4320

    mul-float v0, v1, v2

    const v1, 0x43c0e9ba

    mul-float/2addr v1, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/htc/widget/BouncingListView;->mDeceleration:F

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/widget/BouncingListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/BouncingListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mMotionViewdifferent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/BouncingListView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/widget/BouncingListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/widget/BouncingListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/widget/BouncingListView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/widget/BouncingListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/widget/BouncingListView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/widget/BouncingListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/widget/BouncingListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/widget/BouncingListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/BouncingListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    return v0
.end method

.method private disableScrollOverBoundary()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V

    invoke-direct {p0, v0}, Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V

    return-void
.end method

.method private doTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    const v10, 0x7fffffff

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    if-le v5, v4, :cond_5

    iget-boolean v5, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    if-eqz v5, :cond_5

    invoke-direct {p0, v8}, Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V

    :cond_0
    :goto_0
    if-ne v0, v9, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    :cond_1
    const/4 v5, 0x3

    if-ne v0, v5, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    sget-boolean v5, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v5, :cond_2

    const-string v5, "HtcBouncingList"

    const-string v6, "dispatchTouchEvent(ACTION_CANCEL)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isAutoRelayoutOnActionCancel()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->requestLayout()V

    :cond_4
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListViewCore;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    return v5

    :cond_5
    iget v5, p0, Lcom/htc/widget/HtcAbsListView;->mMotionY:I

    if-ge v5, v4, :cond_0

    iget-boolean v5, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v8}, Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V

    goto :goto_0

    :cond_6
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_8

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v2, v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    sub-int v3, v5, v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getFirstVisiblePosition()I

    move-result v5

    if-nez v5, :cond_7

    if-gtz v2, :cond_7

    invoke-direct {p0, v9}, Lcom/htc/widget/BouncingListView;->enableScrollOverTopBoundary(Z)V

    :cond_7
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLastVisiblePosition()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_8

    if-gtz v3, :cond_8

    invoke-direct {p0, v9}, Lcom/htc/widget/BouncingListView;->enableScrollOverBottomBoundary(Z)V

    :cond_8
    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-eqz v5, :cond_a

    iput v10, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    :goto_1
    sget-boolean v5, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v5, :cond_9

    const-string v5, "HtcBouncingList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mChildrenTotalWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalWidth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", childrenCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v5, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v5, :cond_0

    const-string v5, "HtcBouncingList"

    const-string v6, "dispatchTouchEvent(ACTION_DOWN)"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_b

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v1, v5, v6

    :cond_b
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v5

    if-ge v1, v5, :cond_c

    iput v1, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    goto :goto_1

    :cond_c
    iput v10, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    goto :goto_1
.end method

.method private doTrackMotionScrollWithConstrain(II)Z
    .locals 2

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v0

    if-eqz v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-gez p1, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    div-int/lit8 v0, p1, 0x2

    div-int/lit8 v1, p2, 0x2

    invoke-super {p0, v0, v1}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0
.end method

.method private enableScrollOverBottomBoundary(Z)V
    .locals 3

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

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    return-void
.end method

.method private enableScrollOverLeftBoundary(Z)V
    .locals 3

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

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverLeftBoundary:Z

    return-void
.end method

.method private enableScrollOverRightBoundary(Z)V
    .locals 3

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

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverRightBoundary:Z

    return-void
.end method

.method private enableScrollOverTopBoundary(Z)V
    .locals 3

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

    :cond_0
    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    return-void
.end method

.method private getEstimateDistance(F)I
    .locals 11

    sget-boolean v8, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v8, :cond_0

    const-string v8, "HtcBouncingList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initialVelocity = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    if-ge v4, v8, :cond_2

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le v0, v5, :cond_1

    move v5, v0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-ltz v8, :cond_3

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getFirstVisiblePosition()I

    move-result v3

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/lit8 v8, v5, 0x1

    mul-int/2addr v8, v3

    sub-int/2addr v8, v2

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int v1, v8, v9

    :goto_1
    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getLastVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p0, v8}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v6, v8, v9

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v7

    add-int/lit8 v9, v5, 0x1

    mul-int/2addr v8, v9

    add-int v1, v8, v6

    goto :goto_1

    :cond_4
    const v1, 0x7fffffff

    goto :goto_1
.end method

.method private getTotalDistance(F)I
    .locals 3

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

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

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

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

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

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

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

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

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

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

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

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

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

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/widget/BouncingListView;->doTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListViewCore;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method enableStopScrollNow()Z
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->enableStopScrollNow()Z

    move-result v0

    return v0
.end method

.method protected getBottomBoundary()I
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverBottomBoundary:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->getBottomBoundary()I

    move-result v0

    goto :goto_0
.end method

.method getDefaultFlingRunnable()Lcom/htc/widget/HtcAbsListView$FlingRunnable;
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingListView;Lcom/htc/widget/BouncingListView$1;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView;)V

    goto :goto_0
.end method

.method getTopBoundary()I
    .locals 2

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mEnableScrollOverTopBoundary:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->getTopBoundary()I

    move-result v0

    goto :goto_0
.end method

.method public isAutoRelayoutOnActionCancel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    return v0
.end method

.method protected onFling(I)V
    .locals 5

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

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->onUp()V

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    instance-of v2, v2, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    if-nez v2, :cond_2

    new-instance v2, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingListView;Lcom/htc/widget/BouncingListView$1;)V

    iput-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    :cond_2
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/widget/BouncingListView;->reportScrollStateChange(I)V

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_4

    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/widget/BouncingListView;->getTotalDistance(F)I

    move-result v1

    int-to-float v2, p1

    invoke-direct {p0, v2}, Lcom/htc/widget/BouncingListView;->getEstimateDistance(F)I

    move-result v0

    if-le v1, v0, :cond_4

    if-gtz p1, :cond_3

    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v2, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v0, v3}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v2, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    neg-int v3, v0

    neg-int v4, p1

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistanceAndVelocity(II)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    neg-int v3, p1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->start(I)V

    goto :goto_0
.end method

.method protected onFocusLost()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->isAutoRelayoutOnActionCancel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->requestLayout()V

    :cond_1
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onFocusLost()V

    return-void
.end method

.method public onResumeRequestLayout()V
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->requestLayout()V

    :cond_1
    return-void
.end method

.method onScrollToBoundary()V
    .locals 2

    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "HtcBouncingList"

    const-string v1, "onScrollToBoundary()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_2

    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onScrollToBoundary()V

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/htc/widget/HtcAbsListView;->mTouchMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAbsListView$FlingRunnable;->endFling()V

    sget-boolean v0, Lcom/htc/widget/BouncingListView;->localLOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "HtcBouncingList"

    const-string v1, "onScrollToBoundary()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onScrollToBoundary()V

    goto :goto_0
.end method

.method protected onUp()V
    .locals 6

    iget-boolean v3, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-nez v3, :cond_0

    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onUp()V

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    instance-of v3, v3, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    if-nez v3, :cond_1

    new-instance v3, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/BouncingListView;Lcom/htc/widget/BouncingListView$1;)V

    iput-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    :cond_1
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverTopBoundary()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v3, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->isOverBottomBoundary()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getBottomBorderHeight()I

    move-result v4

    sub-int v0, v3, v4

    iget v3, p0, Lcom/htc/widget/BouncingListView;->mChildrenTotalHeight:I

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/htc/widget/BouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/widget/BouncingListView;->getTopBorderHeight()I

    move-result v4

    add-int v1, v3, v4

    if-ge v1, v0, :cond_3

    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mFlingRunnable:Lcom/htc/widget/HtcAbsListView$FlingRunnable;

    check-cast v3, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;

    neg-int v4, v2

    invoke-virtual {v3, v4}, Lcom/htc/widget/BouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->onUp()V

    goto/16 :goto_0
.end method

.method resurrectSelection()Z
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    invoke-super {p0}, Lcom/htc/widget/HtcListViewCore;->resurrectSelection()Z

    move-result v0

    return v0
.end method

.method public setAutoRelayoutOnActionCancel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mAutoRelayoutOnActionCancel:Z

    return-void
.end method

.method public setBouncingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    return-void
.end method

.method public setSelectionFromLeft(II)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromLeft(II)V

    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/BouncingListView;->disableScrollOverBoundary()V

    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->setSelectionFromTop(II)V

    return-void
.end method

.method trackMotionScrollWithConstrain(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/BouncingListView;->mBouncingEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/BouncingListView;->doTrackMotionScrollWithConstrain(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcListViewCore;->trackMotionScrollWithConstrain(II)Z

    move-result v0

    goto :goto_0
.end method

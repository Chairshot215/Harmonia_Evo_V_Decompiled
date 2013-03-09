.class public Lcom/htc/widget/MoreExpandableHtcListView;
.super Lcom/htc/widget/HtcListView;
.source "MoreExpandableHtcListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;,
        Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;,
        Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;,
        Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;,
        Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;,
        Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;
    }
.end annotation


# static fields
.field private static final INACTIVERUNNABLEINDEX:I = 0x7fffffff

.field private static final INCREASE_DURATION:[I = null

.field private static final MAX_CACHE:I = 0x10

.field private static final REDUCE_DURATION:[I = null

.field private static final TAG:Ljava/lang/String; = "MoreExpandableHtcListView"


# instance fields
.field private mActiveRunnableCount:I

.field private mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

.field private mAnimationFlag:Z

.field mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

.field mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

.field mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

.field mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

.field mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

.field mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

.field private mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

.field private mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

.field private mCollapseReduceViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCollapseReduceViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

.field private mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

.field private mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

.field private mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

.field private mExpandReduceViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandReduceViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mExpandedChildrenBackgroundColor:I

.field private mFooterView:Landroid/view/View;

.field private mHideViewHeightList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHideViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsModified:Z

.field private mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

.field private mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

.field mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

.field private mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

.field private mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

.field private mTargetTopPosition:[I

.field mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

.field private mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 966
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    .line 967
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->REDUCE_DURATION:[I

    return-void

    .line 966
    nop

    :array_0
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    .line 967
    :array_1
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 34
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 35
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 211
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    .line 377
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    .line 378
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    .line 379
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    .line 380
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    .line 381
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    .line 382
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    .line 383
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    .line 384
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    .line 947
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    .line 948
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 951
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 954
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    .line 955
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 958
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    .line 959
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    .line 960
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    .line 961
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    .line 962
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    .line 2049
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2057
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2078
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    .line 2150
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    .line 41
    return-void

    .line 961
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 34
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 35
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 211
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    .line 377
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    .line 378
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    .line 379
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    .line 380
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    .line 381
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    .line 382
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    .line 383
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    .line 384
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    .line 947
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    .line 948
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 951
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 954
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    .line 955
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 958
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    .line 959
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    .line 960
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    .line 961
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    .line 962
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    .line 2049
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2057
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2078
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    .line 2150
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 45
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    .line 46
    return-void

    .line 961
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 34
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 35
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 211
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    .line 377
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    .line 378
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    .line 379
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    .line 380
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    .line 381
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    .line 382
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    .line 383
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    .line 384
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    .line 947
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    .line 948
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 950
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 951
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    .line 952
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 954
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    .line 955
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    .line 956
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 958
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    .line 959
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    .line 960
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    .line 961
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    .line 962
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    .line 2049
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2057
    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2078
    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    .line 2150
    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 51
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    .line 52
    return-void

    .line 961
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private ResetActiveRunnableCount()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 2100
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->getRunnableIndex()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 2115
    :cond_0
    :goto_0
    return-void

    .line 2102
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2104
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2106
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2112
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2114
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->adjustFooterHeight()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/widget/MoreExpandableHtcListView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->setToTop(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->increaseViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCollapseReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->recoverCollapseReduceViewList()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceOtherRootViewList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/widget/MoreExpandableHtcListView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->checkView(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setTargetTopPosition()V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/widget/MoreExpandableHtcListView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->recoverExpandReduceViewList()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/widget/MoreExpandableHtcListView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$804(Lcom/htc/widget/MoreExpandableHtcListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V

    return-void
.end method

.method private adjustFooterHeight()V
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 397
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v5, :cond_0

    .line 425
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v5}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 401
    .local v0, lastPosition:I
    if-gez v0, :cond_1

    .line 404
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 405
    .local v4, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 406
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 409
    .end local v4           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 410
    .restart local v4       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 411
    .local v1, lastView:Landroid/view/View;
    if-nez v1, :cond_2

    .line 412
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 422
    :goto_1
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 414
    :cond_2
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 415
    .local v2, listlocation:[I
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    .line 416
    .local v3, location:[I
    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getLocationOnScreen([I)V

    .line 417
    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 419
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    aget v7, v3, v8

    add-int/2addr v6, v7

    aget v7, v2, v8

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 414
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 415
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private checkView(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 1977
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1978
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1979
    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 1980
    .local v0, location:[I
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1981
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 1983
    .end local v0           #location:[I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1979
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private chooseExpandAnimation(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 1
    .parameter "position"
    .parameter "self"

    .prologue
    .line 1417
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v0

    if-nez v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 1422
    :goto_0
    return-void

    .line 1420
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0
.end method

.method private fillFooterHeight()V
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 388
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 389
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    return-void
.end method

.method private fillFooterHeightToScreen()V
    .locals 8

    .prologue
    .line 2241
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 2242
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 2243
    .local v5, wm:Landroid/view/WindowManager;
    if-eqz v5, :cond_0

    .line 2244
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2245
    .local v0, dp:Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 2246
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 2247
    .local v1, height:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 2248
    .local v4, width:I
    if-le v1, v4, :cond_1

    move v3, v1

    .line 2249
    .local v3, target:I
    :goto_0
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 2250
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2251
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2255
    .end local v0           #dp:Landroid/view/Display;
    .end local v1           #height:I
    .end local v2           #lp:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #target:I
    .end local v4           #width:I
    .end local v5           #wm:Landroid/view/WindowManager;
    :cond_0
    return-void

    .restart local v0       #dp:Landroid/view/Display;
    .restart local v1       #height:I
    .restart local v4       #width:I
    .restart local v5       #wm:Landroid/view/WindowManager;
    :cond_1
    move v3, v4

    .line 2248
    goto :goto_0
.end method

.method private getCollapseReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 7
    .parameter "position"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1088
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1092
    .local v0, collapseReduceViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v3

    .line 1093
    .local v3, selfLevel:I
    add-int/lit8 v1, p1, 0x1

    .line 1094
    .local v1, index:I
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v2

    .line 1096
    .local v2, itemListSize:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1097
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    .line 1098
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-le v6, v3, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1100
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 1101
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1111
    .end local v4           #temp:Lcom/htc/widget/MoreExpandableItemInfo;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    return-object v0
.end method

.method private getExpandReduceOtherRootViewList()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    .local v0, expandReduceOtherRootViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedRootPosition()I

    move-result v1

    .line 1431
    .local v1, expandedRootPosition:I
    add-int/lit8 v2, v1, 0x1

    .line 1433
    .local v2, index:I
    if-gez v2, :cond_1

    .line 1451
    :cond_0
    return-object v0

    .line 1436
    :cond_1
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v3

    .line 1437
    .local v3, itemListSize:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1438
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    .line 1439
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-lez v6, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1441
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1442
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1444
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getExpandReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 7
    .parameter "position"
    .parameter "self"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    .local v0, expandReduceViewList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v3

    .line 1573
    .local v3, selfLevel:I
    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    .line 1576
    .local v2, parent:Lcom/htc/widget/MoreExpandableItemInfo;
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 1578
    .local v1, index:I
    if-gez v1, :cond_1

    .line 1593
    :cond_0
    return-object v0

    .line 1581
    :cond_1
    :goto_0
    if-ge v1, p1, :cond_0

    .line 1582
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    .line 1583
    .local v4, temp:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-ne v6, v3, :cond_2

    .line 1584
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1585
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_2

    .line 1586
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    .end local v5           #view:Landroid/view/View;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getIncreaseMoveDuration(I)I
    .locals 2
    .parameter "count"

    .prologue
    const/4 v0, 0x5

    .line 999
    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    .line 1000
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1004
    :goto_0
    return v0

    .line 1001
    :cond_0
    if-le p1, v0, :cond_1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    .line 1002
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    .line 1004
    :cond_1
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getReduceMoveDuration(I)I
    .locals 2
    .parameter "count"

    .prologue
    .line 1011
    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 1012
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->REDUCE_DURATION:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 1014
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->REDUCE_DURATION:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method private increaseViewHeight(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "step"

    .prologue
    .line 1389
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1391
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1392
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1393
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1400
    :goto_0
    return-void

    .line 1396
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1397
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1398
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 118
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 119
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x20900d3

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 124
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x20806a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->addFooterView(Landroid/view/View;)V

    .line 128
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    .line 129
    const v3, -0x242425

    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setExpandedChildrenBackgroundColor(I)V

    .line 130
    invoke-virtual {p0, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 134
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-super {p0, v3}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 136
    return-void
.end method

.method private moveToTop(II)V
    .locals 0
    .parameter "position"
    .parameter "top"

    .prologue
    .line 1969
    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    .line 1970
    return-void
.end method

.method private recoverCollapseReduceViewList()V
    .locals 4

    .prologue
    .line 2006
    const/4 v2, 0x0

    .line 2007
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2008
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 2009
    .restart local v2       #view:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 2011
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2012
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    .line 2013
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2007
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2016
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 2017
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2018
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2021
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method private recoverExpandReduceViewList()V
    .locals 4

    .prologue
    .line 1988
    const/4 v2, 0x0

    .line 1989
    .local v2, view:Landroid/view/View;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1990
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .line 1991
    .restart local v2       #view:Landroid/view/View;
    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 1993
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1994
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    .line 1995
    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1989
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1998
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1999
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2000
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2003
    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method private reduceViewHeight(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "step"

    .prologue
    .line 1244
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1246
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1247
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1248
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    :goto_0
    return-void

    .line 1251
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1252
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1253
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetFooterHeight()V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->start()V

    .line 394
    return-void
.end method

.method private setDefaultChildDivider(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 928
    .line 929
    return-void
.end method

.method private setIncreaseDuration(ILjava/util/ArrayList;J)I
    .locals 11
    .parameter "viewCount"
    .parameter
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 1019
    .local p2, duration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    int-to-float v0, p1

    .line 1020
    .local v0, count:F
    const/4 v7, 0x0

    .line 1021
    .local v7, percent:F
    const/4 v8, 0x0

    .line 1022
    .local v8, prePercent:F
    const/4 v1, 0x0

    .line 1023
    .local v1, eachDuration:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1024
    .local v4, now:J
    sub-long v9, v4, p3

    long-to-int v6, v9

    .line 1026
    .local v6, passTime:I
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->getIncreaseMoveDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    .line 1028
    .local v3, moveDuration:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 1029
    iget-object v9, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    div-float/2addr v10, v0

    invoke-virtual {v9, v10}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->getInterpolation(F)F

    move-result v7

    .line 1030
    if-nez v2, :cond_1

    .line 1031
    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-int v1, v9

    .line 1032
    if-lez v1, :cond_0

    .line 1033
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    :goto_1
    move v8, v7

    .line 1028
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1035
    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1039
    :cond_1
    int-to-float v9, v3

    sub-float v10, v7, v8

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 1040
    if-lez v1, :cond_2

    .line 1041
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    :goto_3
    move v8, v7

    goto :goto_2

    .line 1043
    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1049
    :cond_3
    return v3
.end method

.method private setIncreaseViewHeight(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "height"

    .prologue
    .line 1403
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1405
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1406
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1407
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1414
    :goto_0
    return-void

    .line 1410
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1411
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1412
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setReduceDuration(ILjava/util/ArrayList;J)I
    .locals 11
    .parameter "viewCount"
    .parameter
    .parameter "startTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 1053
    .local p2, duration:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    int-to-float v0, p1

    .line 1054
    .local v0, count:F
    const/4 v7, 0x0

    .line 1055
    .local v7, percent:F
    const/4 v8, 0x0

    .line 1056
    .local v8, prePercent:F
    const/4 v1, 0x0

    .line 1057
    .local v1, eachDuration:I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1058
    .local v4, now:J
    sub-long v9, v4, p3

    long-to-int v6, v9

    .line 1060
    .local v6, passTime:I
    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->getReduceMoveDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    .line 1062
    .local v3, moveDuration:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 1063
    iget-object v9, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    div-float/2addr v10, v0

    invoke-virtual {v9, v10}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->getInterpolation(F)F

    move-result v7

    .line 1064
    if-nez v2, :cond_1

    .line 1065
    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-int v1, v9

    .line 1066
    if-lez v1, :cond_0

    .line 1067
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :goto_1
    move v8, v7

    .line 1062
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1073
    :cond_1
    int-to-float v9, v3

    sub-float v10, v7, v8

    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 1074
    if-lez v1, :cond_2

    .line 1075
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    :goto_3
    move v8, v7

    goto :goto_2

    .line 1077
    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1082
    :cond_3
    return v3
.end method

.method private setReduceViewHeight(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x1

    .line 1258
    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 1260
    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1261
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1262
    check-cast p1, Lcom/htc/widget/HtcListItem;

    .end local p1
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    :goto_0
    return-void

    .line 1265
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1266
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1267
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setTargetTopPosition()V
    .locals 5

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->getLocationOnScreen([I)V

    .line 1834
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getTopBorderHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1835
    return-void
.end method

.method private setToTop(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1973
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    .line 1974
    return-void
.end method


# virtual methods
.method public BlockingChangeRoot(Ljava/util/LinkedList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2224
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    if-eqz v0, :cond_0

    .line 2225
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Other operation has been done"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2227
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v0, :cond_1

    .line 2228
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mAdapter is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2230
    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_2

    .line 2231
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Other operation has been done"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2233
    :cond_2
    if-nez p1, :cond_3

    .line 2234
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "itemList is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2236
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeRoot(Ljava/util/LinkedList;)V

    .line 2238
    return-void
.end method

.method public Destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2119
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    .line 2120
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    .line 2121
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    .line 2122
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    .line 2123
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    .line 2124
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    .line 2125
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    .line 2126
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    .line 2127
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    .line 2128
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    .line 2129
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    .line 2130
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    .line 2131
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    .line 2132
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    .line 2133
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    .line 2134
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    .line 2135
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    .line 2136
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    .line 2137
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    .line 2138
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    .line 2139
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    .line 2140
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    .line 2141
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    .line 2142
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    .line 2143
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->Destroy()V

    .line 2146
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 2147
    return-void
.end method

.method public appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 1
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p2, newChildren:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 335
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 339
    :cond_0
    return-void
.end method

.method public appendRoot(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 359
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->start(Ljava/util/LinkedList;)V

    .line 363
    :cond_0
    return-void
.end method

.method public changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 1
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p2, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 321
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 326
    :cond_0
    return-void
.end method

.method public changeRoot(Ljava/util/LinkedList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, itemList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 347
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->start(Ljava/util/LinkedList;)V

    .line 351
    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 306
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v0, :cond_0

    .line 311
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->start()V

    goto :goto_0
.end method

.method public deleteItem(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 371
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->start(I)V

    .line 375
    :cond_0
    return-void
.end method

.method public expandAndSetChildrenWithOutAnimation(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 4
    .parameter "self"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, children:Ljava/util/LinkedList;,"Ljava/util/LinkedList<+Lcom/htc/widget/MoreExpandableItemInfo;>;"
    const/4 v3, 0x0

    .line 2169
    iget-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    if-eqz v1, :cond_0

    .line 2170
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Other operation has been done"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2172
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v1, :cond_1

    .line 2173
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "mAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2175
    :cond_1
    if-nez p1, :cond_2

    .line 2176
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2178
    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v1, :cond_3

    .line 2179
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Other operation has been done"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2181
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2182
    .local v0, checkPos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    .line 2183
    :cond_4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not in list"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2184
    :cond_5
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2185
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not a group item"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2186
    :cond_6
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2187
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is already expanded"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2188
    :cond_7
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-nez v1, :cond_8

    .line 2189
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not a root node but it does not have parent"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2190
    :cond_8
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 2191
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Another path is already expanded"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2192
    :cond_9
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2193
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Self is not a child of the current expanded item"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2196
    :cond_a
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-nez v1, :cond_c

    .line 2197
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I

    .line 2198
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeightToScreen()V

    .line 2199
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2200
    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    .line 2201
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    .line 2212
    :cond_b
    :goto_0
    return-void

    .line 2202
    :cond_c
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2203
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I

    .line 2204
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeightToScreen()V

    .line 2205
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 2206
    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    .line 2210
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    return-object v0
.end method

.method public getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentExpandedPosition()I
    .locals 2

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    .line 96
    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 9
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    .line 142
    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    .line 143
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v7

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v8

    .line 150
    .local v8, self:Lcom/htc/widget/MoreExpandableItemInfo;
    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;->onGroupClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IJ)Z

    move-result v7

    goto :goto_0

    .line 154
    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    .line 155
    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    .line 157
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-virtual {v0, p2, v8}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    .line 176
    :goto_1
    const/4 v7, 0x1

    .local v7, returnValue:Z
    goto :goto_0

    .line 165
    .end local v7           #returnValue:Z
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p2, v8}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    .line 166
    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    .line 167
    invoke-direct {p0, p2, v8}, Lcom/htc/widget/MoreExpandableHtcListView;->chooseExpandAnimation(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_1

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    if-eqz v0, :cond_6

    .line 179
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v3

    .line 180
    .local v3, groupPosition:I
    invoke-static {v3, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildPosition(II)I

    move-result v4

    .line 181
    .local v4, childPosition:I
    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-nez v0, :cond_5

    .line 182
    move v3, p2

    .line 183
    const/4 v4, -0x1

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;->onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z

    move-result v7

    goto :goto_0

    .line 187
    .end local v3           #groupPosition:I
    .end local v4           #childPosition:I
    :cond_6
    const/4 v7, 0x0

    .restart local v7       #returnValue:Z
    goto :goto_0
.end method

.method isAnyRunnableBefore(I)Z
    .locals 2
    .parameter "runnableIndex"

    .prologue
    const/4 v0, 0x1

    .line 2082
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->getRunnableIndex()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 2096
    :cond_0
    :goto_0
    return v0

    .line 2084
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2086
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2088
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2090
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2092
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2094
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    .line 2096
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 1
    .parameter "groupPosition"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->isGroupExpanded(I)Z

    move-result v0

    .line 288
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 2259
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2260
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    .line 2261
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    .line 2262
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2025
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_0

    .line 2026
    const/4 v0, 0x0

    .line 2028
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2033
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_0

    .line 2034
    const/4 v0, 0x1

    .line 2036
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2041
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_0

    .line 2042
    const/4 v0, 0x1

    .line 2044
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/MoreExpandableHtcListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V
    .locals 4
    .parameter "adapter"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    .line 62
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->linkHideViewList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 63
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setExpandedChildrenBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "childDivider"

    .prologue
    .line 297
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V

    .line 298
    return-void
.end method

.method public setExpandedChildrenBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 106
    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    .line 107
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setExpandedChildrenBackgroundColor(I)V

    .line 109
    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V
    .locals 0
    .parameter "onChildClickListener"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    .line 243
    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;)V
    .locals 0
    .parameter "onGroupClickListener"

    .prologue
    .line 214
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    .line 215
    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V
    .locals 0
    .parameter "onGroupCollapseListener"

    .prologue
    .line 261
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    .line 262
    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V
    .locals 0
    .parameter "onGroupExpandListener"

    .prologue
    .line 281
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    .line 282
    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 1
    .parameter "onScrollListener"

    .prologue
    .line 2053
    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    .line 2054
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    .line 2055
    return-void
.end method

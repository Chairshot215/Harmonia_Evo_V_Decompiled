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

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->REDUCE_DURATION:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x96t 0x0t 0x0t 0x0t
        0xfat 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;Lcom/htc/widget/MoreExpandableHtcListView$1;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    new-instance v0, Lcom/htc/widget/MoreExpandableHtcListView$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/MoreExpandableHtcListView$1;-><init>(Lcom/htc/widget/MoreExpandableHtcListView;)V

    iput-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iput v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    iput-boolean v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->init(Landroid/content/Context;)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private ResetActiveRunnableCount()V
    .locals 2

    const v1, 0x7fffffff

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->getRunnableIndex()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->getRunnableIndex()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/htc/widget/MoreExpandableHtcListView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/widget/MoreExpandableHtcListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->adjustFooterHeight()V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/widget/MoreExpandableHtcListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->setToTop(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseDuration(ILjava/util/ArrayList;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->setIncreaseViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->increaseViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->getCollapseReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->recoverCollapseReduceViewList()V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/widget/MoreExpandableHtcListView;ILjava/util/ArrayList;J)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/MoreExpandableHtcListView;->setReduceDuration(ILjava/util/ArrayList;J)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->setReduceViewHeight(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->reduceViewHeight(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/widget/MoreExpandableHtcListView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceOtherRootViewList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/widget/MoreExpandableHtcListView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/htc/widget/MoreExpandableHtcListView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->checkView(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->setTargetTopPosition()V

    return-void
.end method

.method static synthetic access$4200(Lcom/htc/widget/MoreExpandableHtcListView;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    return-object v0
.end method

.method static synthetic access$4300(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->recoverExpandReduceViewList()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/widget/MoreExpandableHtcListView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->moveToTop(II)V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/htc/widget/MoreExpandableHtcListView;ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->getExpandReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4700(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/htc/widget/MoreExpandableHtcListView;)Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    return-object v0
.end method

.method static synthetic access$804(Lcom/htc/widget/MoreExpandableHtcListView;)I
    .locals 1

    iget v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mActiveRunnableCount:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/widget/MoreExpandableHtcListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->ResetActiveRunnableCount()V

    return-void
.end method

.method private adjustFooterHeight()V
    .locals 9

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v5}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    if-gez v0, :cond_1

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0, v5}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_2

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    iget-object v5, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    new-array v2, v7, [I

    fill-array-data v2, :array_0

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getLocationOnScreen([I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

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

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private checkView(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v0, v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private chooseExpandAnimation(ILcom/htc/widget/MoreExpandableItemInfo;)V
    .locals 1

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_0
.end method

.method private fillFooterHeight()V
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private fillFooterHeightToScreen()V
    .locals 8

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    if-le v1, v4, :cond_1

    move v3, v1

    :goto_0
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private getCollapseReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 7
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v3

    add-int/lit8 v1, p1, 0x1

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-le v6, v3, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getExpandedRootPosition()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    if-gez v2, :cond_1

    :cond_0
    return-object v0

    :cond_1
    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_0

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getExpandReduceViewList(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/ArrayList;
    .locals 7
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v3

    invoke-virtual {p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v2

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    if-gez v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v6, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v6, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v6

    if-ne v6, v3, :cond_2

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getFirstVisiblePosition()I

    move-result v6

    sub-int v6, v1, v6

    invoke-virtual {p0, v6}, Lcom/htc/widget/MoreExpandableHtcListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getIncreaseMoveDuration(I)I
    .locals 2

    const/4 v0, 0x5

    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    if-le p1, v0, :cond_1

    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->INCREASE_DURATION:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method private getReduceMoveDuration(I)I
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/htc/widget/MoreExpandableHtcListView;->REDUCE_DURATION:[I

    const/4 v1, 0x0

    aget v0, v0, v1

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

    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    check-cast p1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x0

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v3, 0x20900d3

    invoke-virtual {v1, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20806a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->addFooterView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    const v3, -0x242425

    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setExpandedChildrenBackgroundColor(I)V

    invoke-virtual {p0, v4}, Lcom/htc/widget/MoreExpandableHtcListView;->setVerticalFadingEdgeEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setIsMoreExpandableListView(Z)V

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-super {p0, v3}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    return-void
.end method

.method private moveToTop(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    return-void
.end method

.method private recoverCollapseReduceViewList()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private recoverExpandReduceViewList()V
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v3, v2, Lcom/htc/widget/HtcListItem;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v3, v2

    check-cast v3, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private reduceViewHeight(Landroid/view/View;I)V
    .locals 2

    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    check-cast p1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private resetFooterHeight()V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->start()V

    return-void
.end method

.method private setDefaultChildDivider(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private setIncreaseDuration(ILjava/util/ArrayList;J)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)I"
        }
    .end annotation

    int-to-float v0, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v9, v4, p3

    long-to-int v6, v9

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->getIncreaseMoveDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    iget-object v9, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    div-float/2addr v10, v0

    invoke-virtual {v9, v10}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->getInterpolation(F)F

    move-result v7

    if-nez v2, :cond_1

    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-int v1, v9

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v8, v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    int-to-float v9, v3

    sub-float v10, v7, v8

    mul-float/2addr v9, v10

    float-to-int v1, v9

    if-lez v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v8, v7

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return v3
.end method

.method private setIncreaseViewHeight(Landroid/view/View;I)V
    .locals 2

    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    check-cast p1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setReduceDuration(ILjava/util/ArrayList;J)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;J)I"
        }
    .end annotation

    int-to-float v0, p1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v9, v4, p3

    long-to-int v6, v9

    invoke-direct {p0, p1}, Lcom/htc/widget/MoreExpandableHtcListView;->getReduceMoveDuration(I)I

    move-result v9

    sub-int v3, v9, v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    iget-object v9, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    add-int/lit8 v10, v2, 0x1

    int-to-float v10, v10

    div-float/2addr v10, v0

    invoke-virtual {v9, v10}, Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;->getInterpolation(F)F

    move-result v7

    if-nez v2, :cond_1

    int-to-float v9, v3

    mul-float/2addr v9, v7

    float-to-int v1, v9

    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move v8, v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    int-to-float v9, v3

    sub-float v10, v7, v8

    mul-float/2addr v9, v10

    float-to-int v1, v9

    if-lez v1, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v8, v7

    goto :goto_2

    :cond_2
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    return v3
.end method

.method private setReduceViewHeight(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    instance-of v1, p1, Lcom/htc/widget/HtcListItem;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItem;->getCustomLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    check-cast p1, Lcom/htc/widget/HtcListItem;

    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcListItem;->setCustomLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setTargetTopPosition()V
    .locals 5

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    invoke-virtual {p0, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTargetTopPosition:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Lcom/htc/widget/HtcAbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getTopBorderHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method private setToTop(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    return-void
.end method


# virtual methods
.method public BlockingChangeRoot(Ljava/util/LinkedList;)V
    .locals 2
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

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Other operation has been done"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "mAdapter is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Other operation has been done"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-nez p1, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "itemList is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->changeRoot(Ljava/util/LinkedList;)V

    return-void
.end method

.method public Destroy()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mSelectedMoreExpandableItemInfo:Lcom/htc/widget/MoreExpandableItemInfo;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenIncreaseRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceViewHeightList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseIncreaseRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceOtherRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceOtherRootRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandReduceRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandReduceViewHeightList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mMoveToTopRunnable:Lcom/htc/widget/MoreExpandableHtcListView$MoveToTopRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandIncreaseRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ExpandIncreaseRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mWaitExpandViewRunnable:Lcom/htc/widget/MoreExpandableHtcListView$WaitExpandViewRunnable;

    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mTangentInterpolater:Lcom/htc/widget/MoreExpandableHtcListView$TangentInterpolator;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->Destroy()V

    :cond_0
    iput-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    return-void
.end method

.method public appendChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 1
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    :cond_0
    return-void
.end method

.method public appendRoot(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->start(Ljava/util/LinkedList;)V

    :cond_0
    return-void
.end method

.method public changeChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 1
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

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->start(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    :cond_0
    return-void
.end method

.method public changeRoot(Ljava/util/LinkedList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<+",
            "Lcom/htc/widget/MoreExpandableItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->start(Ljava/util/LinkedList;)V

    :cond_0
    return-void
.end method

.method public collapseAll()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->start()V

    goto :goto_0
.end method

.method public deleteItem(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->start(I)V

    :cond_0
    return-void
.end method

.method public expandAndSetChildrenWithOutAnimation(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V
    .locals 4
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

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Other operation has been done"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "mAdapter is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-nez p1, :cond_2

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-boolean v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Other operation has been done"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not in list"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not a group item"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is already expanded"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "self is not a root node but it does not have parent"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Another path is already expanded"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

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

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Self is not a child of the current expanded item"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    invoke-virtual {p1}, Lcom/htc/widget/MoreExpandableItemInfo;->getLevel()I

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeightToScreen()V

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    :cond_b
    :goto_0
    return-void

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

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, v0, p1, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->expandAndSetChildrenWithOutAnimation(ILcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)I

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeightToScreen()V

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/htc/widget/MoreExpandableHtcListView;->setSelectionFromTop(II)V

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/htc/widget/MoreExpandableBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    return-object v0
.end method

.method public getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentExpandedPosition()I
    .locals 2

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->getCurrentExpanded()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x8000

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 9

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mIsModified:Z

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mFooterView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p2}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getMoreExpandableItemInfo(I)Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;->onGroupClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IJ)Z

    move-result v7

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseReduceRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;

    invoke-virtual {v0, p2, v8}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseReduceRunnable;->start(ILcom/htc/widget/MoreExpandableItemInfo;)V

    :goto_1
    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v1, p2, v8}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getChildren(ILcom/htc/widget/MoreExpandableItemInfo;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setChildren(Lcom/htc/widget/MoreExpandableItemInfo;Ljava/util/LinkedList;)V

    iput-boolean v7, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    invoke-direct {p0, p2, v8}, Lcom/htc/widget/MoreExpandableHtcListView;->chooseExpandAnimation(ILcom/htc/widget/MoreExpandableItemInfo;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->getIndexOfMoreExpandableItemInfo(Lcom/htc/widget/MoreExpandableItemInfo;)I

    move-result v3

    invoke-static {v3, p2}, Lcom/htc/widget/MoreExpandableItemInfo;->getChildPosition(II)I

    move-result v4

    invoke-virtual {v8}, Lcom/htc/widget/MoreExpandableItemInfo;->getParent()Lcom/htc/widget/MoreExpandableItemInfo;

    move-result-object v0

    if-nez v0, :cond_5

    move v3, p2

    const/4 v4, -0x1

    :cond_5
    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;->onChildClick(Lcom/htc/widget/MoreExpandableHtcListView;Landroid/view/View;IIJ)Z

    move-result v7

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_0
.end method

.method isAnyRunnableBefore(I)Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mCollapseAllRunnable:Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$CollapseAllRunnable;->getRunnableIndex()I

    move-result v1

    if-ge v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeChildrenRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendChildrenRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendChildrenRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mChangeRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$ChangeRootRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAppendRootRunnable:Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$AppendRootRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mDeleteItemRunnable:Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$DeleteItemRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mRresetFooterHeightRunnable:Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;

    invoke-virtual {v1}, Lcom/htc/widget/MoreExpandableHtcListView$RresetFooterHeightRunnable;->getRunnableIndex()I

    move-result v1

    if-lt v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGroupExpanded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->isGroupExpanded(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->fillFooterHeight()V

    invoke-direct {p0}, Lcom/htc/widget/MoreExpandableHtcListView;->resetFooterHeight()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAnimationFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/htc/widget/MoreExpandableHtcListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public setAdapter(Lcom/htc/widget/MoreExpandableBaseAdapter;)V
    .locals 4

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget-object v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mHideViewHeightList:Ljava/util/ArrayList;

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/MoreExpandableBaseAdapter;->linkHideViewList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setExpandedChildrenBackgroundColor(I)V

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setSeperatorDiver(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setExpandedChildrenBackgroundColor(I)V
    .locals 2

    iput p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mAdapter:Lcom/htc/widget/MoreExpandableBaseAdapter;

    iget v1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mExpandedChildrenBackgroundColor:I

    invoke-virtual {v0, v1}, Lcom/htc/widget/MoreExpandableBaseAdapter;->setExpandedChildrenBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnChildClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupClickListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupCollapseListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnGroupExpandListener:Lcom/htc/widget/MoreExpandableHtcListView$OnGroupExpandListener;

    return-void
.end method

.method public setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mUserOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    iget-object v0, p0, Lcom/htc/widget/MoreExpandableHtcListView;->mOnScrollListener:Lcom/htc/widget/HtcAbsListView$OnScrollListener;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setOnScrollListener(Lcom/htc/widget/HtcAbsListView$OnScrollListener;)V

    return-void
.end method

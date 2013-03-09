.class public Lcom/htc/widget/HtcExpandableListView;
.super Lcom/htc/widget/HtcListView;
.source "HtcExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/HtcExpandableListView$1;,
        Lcom/htc/widget/HtcExpandableListView$SavedState;,
        Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;,
        Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;,
        Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I = null

.field private static final EMPTY_STATE_SET:[I = null

.field private static final GROUP_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I = null

.field private static final GROUP_EXPANDED_STATE_SET:[I = null

.field private static final GROUP_STATE_SETS:[[I = null

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mClipChildDivider:Z

.field private mConnector:Lcom/htc/widget/HtcExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIsRightIndicator:Z

.field private mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v3, [I

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    new-array v0, v4, [I

    const v1, 0x10100a8

    aput v1, v0, v3

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    new-array v0, v4, [I

    const v1, 0x10100a9

    aput v1, v0, v3

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/widget/HtcExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/widget/HtcExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->GROUP_STATE_SETS:[[I

    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Lcom/htc/widget/HtcExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void

    :array_0
    .array-data 0x4
        0xa8t 0x0t 0x1t 0x1t
        0xa9t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/HtcExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108026a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    goto :goto_0
.end method

.method private getAbsoluteFlatPosition(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J
    .locals 3

    iget v0, p1, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget v2, p1, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getFlatPositionForConnector(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 9

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    if-ne v7, v6, :cond_5

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    if-eqz v7, :cond_0

    iget-object v7, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v7, v7, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v8, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v8, v8, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v7, v8, :cond_3

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v7

    if-eqz v7, :cond_4

    :goto_1
    if-eqz v1, :cond_1

    move v4, v6

    :cond_1
    or-int v3, v5, v4

    sget-object v4, Lcom/htc/widget/HtcExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v4, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_6

    sget-object v2, Lcom/htc/widget/HtcExpandableListView;->CHILD_LAST_STATE_SET:[I

    :goto_3
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_2

    :cond_6
    sget-object v2, Lcom/htc/widget/HtcExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method public static getPackedPositionChild(J)I
    .locals 7

    const-wide v5, 0xffffffffL

    const-wide/high16 v3, -0x8000

    const/4 v0, -0x1

    cmp-long v1, p0, v5

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    and-long v1, p0, v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    and-long v0, p0, v5

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionForChild(II)J
    .locals 6

    const-wide/high16 v0, -0x8000

    int-to-long v2, p0

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .locals 4

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .locals 3

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static getPackedPositionType(J)I
    .locals 4

    const-wide/high16 v2, -0x8000

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 3

    iget v1, p0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v2

    sub-int v0, v1, v2

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public collapseGroup(I)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 9

    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v6}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v7

    iget-object v8, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    invoke-direct {p0, v8}, Lcom/htc/widget/HtcExpandableListView;->getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J

    move-result-wide p3

    invoke-virtual {v8}, Lcom/htc/widget/HtcExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    new-instance v0, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/htc/widget/HtcExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27

    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mScrollY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAbsListView;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getHeaderViewsCount()I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mItemCount:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mBottom:I

    move/from16 v16, v0

    const/4 v15, -0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/HtcExpandableListView;->getChildCount()I

    move-result v6

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v7, v22, v9

    :goto_2
    if-ge v10, v6, :cond_6

    if-gez v7, :cond_5

    :cond_3
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_5
    if-le v7, v14, :cond_7

    :cond_6
    if-eqz v8, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ltz v5, :cond_3

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_8

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    :goto_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    :cond_8
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/widget/HtcAbsListView;->mStackFromBottom:Z

    move/from16 v22, v0

    if-eqz v22, :cond_d

    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcExpandableListView;->getIndicator(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    invoke-virtual/range {v17 .. v17}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_d
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_7
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 7

    iget v5, p0, Lcom/htc/widget/HtcAdapterView;->mFirstPosition:I

    add-int v3, p3, v5

    if-ltz v3, :cond_4

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v5, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v4

    iget-object v5, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v5, v5, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v6, v4, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->groupMetadata:Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;

    iget v6, v6, Lcom/htc/widget/HtcExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v5, v6, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView;->mClipChildDivider:Z

    if-nez v1, :cond_2

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_0
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    :cond_4
    invoke-super {p0, p1, p2, v3}, Lcom/htc/widget/HtcListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto :goto_1
.end method

.method public expandGroup(I)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroup(I)Z

    move-result v0

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    invoke-interface {v1, p1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_0
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 5

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide v1, 0xffffffffL

    :goto_0
    return-wide v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v4, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v3

    iget-object v4, v3, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    invoke-virtual {v4}, Lcom/htc/widget/HtcExpandableListPosition;->getPackedPosition()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0
.end method

.method public getFlatListPosition(J)I
    .locals 4

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-static {p1, p2}, Lcom/htc/widget/HtcExpandableListPosition;->obtainPosition(J)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    iget-object v2, v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v2, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v2

    return v2
.end method

.method public getSelectedId()J
    .locals 5

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getSelectedPosition()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3

    :cond_0
    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/htc/widget/HtcExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v1

    return-wide v1
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 9

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HtcExpandableListConnector;->getUnflattenedPos(I)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v7

    iget-object v0, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    invoke-direct {p0, v0}, Lcom/htc/widget/HtcExpandableListView;->getChildOrGroupId(Lcom/htc/widget/HtcExpandableListPosition;)J

    move-result-wide p3

    iget-object v0, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v0, v0, Lcom/htc/widget/HtcExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;->onGroupClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->collapseGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_1
    :goto_1
    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v7}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcExpandableListConnector;->expandGroup(Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;)Z

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v1, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_4

    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v1, Lcom/htc/widget/HtcExpandableListPosition;->groupPos:I

    iget-object v1, v7, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v4, v1, Lcom/htc/widget/HtcExpandableListPosition;->childPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-interface/range {v0 .. v6}, Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;->onChildClick(Lcom/htc/widget/HtcExpandableListView;Landroid/view/View;IIJ)Z

    move-result v8

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public isGroupExpanded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/htc/widget/HtcListView;->onLayout(ZIIII)V

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    sub-int v0, v1, v2

    iget-boolean v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getRight()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getRight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setIndicatorBounds(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/widget/HtcExpandableListView;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/htc/widget/HtcExpandableListView;->setIndicatorBounds(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v1, p1, Lcom/htc/widget/HtcExpandableListView$SavedState;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/htc/widget/HtcExpandableListView$SavedState;

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    iget-object v2, v0, Lcom/htc/widget/HtcExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Lcom/htc/widget/HtcExpandableListView$SavedState;

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/htc/widget/HtcExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 2

    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/htc/widget/HtcExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 3

    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/htc/widget/HtcExpandableListConnector;

    iget-object v1, p0, Lcom/htc/widget/HtcAbsListView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/htc/widget/HtcExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    iget v1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    iget v2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcExpandableListConnector;->setIndicatorBounds(II)V

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mClipChildDivider:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorLeft:I

    iput p2, p0, Lcom/htc/widget/HtcExpandableListView;->mChildIndicatorRight:I

    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setHandleChildBackground(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setHandleChildBackground(Z)V

    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 2

    iput p1, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    iput p2, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorRight:I

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIndicatorLeft:I

    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1, p2}, Lcom/htc/widget/HtcExpandableListConnector;->setIndicatorBounds(II)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/widget/HtcExpandableListView;->mIsRightIndicator:Z

    goto :goto_0
.end method

.method public setOnChildClickListener(Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnChildClickListener:Lcom/htc/widget/HtcExpandableListView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupClickListener:Lcom/htc/widget/HtcExpandableListView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupCollapseListener:Lcom/htc/widget/HtcExpandableListView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/HtcExpandableListView;->mOnGroupExpandListener:Lcom/htc/widget/HtcExpandableListView$OnGroupExpandListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setPositionMap(Lcom/htc/widget/PositionMap;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setPositionMap(Lcom/htc/widget/PositionMap;)V

    return-void
.end method

.method public setSections([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcExpandableListConnector;->setSections([Ljava/lang/Object;)V

    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 4

    invoke-static {p1, p2}, Lcom/htc/widget/HtcExpandableListPosition;->obtainChildPosition(II)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    if-nez p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/widget/HtcExpandableListView;->expandGroup(I)Z

    iget-object v2, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, v1, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v2, v2, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    invoke-virtual {v0}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 4

    invoke-static {p1}, Lcom/htc/widget/HtcExpandableListPosition;->obtainGroupPosition(I)Lcom/htc/widget/HtcExpandableListPosition;

    move-result-object v1

    iget-object v3, p0, Lcom/htc/widget/HtcExpandableListView;->mConnector:Lcom/htc/widget/HtcExpandableListConnector;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcExpandableListConnector;->getFlattenedPos(Lcom/htc/widget/HtcExpandableListPosition;)Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/widget/HtcExpandableListPosition;->recycle()V

    iget-object v3, v2, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->position:Lcom/htc/widget/HtcExpandableListPosition;

    iget v3, v3, Lcom/htc/widget/HtcExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Lcom/htc/widget/HtcExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    invoke-virtual {v2}, Lcom/htc/widget/HtcExpandableListConnector$PositionMetadata;->recycle()V

    return-void
.end method

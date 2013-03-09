.class public Lcom/htc/music/widget/GroupListView;
.super Lcom/htc/widget/HtcListView;
.source "GroupListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/widget/GroupListView$1;,
        Lcom/htc/music/widget/GroupListView$SavedState;,
        Lcom/htc/music/widget/GroupListView$ExpandableListContextMenuInfo;,
        Lcom/htc/music/widget/GroupListView$OnChildClickListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupClickListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;,
        Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;
    }
.end annotation


# static fields
.field private static final CHECK_STATE_OFF:I = 0x0

.field private static final CHECK_STATE_ON:I = 0x1

.field private static final CHECK_STATE_PARTIAL:I = 0x2

.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

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

.field private mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

.field private mChoiceMode:I

.field private mConnector:Lcom/htc/music/widget/GroupListConnector;

.field private mGroupIdMapChildCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

.field private mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v2, [I

    sput-object v0, Lcom/htc/music/widget/GroupListView;->EMPTY_STATE_SET:[I

    new-array v0, v3, [I

    aput v3, v0, v2

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_STATE_SET:[I

    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EMPTY_STATE_SET:[I

    new-array v0, v3, [I

    aput v4, v0, v2

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Lcom/htc/music/widget/GroupListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/music/widget/GroupListView;->GROUP_EMPTY_STATE_SET:[I

    aput-object v1, v0, v4

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/music/widget/GroupListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/music/widget/GroupListView;->GROUP_STATE_SETS:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/music/widget/GroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/music/widget/GroupListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 17

    invoke-direct/range {p0 .. p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    sget-object v14, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorRight:I

    const/4 v14, 0x4

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorLeft:I

    const/4 v14, 0x5

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorRight:I

    const/4 v14, 0x6

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const-string v14, "common_checkbox_on"

    const v15, 0x208019f

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v8

    const-string v14, "common_checkbox_off"

    const v15, 0x208019d

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const-string v14, "common_checkbox_partial"

    const v15, 0x20807d5

    move-object/from16 v0, p1

    invoke-static {v0, v14, v15}, Lcom/htc/music/util/CustomizeLayoutHandler;->getCustomSkinDrawableResId(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    if-lez v8, :cond_0

    if-lez v7, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v16, v14, v15

    invoke-virtual {v13, v14, v5}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v16, v14, v15

    invoke-virtual {v13, v14, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual {v13, v14, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    new-instance v10, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v10}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x1

    aput v16, v14, v15

    invoke-virtual {v10, v14, v12}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x1

    new-array v14, v14, [I

    const/4 v15, 0x0

    const/16 v16, 0x2

    aput v16, v14, v15

    invoke-virtual {v13, v14, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 v14, 0x0

    new-array v14, v14, [I

    invoke-virtual {v10, v14, v11}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020066

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020066

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getChildOrGroupId(Lcom/htc/music/widget/GroupListPosition;)J
    .locals 3

    iget v0, p1, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget v2, p1, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method private getIndicator(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v2, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-direct {p0, v2}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(I)I

    move-result v1

    sget-object v2, Lcom/htc/music/widget/GroupListView;->GROUP_STATE_SETS:[[I

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    iget-object v3, p1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-direct {p0, v2, v3}, Lcom/htc/music/widget/GroupListView;->getItemCheckStatus(II)I

    move-result v1

    sget-object v2, Lcom/htc/music/widget/GroupListView;->GROUP_STATE_SETS:[[I

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0
.end method

.method private getItemCheckStatus(I)I
    .locals 3

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v0

    return v0
.end method

.method private getItemCheckStatus(II)I
    .locals 3

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v0

    return v0
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


# virtual methods
.method public collapseGroup(I)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/GroupListConnector;->collapseGroup(I)Z

    move-result v0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 27

    invoke-super/range {p0 .. p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    move/from16 v22, v0

    if-nez v22, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    :cond_2
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mScrollX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mScrollY:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mPaddingLeft:I

    move/from16 v22, v0

    add-int v22, v22, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mPaddingTop:I

    move/from16 v23, v0

    add-int v23, v23, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mRight:I

    move/from16 v24, v0

    add-int v24, v24, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mBottom:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getHeaderViewsCount()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getCount()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getFooterViewsCount()I

    move-result v23

    sub-int v22, v22, v23

    sub-int v22, v22, v9

    add-int/lit8 v14, v22, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mBottom:I

    move/from16 v16, v0

    const/4 v15, -0x4

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getChildCount()I

    move-result v6

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getFirstVisiblePosition()I

    move-result v22

    sub-int v7, v22, v9

    :goto_2
    if-ge v10, v6, :cond_7

    if-gez v7, :cond_6

    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_6
    if-le v7, v14, :cond_8

    :cond_7
    if-eqz v8, :cond_0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/htc/music/widget/GroupListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v21

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ltz v5, :cond_4

    move/from16 v0, v21

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-eq v0, v15, :cond_9

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    move/from16 v22, v0

    :goto_4
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorRight:I

    move/from16 v22, v0

    :goto_5
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    :goto_6
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v15, v0, Lcom/htc/music/widget/GroupListPosition;->type:I

    :cond_9
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->isStackFromBottom()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getDividerHeight()I

    move-result v22

    sub-int v22, v21, v22

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/music/widget/GroupListView;->getIndicator(Lcom/htc/music/widget/GroupListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    sub-int v22, v5, v21

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v21

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    sub-int v22, v5, v21

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    sub-int v22, v22, v23

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v21

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorLeft:I

    move/from16 v22, v0

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorRight:I

    move/from16 v22, v0

    goto/16 :goto_5

    :cond_c
    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorRight:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_6

    :cond_d
    move/from16 v0, v21

    iput v0, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->getDividerHeight()I

    move-result v22

    add-int v22, v22, v5

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_7
.end method

.method public expandAllGroups()V
    .locals 5

    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v2}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Group Count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v1}, Lcom/htc/music/widget/GroupListConnector;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public expandGroup(I)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1, p1}, Lcom/htc/music/widget/GroupListConnector;->expandGroup(I)Z

    move-result v0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    invoke-interface {v1, p1}, Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_0
    return v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-super {p0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getChildSeclectList()[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListPosition;->getPackedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFlatListPosition(J)I
    .locals 4

    const/4 v2, -0x1

    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListPosition;->obtainPosition(J)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v3, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    goto :goto_0
.end method

.method public getGroupSeclectList()[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method public getSelectedId()J
    .locals 5

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getSelectedPosition()J

    move-result-wide v1

    const-wide v3, 0xffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const-wide/16 v3, -0x1

    :goto_0
    return-wide v3

    :cond_0
    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionType(J)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v3, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v1, v2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v3, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v3

    goto :goto_0
.end method

.method public getSelectedPosition()J
    .locals 3

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-wide v1, 0xffffffffL

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/GroupListView;->getExpandableListPosition(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .locals 23

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==handleItemClick id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/htc/music/widget/GroupListConnector;->getUnflattenedPos(I)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v21

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/music/widget/GroupListView;->getChildOrGroupId(Lcom/htc/music/widget/GroupListPosition;)J

    move-result-wide p3

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v3, :cond_4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-static {v3}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v13

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_0

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v19

    move/from16 v2, v17

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    const/16 v16, 0x0

    :goto_2
    move/from16 v0, v16

    if-ge v0, v13, :cond_4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v19

    move/from16 v2, v17

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move/from16 v0, v16

    invoke-interface {v3, v4, v0}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v11

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    long-to-int v4, v11

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_0
    const/16 v17, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    long-to-int v4, v11

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->put(I)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v3}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    :cond_4
    invoke-virtual/range {v21 .. v21}, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->isExpanded()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/htc/music/widget/GroupListView$OnGroupClickListener;->onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJ)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    const/4 v3, 0x1

    :goto_4
    return v3

    :cond_5
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/GroupListView;->playSoundEffect(I)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "posMetadata.isExpanded"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/htc/music/widget/GroupListView$OnGroupClickListener;->onGroupClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IJ)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    const/4 v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/GroupListView;->playSoundEffect(I)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v3, :cond_9

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    invoke-static {v3, v4}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v19

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v18

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v3, v3, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-static {v3}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v14

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    :goto_6
    if-nez v18, :cond_b

    const/16 v17, 0x1

    :goto_7
    if-nez v17, :cond_d

    add-int/lit8 v10, v10, -0x1

    if-gtz v10, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v15, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    const/4 v10, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    long-to-int v5, v14

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->delete(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    move-wide/from16 v0, v19

    move/from16 v2, v17

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    :cond_9
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    if-eqz v3, :cond_11

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/music/widget/GroupListView;->playSoundEffect(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/music/widget/GroupListView;->requestLayout()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v6, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v7, v4, Lcom/htc/music/widget/GroupListPosition;->childPos:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p3

    invoke-interface/range {v3 .. v9}, Lcom/htc/music/widget/GroupListView$OnChildClickListener;->onChildClick(Lcom/htc/music/widget/GroupListView;Landroid/view/View;IIJ)Z

    move-result v3

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupIdMapChildCount:Ljava/util/HashMap;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_7

    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v14, v15, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v4, v4, Lcom/htc/music/widget/GroupListPosition;->groupPos:I

    invoke-interface {v3, v4}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v22

    add-int/lit8 v10, v10, 0x1

    move/from16 v0, v22

    if-le v10, v0, :cond_e

    move/from16 v10, v22

    :cond_e
    move/from16 v0, v22

    if-ne v10, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v14, v15, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    long-to-int v5, v14

    invoke-interface {v4, v5}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    move-wide/from16 v0, p3

    long-to-int v4, v0

    invoke-virtual {v3, v4}, Lcom/htc/music/widget/FastSparseVector;->append(I)V

    goto/16 :goto_9

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x2

    invoke-virtual {v3, v14, v15, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto :goto_b

    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x0

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->get(JI)I

    move-result v18

    if-nez v18, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v3}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    const/4 v4, 0x1

    move-wide/from16 v0, v19

    invoke-virtual {v3, v0, v1, v4}, Lcom/htc/music/widget/LongSparseIntArray;->put(JI)V

    goto/16 :goto_a

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->requestLayout()V

    const/4 v3, 0x0

    goto/16 :goto_4
.end method

.method public isGroupExpanded(I)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v0, p1}, Lcom/htc/music/widget/GroupListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isItemChecked(II)Z
    .locals 4

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListView;->getPackedPositionForChild(II)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/htc/music/widget/LongSparseIntArray;->get(J)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/htc/music/widget/GroupListView$SavedState;

    invoke-virtual {v0}, Lcom/htc/music/widget/GroupListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/htc/widget/HtcListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/htc/music/widget/GroupListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    iget-object v2, v0, Lcom/htc/music/widget/GroupListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/htc/music/widget/GroupListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/htc/widget/HtcListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Lcom/htc/music/widget/GroupListView$SavedState;

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v1}, Lcom/htc/music/widget/GroupListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    invoke-direct {v2, v0, v1}, Lcom/htc/music/widget/GroupListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 4

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "==performItemClick"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getHeaderViewsCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/htc/music/widget/GroupListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    if-lt p2, v1, :cond_0

    if-lt p2, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v2

    :goto_0
    return v2

    :cond_1
    sub-int v2, p2, v1

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/htc/music/widget/GroupListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/htc/music/widget/GroupListConnector;

    invoke-direct {v0, p1}, Lcom/htc/music/widget/GroupListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    :goto_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    invoke-virtual {v0}, Lcom/htc/music/widget/LongSparseIntArray;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    invoke-virtual {v0}, Lcom/htc/music/widget/FastSparseVector;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

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
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorLeft:I

    iput p2, p0, Lcom/htc/music/widget/GroupListView;->mChildIndicatorRight:I

    return-void
.end method

.method public setChoiceMode(I)V
    .locals 1

    iput p1, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    iget v0, p0, Lcom/htc/music/widget/GroupListView;->mChoiceMode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/music/widget/LongSparseIntArray;

    invoke-direct {v0}, Lcom/htc/music/widget/LongSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mCheckStates:Lcom/htc/music/widget/LongSparseIntArray;

    new-instance v0, Lcom/htc/music/widget/FastSparseVector;

    invoke-direct {v0}, Lcom/htc/music/widget/FastSparseVector;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mChildSelectlist:Lcom/htc/music/widget/FastSparseVector;

    new-instance v0, Lcom/htc/music/widget/FastSparseVector;

    invoke-direct {v0}, Lcom/htc/music/widget/FastSparseVector;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/GroupListView;->mGroupSelectlist:Lcom/htc/music/widget/FastSparseVector;

    :cond_0
    return-void
.end method

.method public setIndicatorBounds(II)V
    .locals 0

    iput p1, p0, Lcom/htc/music/widget/GroupListView;->mIndicatorLeft:I

    iput p2, p0, Lcom/htc/music/widget/GroupListView;->mIndicatorRight:I

    return-void
.end method

.method public setOnChildClickListener(Lcom/htc/music/widget/GroupListView$OnChildClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnChildClickListener:Lcom/htc/music/widget/GroupListView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Lcom/htc/music/widget/GroupListView$OnGroupClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupClickListener:Lcom/htc/music/widget/GroupListView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupCollapseListener:Lcom/htc/music/widget/GroupListView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/widget/GroupListView;->mOnGroupExpandListener:Lcom/htc/music/widget/GroupListView$OnGroupExpandListener;

    return-void
.end method

.method public setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .locals 4

    invoke-static {p1, p2}, Lcom/htc/music/widget/GroupListPosition;->obtainChildPosition(II)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    if-nez p3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/music/widget/GroupListView;->expandGroup(I)Z

    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not find child"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setSelectedGroup(I)V
    .locals 3

    invoke-static {p1}, Lcom/htc/music/widget/GroupListPosition;->obtainGroupPosition(I)Lcom/htc/music/widget/GroupListPosition;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/music/widget/GroupListView;->mConnector:Lcom/htc/music/widget/GroupListConnector;

    invoke-virtual {v2, v0}, Lcom/htc/music/widget/GroupListConnector;->getFlattenedPos(Lcom/htc/music/widget/GroupListPosition;)Lcom/htc/music/widget/GroupListConnector$PositionMetadata;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, v1, Lcom/htc/music/widget/GroupListConnector$PositionMetadata;->position:Lcom/htc/music/widget/GroupListPosition;

    iget v2, v2, Lcom/htc/music/widget/GroupListPosition;->flatListPos:I

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    goto :goto_0
.end method

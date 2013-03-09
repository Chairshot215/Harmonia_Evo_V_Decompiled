.class public Lcom/htc/widget/DropDownList;
.super Landroid/widget/FrameLayout;
.source "DropDownList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/widget/DropDownList$PopupDataSetObserver;,
        Lcom/htc/widget/DropDownList$PassThroughClickListener;,
        Lcom/htc/widget/DropDownList$DropDownListView;,
        Lcom/htc/widget/DropDownList$DropDownItemClickListener;,
        Lcom/htc/widget/DropDownList$PopupTouchInterceptor;,
        Lcom/htc/widget/DropDownList$OnDropDownListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DropDownList"


# instance fields
.field private final DEFAULT_SHADOW_OFFSET:I

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mArrowView:Landroid/widget/ImageView;

.field private mBottomCornerRound:Z

.field private mContext:Landroid/content/Context;

.field private mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mData:Ljava/lang/Object;

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private final mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

.field private mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

.field private mDropDownListBackground:Landroid/graphics/drawable/Drawable;

.field private mDropDownListContainer:Landroid/widget/FrameLayout;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownMaxHeight:I

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mEnableSelectable:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mListDivider:Landroid/graphics/drawable/Drawable;

.field private mMaxListViewHeight:I

.field private mMaxListViewHeightInLandMode:I

.field private mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

.field private mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

.field private mPopup:Landroid/widget/PopupWindow;

.field private final mRelativeRect:Landroid/graphics/Rect;

.field private mShowArrow:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopCornerRound:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/widget/DropDownList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/widget/DropDownList;->DEFAULT_SHADOW_OFFSET:I

    .line 68
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mShowArrow:Z

    .line 73
    iput v1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    .line 74
    iput v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mRelativeRect:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    .line 82
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    .line 83
    iput-boolean v2, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    .line 93
    new-instance v0, Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/DropDownList$DropDownItemClickListener;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    .line 101
    iput v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeight:I

    .line 102
    iput v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeightInLandMode:I

    .line 128
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    .line 129
    new-instance v0, Landroid/widget/PopupWindow;

    const v1, 0x101006b

    invoke-direct {v0, p1, p2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    .line 132
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    const v1, 0x2030090

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/htc/widget/DropDownList;->setFocusable(Z)V

    .line 155
    invoke-virtual {p0, v2}, Lcom/htc/widget/DropDownList;->setFocusableInTouchMode(Z)V

    .line 156
    new-instance v0, Lcom/htc/widget/DropDownList$PassThroughClickListener;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$PassThroughClickListener;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    .line 157
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/widget/DropDownList;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/widget/DropDownList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->updateDropDownForFilter(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$OnDropDownListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/widget/DropDownList;)Lcom/htc/widget/DropDownList$DropDownListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/widget/DropDownList;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mRelativeRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/widget/DropDownList;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/widget/DropDownList;->performItemClick(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/widget/DropDownList;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/htc/widget/DropDownList;->onClickImpl(Landroid/view/View;)V

    return-void
.end method

.method private buildDropDown()I
    .locals 22

    .prologue
    .line 1149
    const/16 v19, 0x0

    .line 1150
    .local v19, otherHeights:I
    const/4 v9, 0x0

    .line 1151
    .local v9, bkgId:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-nez v1, :cond_5

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DropDownList;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 1172
    .local v10, context:Landroid/content/Context;
    new-instance v1, Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-direct {v1, v10}, Lcom/htc/widget/DropDownList$DropDownListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 1173
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DropDownList;->setupDropDownList()V

    .line 1175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    const-string v2, "list_selector_background"

    const v3, 0x1080062

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 1176
    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v9}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelector(I)V

    .line 1178
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/DropDownList;->mDropDownListBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1179
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    .line 1180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    .line 1182
    .local v12, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/htc/widget/DropDownList;->mShowArrow:Z

    if-eqz v1, :cond_4

    .line 1184
    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x20900cb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 1186
    .local v11, dropDownContainer:Landroid/view/ViewGroup;
    if-eqz v11, :cond_1

    .line 1187
    const v1, 0x2020212

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    .line 1189
    const v1, 0x2020211

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 1191
    .local v13, frame:Landroid/view/ViewGroup;
    new-instance v18, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1193
    .local v18, listParams:Landroid/view/ViewGroup$LayoutParams;
    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1194
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    move-object/from16 v0, v18

    invoke-virtual {v13, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1195
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int v19, v1, v2

    .line 1198
    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    .line 1199
    .local v21, widthSpec:I
    const/4 v15, 0x0

    .line 1200
    .local v15, heightSpec:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    move/from16 v0, v21

    invoke-virtual {v1, v0, v15}, Landroid/widget/ImageView;->measure(II)V

    .line 1202
    invoke-virtual {v13}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout$LayoutParams;

    .line 1203
    .local v14, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v14, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int v19, v1, v2

    .line 1205
    move-object v12, v11

    .line 1209
    .end local v11           #dropDownContainer:Landroid/view/ViewGroup;
    .end local v13           #frame:Landroid/view/ViewGroup;
    .end local v14           #frameParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v15           #heightSpec:I
    .end local v18           #listParams:Landroid/view/ViewGroup$LayoutParams;
    .end local v21           #widthSpec:I
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v12}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1220
    .end local v10           #context:Landroid/content/Context;
    .end local v12           #dropDownView:Landroid/view/ViewGroup;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/16 v16, 0x1

    .line 1222
    .local v16, ignoreBottomDecorations:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    move/from16 v0, v16

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v5

    .line 1227
    .local v5, maxHeight:I
    const/16 v20, 0x0

    .line 1228
    .local v20, padding:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1229
    .local v8, background:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_3

    .line 1230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v20, v1, v2

    .line 1234
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 1235
    add-int v1, v5, v20

    .line 1245
    :goto_3
    return v1

    .line 1208
    .end local v5           #maxHeight:I
    .end local v8           #background:Landroid/graphics/drawable/Drawable;
    .end local v16           #ignoreBottomDecorations:Z
    .end local v20           #padding:I
    .restart local v10       #context:Landroid/content/Context;
    .restart local v12       #dropDownView:Landroid/view/ViewGroup;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1211
    .end local v10           #context:Landroid/content/Context;
    .end local v12           #dropDownView:Landroid/view/ViewGroup;
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 1212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1214
    .local v7, arrowParams:Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, v7, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v7, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v19, v1, v2

    goto :goto_1

    .line 1220
    .end local v7           #arrowParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 1240
    .restart local v5       #maxHeight:I
    .restart local v8       #background:Landroid/graphics/drawable/Drawable;
    .restart local v16       #ignoreBottomDecorations:Z
    .restart local v20       #padding:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x2

    invoke-virtual/range {v1 .. v6}, Lcom/htc/widget/DropDownList$DropDownListView;->mockMeasureHeightOfChildren(IIIII)I

    move-result v17

    .line 1244
    .local v17, listContent:I
    if-lez v17, :cond_8

    add-int v17, v17, v20

    .line 1245
    :cond_8
    add-int v1, v17, v19

    goto :goto_3
.end method

.method private initDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 602
    if-nez p1, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 604
    :cond_1
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    if-nez p3, :cond_0

    .line 605
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/htc/widget/DropDownList;->addDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method private onClickImpl(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 171
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isFocused()Z

    move-result v1

    if-nez v1, :cond_2

    .line 175
    const-string v1, "DropDownList"

    const-string v2, "onClickImpl DropDownList does not have focus, request for focus!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->requestFocus()Z

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 186
    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->buildDropDown()I

    move-result v0

    .line 187
    .local v0, listViewHeight:I
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_3

    .line 189
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 192
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 194
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 195
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    :cond_5
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 197
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeightInLandMode:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private performItemClick(Landroid/view/View;IJ)V
    .locals 6
    .parameter "selectedView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 870
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_2

    .line 871
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 872
    .local v1, list:Lcom/htc/widget/DropDownList$DropDownListView;
    if-eqz p1, :cond_0

    if-gez p2, :cond_1

    .line 873
    :cond_0
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 874
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result p2

    .line 875
    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemId()J

    move-result-wide p3

    .line 877
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 880
    .end local v1           #list:Lcom/htc/widget/DropDownList$DropDownListView;
    :cond_2
    return-void
.end method

.method private updateDropDownForFilter(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 884
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 886
    :goto_0
    return-void

    .line 885
    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0
.end method


# virtual methods
.method public addDropListHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->addHeaderView(Landroid/view/View;)V

    .line 622
    :cond_0
    return-void
.end method

.method public addDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mView:Landroid/view/View;

    .line 584
    iput-object p2, p0, Lcom/htc/widget/DropDownList;->mData:Ljava/lang/Object;

    .line 585
    iput-boolean p3, p0, Lcom/htc/widget/DropDownList;->mEnableSelectable:Z

    .line 586
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/widget/DropDownList$DropDownListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 589
    :cond_0
    return-void
.end method

.method public clearListSelection()V
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 830
    .local v0, list:Lcom/htc/widget/DropDownList$DropDownListView;
    if-eqz v0, :cond_0

    .line 832
    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    .line 834
    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownListView;->requestLayout()V

    .line 836
    :cond_0
    return-void
.end method

.method public dismissDropDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 946
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 948
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 951
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 955
    :cond_0
    iput-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 956
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    iget-object p0, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    goto :goto_0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getDropDownMaximumHeight()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    return v0
.end method

.method public getListDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 865
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOnCreateContextMenuListener()Landroid/view/View$OnCreateContextMenuListener;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPopupWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 812
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "config"

    .prologue
    const/4 v4, -0x1

    .line 209
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 210
    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->buildDropDown()I

    move-result v0

    .line 211
    .local v0, listViewHeight:I
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v1, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 218
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 219
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeight:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 221
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListContainer:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeightInLandMode:I

    invoke-direct {v2, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 915
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 916
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 917
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 898
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDisplayHint(I)V

    .line 899
    packed-switch p1, :pswitch_data_0

    .line 904
    :goto_0
    return-void

    .line 901
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 899
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 908
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 909
    if-nez p1, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 912
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 718
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_9

    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_9

    const/16 v9, 0x17

    if-eq p1, v9, :cond_9

    .line 722
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 725
    .local v4, curIndex:I
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v2, 0x1

    .line 727
    .local v2, below:Z
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    .line 730
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 731
    .local v5, firstItem:I
    const/high16 v7, -0x8000

    .line 733
    .local v7, lastItem:I
    if-eqz v0, :cond_1

    .line 734
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 735
    .local v1, allEnabled:Z
    if-eqz v1, :cond_6

    const/4 v5, 0x0

    .line 737
    :goto_1
    if-eqz v1, :cond_7

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .line 741
    .end local v1           #allEnabled:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    const/16 v9, 0x13

    if-ne p1, v9, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_8

    const/16 v9, 0x14

    if-ne p1, v9, :cond_8

    if-lt v4, v7, :cond_8

    .line 747
    :cond_3
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 748
    const/4 v6, 0x1

    .line 803
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :cond_4
    :goto_3
    return v6

    .line 725
    .restart local v4       #curIndex:I
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 735
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v7       #lastItem:I
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/DropDownList$DropDownListView;->lookForSelectablePos(IZ)I

    move-result v5

    goto :goto_1

    .line 737
    :cond_7
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/htc/widget/DropDownList$DropDownListView;->lookForSelectablePos(IZ)I

    move-result v7

    goto :goto_2

    .line 752
    .end local v1           #allEnabled:Z
    :cond_8
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v10, 0x0

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v10}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    .line 755
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/htc/widget/DropDownList$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 756
    .local v3, consumed:Z
    const-string v9, "DropDownList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Key down: code="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " list consumed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-eqz v3, :cond_a

    .line 763
    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v9}, Lcom/htc/widget/DropDownList$DropDownListView;->requestFocusFromTouch()Z

    .line 764
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 766
    sparse-switch p1, :sswitch_data_0

    .line 790
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 792
    .local v6, handled:Z
    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v9, :cond_4

    .line 793
    iget-object v8, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    .line 794
    .local v8, list:Lcom/htc/widget/DropDownList$DropDownListView;
    if-eqz v8, :cond_4

    .line 796
    const/4 v9, 0x1

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v8, v9}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    .line 798
    invoke-virtual {v8}, Lcom/htc/widget/DropDownList$DropDownListView;->requestLayout()V

    goto :goto_3

    .line 773
    .end local v6           #handled:Z
    .end local v8           #list:Lcom/htc/widget/DropDownList$DropDownListView;
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v7       #lastItem:I
    :sswitch_0
    const/4 v6, 0x1

    goto :goto_3

    .line 776
    :cond_a
    if-eqz v2, :cond_b

    const/16 v9, 0x14

    if-ne p1, v9, :cond_b

    .line 779
    if-ne v4, v7, :cond_9

    .line 780
    const/4 v6, 0x1

    goto :goto_3

    .line 782
    :cond_b
    if-nez v2, :cond_9

    const/16 v9, 0x13

    if-ne p1, v9, :cond_9

    if-ne v4, v5, :cond_9

    .line 784
    const/4 v6, 0x1

    goto/16 :goto_3

    .line 766
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 672
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 675
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 676
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 686
    :goto_0
    return v0

    .line 678
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 679
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 680
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 681
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    goto :goto_0

    .line 686
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 691
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1}, Lcom/htc/widget/DropDownList$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 692
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/widget/DropDownList$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 694
    .local v0, consumed:Z
    if-nez v0, :cond_0

    .line 695
    sparse-switch p1, :sswitch_data_0

    .line 706
    .end local v0           #consumed:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 701
    .restart local v0       #consumed:Z
    :sswitch_0
    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v3, -0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/widget/DropDownList;->performItemClick(Landroid/view/View;IJ)V

    .line 702
    const/4 v1, 0x1

    goto :goto_0

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 921
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->hasFocus()Z

    move-result v1

    .line 922
    .local v1, hasFocusBeforeTouch:Z
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 923
    .local v0, handled:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 927
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 937
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 939
    :cond_2
    return v0

    .line 930
    :cond_3
    if-nez v1, :cond_1

    .line 935
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->performClick()Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 890
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 891
    if-nez p1, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->dismissDropDown()V

    .line 894
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 554
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    if-nez v0, :cond_3

    .line 555
    new-instance v0, Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/widget/DropDownList$PopupDataSetObserver;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    .line 559
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    .line 560
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_2

    .line 565
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    :cond_2
    return-void

    .line 556
    :cond_3
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mObserver:Lcom/htc/widget/DropDownList$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setArrowEnable(Z)V
    .locals 0
    .parameter "arrow"

    .prologue
    .line 970
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mShowArrow:Z

    .line 971
    return-void
.end method

.method setArrowLocation()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1088
    iget-object v7, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v7, :cond_1

    .line 1089
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 1090
    .local v2, frameLoc:[I
    invoke-virtual {p0, v2}, Lcom/htc/widget/DropDownList;->getLocationInWindow([I)V

    .line 1092
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1093
    .local v0, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/htc/widget/DropDownList;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1094
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 1095
    .local v1, displayWidth:I
    const-string v7, "DropDownList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "icon location in window = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget v9, v2, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " window visible display frame="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    aget v8, v2, v10

    add-int/2addr v7, v8

    add-int/lit8 v3, v7, 0x8

    .line 1098
    .local v3, offset:I
    const/4 v4, 0x0

    .line 1099
    .local v4, paddingLeft:I
    iget-object v7, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v5

    .line 1105
    .local v5, popupWidth:I
    if-le v5, v1, :cond_2

    .line 1107
    const-string v7, "DropDownList"

    const-string v8, "popupWidth > displayWidth"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    aget v7, v2, v10

    add-int/lit8 v4, v7, -0x8

    .line 1135
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    invoke-virtual {v7, v4, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1137
    .end local v0           #displayFrame:Landroid/graphics/Rect;
    .end local v1           #displayWidth:I
    .end local v2           #frameLoc:[I
    .end local v3           #offset:I
    .end local v4           #paddingLeft:I
    .end local v5           #popupWidth:I
    :cond_1
    return-void

    .line 1110
    .restart local v0       #displayFrame:Landroid/graphics/Rect;
    .restart local v1       #displayWidth:I
    .restart local v2       #frameLoc:[I
    .restart local v3       #offset:I
    .restart local v4       #paddingLeft:I
    .restart local v5       #popupWidth:I
    :cond_2
    add-int v7, v5, v3

    if-le v7, v1, :cond_3

    .line 1112
    const-string v7, "DropDownList"

    const-string v8, "popupWidth + offset > displayWidth"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    aget v7, v2, v10

    sub-int v6, v1, v7

    .line 1114
    .local v6, right:I
    sub-int v7, v5, v6

    add-int/lit8 v4, v7, -0x8

    .line 1116
    goto :goto_0

    .end local v6           #right:I
    :cond_3
    if-gez v3, :cond_4

    aget v7, v2, v10

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-le v5, v7, :cond_4

    .line 1118
    const-string v7, "DropDownList"

    const-string v8, "offset < 0 && popupWidth > frameLoc[0] + getWidth()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    aget v7, v2, v10

    add-int/lit8 v4, v7, -0x8

    goto :goto_0

    .line 1120
    :cond_4
    if-lez v3, :cond_5

    if-lez v3, :cond_7

    add-int v7, v3, v5

    aget v8, v2, v10

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    if-ge v7, v8, :cond_7

    .line 1122
    :cond_5
    if-gtz v3, :cond_6

    .line 1123
    const-string v7, "DropDownList"

    const-string v8, "offset <= 0"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :goto_1
    add-int/lit8 v4, v5, -0x3c

    goto :goto_0

    .line 1125
    :cond_6
    const-string v7, "DropDownList"

    const-string v8, "(offset > 0 && offset + popupWidth < frameLoc[0] + getWidth())"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1131
    :cond_7
    if-lez v3, :cond_0

    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    if-gez v7, :cond_0

    .line 1132
    const-string v7, "DropDownList"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "offset > 0 && mDropDownHorizontalOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    neg-int v4, v7

    goto :goto_0
.end method

.method public setDropDownAnchorView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mDropDownAnchorView:Landroid/view/View;

    .line 315
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 414
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 270
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    .line 271
    return-void
.end method

.method public setDropDownHighlight(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "dr"

    .prologue
    .line 429
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 430
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 433
    :cond_0
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 389
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    .line 390
    return-void
.end method

.method public setDropDownListViewBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "d"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mDropDownListBackground:Landroid/graphics/drawable/Drawable;

    .line 352
    return-void
.end method

.method public setDropDownMaximumHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 292
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    .line 293
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 371
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    .line 372
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 246
    iput p1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    .line 247
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 960
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v0

    .line 962
    .local v0, result:Z
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 963
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->showDropDown()V

    .line 966
    :cond_0
    return v0
.end method

.method public setListCornerRoundedEnabled(Z)V
    .locals 0
    .parameter "roundCorner"

    .prologue
    .line 642
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    .line 643
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    .line 644
    return-void
.end method

.method public setListCornerRoundedEnabled(ZZ)V
    .locals 0
    .parameter "topRoundCorners"
    .parameter "bottomRoundCorners"

    .prologue
    .line 631
    iput-boolean p1, p0, Lcom/htc/widget/DropDownList;->mTopCornerRound:Z

    .line 632
    iput-boolean p2, p0, Lcom/htc/widget/DropDownList;->mBottomCornerRound:Z

    .line 633
    return-void
.end method

.method public setListDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "divider"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 663
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    .line 664
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 668
    :cond_0
    return-void
.end method

.method public setListSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/DropDownList$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/htc/widget/DropDownList$DropDownListView;->access$402(Lcom/htc/widget/DropDownList$DropDownListView;Z)Z

    .line 846
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, p1}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelection(I)V

    .line 849
    :cond_0
    return-void
.end method

.method public setMaxDropDownListViewHeight(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 472
    iput p1, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeight:I

    .line 473
    return-void
.end method

.method public setMaxDropDownListViewHeightInLandMode(I)V
    .locals 0
    .parameter "h"

    .prologue
    .line 476
    iput p1, p0, Lcom/htc/widget/DropDownList;->mMaxListViewHeightInLandMode:I

    .line 477
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPassThroughClickListener:Lcom/htc/widget/DropDownList$PassThroughClickListener;

    #setter for: Lcom/htc/widget/DropDownList$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Lcom/htc/widget/DropDownList$PassThroughClickListener;->access$102(Lcom/htc/widget/DropDownList$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 163
    return-void
.end method

.method public setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 467
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 469
    return-void
.end method

.method public setOnDropDownListener(Lcom/htc/widget/DropDownList$OnDropDownListener;)V
    .locals 2
    .parameter "onDropDownListener"

    .prologue
    .line 515
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    .line 516
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    if-eqz v0, :cond_0

    .line 517
    new-instance v0, Lcom/htc/widget/DropDownList$1;

    invoke-direct {v0, p0}, Lcom/htc/widget/DropDownList$1;-><init>(Lcom/htc/widget/DropDownList;)V

    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 522
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 524
    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 442
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 443
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 462
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 464
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 452
    iput-object p1, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 453
    return-void
.end method

.method setupDropDownList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1249
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mData:Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/htc/widget/DropDownList;->mEnableSelectable:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/htc/widget/DropDownList;->initDropListHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 1251
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 1252
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20805af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1253
    .local v0, divider:Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    .line 1255
    .end local v0           #divider:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mListDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1257
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1258
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1261
    :cond_1
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v5}, Lcom/htc/widget/DropDownList$DropDownListView;->setBackgroundColor(I)V

    .line 1262
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v5}, Lcom/htc/widget/DropDownList$DropDownListView;->setCacheColorHint(I)V

    .line 1263
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1264
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1265
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mDropDownItemClickListener:Lcom/htc/widget/DropDownList$DropDownItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1266
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList$DropDownListView;->setFocusable(Z)V

    .line 1267
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v1, v4}, Lcom/htc/widget/DropDownList$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1269
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_4

    .line 1270
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1287
    :goto_0
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-eqz v1, :cond_2

    .line 1288
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mItemLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1290
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v1, :cond_3

    .line 1291
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    iget-object v2, p0, Lcom/htc/widget/DropDownList;->mCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1295
    :cond_3
    return-void

    .line 1272
    :cond_4
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    new-instance v2, Lcom/htc/widget/DropDownList$2;

    invoke-direct {v2, p0}, Lcom/htc/widget/DropDownList$2;-><init>(Lcom/htc/widget/DropDownList;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method public showDropDown()V
    .locals 13

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v12, -0x2

    const/4 v2, -0x1

    .line 977
    invoke-direct {p0}, Lcom/htc/widget/DropDownList;->buildDropDown()I

    move-result v8

    .line 979
    .local v8, height:I
    const/4 v4, 0x0

    .line 980
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 982
    .local v5, heightSpec:I
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v3

    const/4 v11, 0x2

    if-ne v3, v11, :cond_2

    move v9, v0

    .line 984
    .local v9, noInputMethod:Z
    :goto_0
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 985
    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v3, v2, :cond_3

    .line 988
    const/4 v4, -0x1

    .line 1001
    :goto_1
    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v3, v2, :cond_a

    .line 1004
    if-eqz v9, :cond_6

    move v5, v8

    .line 1005
    :goto_2
    if-eqz v9, :cond_8

    .line 1006
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget v11, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v11, v2, :cond_7

    :goto_3
    invoke-virtual {v3, v2, v1}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1025
    :goto_4
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1027
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    add-int/lit8 v2, v2, -0x8

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 1078
    :goto_5
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1079
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->setArrowLocation()V

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    if-eqz v0, :cond_1

    .line 1083
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mOnDropDownListener:Lcom/htc/widget/DropDownList$OnDropDownListener;

    invoke-interface {v0}, Lcom/htc/widget/DropDownList$OnDropDownListener;->onShow()V

    .line 1085
    :cond_1
    return-void

    .end local v9           #noInputMethod:Z
    :cond_2
    move v9, v1

    .line 982
    goto :goto_0

    .line 989
    .restart local v9       #noInputMethod:Z
    :cond_3
    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v3, v12, :cond_5

    .line 990
    const/4 v10, 0x0

    .line 991
    .local v10, padding:I
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 992
    .local v6, background:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_4

    .line 993
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 994
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int v10, v3, v11

    .line 996
    :cond_4
    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int v4, v3, v10

    .line 997
    goto :goto_1

    .line 998
    .end local v6           #background:Landroid/graphics/drawable/Drawable;
    .end local v10           #padding:I
    :cond_5
    iget v4, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    goto :goto_1

    :cond_6
    move v5, v2

    .line 1004
    goto :goto_2

    :cond_7
    move v2, v1

    .line 1006
    goto :goto_3

    .line 1010
    :cond_8
    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget v11, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v11, v2, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {v3, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    .line 1015
    :cond_a
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v1, v12, :cond_c

    .line 1016
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v8, v1, :cond_b

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v1, :cond_b

    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_6
    goto :goto_4

    :cond_b
    move v5, v8

    goto :goto_6

    .line 1020
    :cond_c
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    iget v2, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v1, :cond_d

    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_7
    goto :goto_4

    :cond_d
    iget v5, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    goto :goto_7

    .line 1032
    :cond_e
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v1, v2, :cond_f

    .line 1033
    const/4 v4, -0x1

    .line 1048
    :goto_8
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v1, v2, :cond_12

    .line 1049
    const/4 v5, -0x1

    .line 1064
    :goto_9
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1065
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1069
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1070
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/htc/widget/DropDownList$PopupTouchInterceptor;-><init>(Lcom/htc/widget/DropDownList;Lcom/htc/widget/DropDownList$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1071
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownHorizontalOffset:I

    add-int/lit8 v3, v3, -0x8

    iget v11, p0, Lcom/htc/widget/DropDownList;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v3, v11}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1073
    iget-object v0, p0, Lcom/htc/widget/DropDownList;->mDropDownList:Lcom/htc/widget/DropDownList$DropDownListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/DropDownList$DropDownListView;->setSelection(I)V

    goto/16 :goto_5

    .line 1035
    :cond_f
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    if-ne v1, v12, :cond_11

    .line 1036
    const/4 v10, 0x0

    .line 1037
    .restart local v10       #padding:I
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1038
    .restart local v6       #background:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_10

    .line 1039
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1040
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/htc/widget/DropDownList;->mTempRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int v10, v1, v3

    .line 1042
    :cond_10
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/htc/widget/DropDownList;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    .line 1044
    .end local v6           #background:Landroid/graphics/drawable/Drawable;
    .end local v10           #padding:I
    :cond_11
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownWidth:I

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    .line 1051
    :cond_12
    const/4 v7, 0x0

    .line 1052
    .local v7, contentHeight:I
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    if-ne v1, v12, :cond_14

    .line 1053
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v8, v1, :cond_13

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v1, :cond_13

    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    .line 1061
    :goto_a
    iget-object v1, p0, Lcom/htc/widget/DropDownList;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_13
    move v7, v8

    .line 1053
    goto :goto_a

    .line 1057
    :cond_14
    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    iget v3, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-le v1, v3, :cond_15

    iget v1, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    if-lez v1, :cond_15

    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownMaxHeight:I

    :goto_b
    goto :goto_a

    :cond_15
    iget v7, p0, Lcom/htc/widget/DropDownList;->mDropDownHeight:I

    goto :goto_b
.end method

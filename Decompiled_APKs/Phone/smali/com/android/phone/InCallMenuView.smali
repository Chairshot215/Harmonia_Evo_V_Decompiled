.class Lcom/android/phone/InCallMenuView;
.super Landroid/view/ViewGroup;
.source "InCallMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallMenuView$LayoutParams;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PHONE/InCallMenuView"

.field private static final MAX_ITEMS_PER_ROW:I = 0xa

.field private static final NUM_ROWS:I = 0x4


# instance fields
.field private mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mItems:[[Lcom/android/phone/InCallMenuItemView;

.field private mNumItemsForRow:[I

.field private mNumVisibleItemsForRow:[I

.field private mNumVisibleRows:I

.field private mRowHeight:I

.field private mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalDividerWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V
    .locals 7
    .parameter "context"
    .parameter "inCallScreen"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 101
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 80
    const/16 v2, 0xa

    filled-new-array {v6, v2}, [I

    move-result-object v2

    const-class v3, Lcom/android/phone/InCallMenuItemView;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lcom/android/phone/InCallMenuItemView;

    iput-object v2, p0, Lcom/android/phone/InCallMenuView;->mItems:[[Lcom/android/phone/InCallMenuItemView;

    .line 82
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/phone/InCallMenuView;->mNumItemsForRow:[I

    .line 89
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/phone/InCallMenuView;->mNumVisibleItemsForRow:[I

    .line 104
    iput-object p2, p0, Lcom/android/phone/InCallMenuView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 115
    iget v2, p0, Lcom/android/phone/InCallMenuView;->mRowHeight:I

    if-nez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/phone/InCallMenuView;->mRowHeight:I

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 125
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 127
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    .line 130
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    .line 132
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/phone/InCallMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 135
    invoke-direct {p0}, Lcom/android/phone/InCallMenuView;->applyTheme()V

    .line 137
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerHeight:I

    .line 140
    iget v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerHeight:I

    if-ne v2, v4, :cond_1

    iput v5, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerHeight:I

    .line 143
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 144
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/phone/InCallMenuView;->mVerticalDividerWidth:I

    .line 146
    iget v2, p0, Lcom/android/phone/InCallMenuView;->mVerticalDividerWidth:I

    if-ne v2, v4, :cond_2

    iput v5, p0, Lcom/android/phone/InCallMenuView;->mVerticalDividerWidth:I

    .line 150
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuView;->setWillNotDraw(Z)V

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallMenuView;->setFocusableInTouchMode(Z)V

    .line 157
    const/high16 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuView;->setDescendantFocusability(I)V

    .line 167
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v4, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 170
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    return-void
.end method

.method private applyTheme()V
    .locals 4

    .prologue
    .line 174
    const-string v1, "menu_selector"

    const-string v2, "drawable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/phone/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 175
    .local v0, resid:I
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 179
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 504
    const-string v0, "PHONE/InCallMenuView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method private positionChildren(II)V
    .locals 24
    .parameter "menuWidth"
    .parameter "menuHeight"

    .prologue
    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 279
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 282
    :cond_1
    const/4 v6, 0x0

    .line 287
    .local v6, childLayoutParams:Lcom/android/phone/InCallMenuView$LayoutParams;
    const/4 v10, 0x0

    .line 291
    .local v10, itemTop:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mNumVisibleRows:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    mul-int v18, v18, v19

    sub-int v18, p2, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mNumVisibleRows:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v7, v18, v19

    .line 296
    .local v7, itemHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mNumVisibleRows:I

    move/from16 v18, v0

    add-int/lit8 v12, v18, -0x1

    .line 298
    .local v12, numHorizDividersRemainingToDraw:I
    const/16 v16, 0x0

    .local v16, row:I
    move v13, v12

    .end local v12           #numHorizDividersRemainingToDraw:I
    .local v13, numHorizDividersRemainingToDraw:I
    :goto_0
    const/16 v18, 0x4

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mNumItemsForRow:[I

    move-object/from16 v18, v0

    aget v14, v18, v16

    .line 300
    .local v14, numItemsThisRow:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mNumVisibleItemsForRow:[I

    move-object/from16 v18, v0

    aget v15, v18, v16

    .line 302
    .local v15, numVisibleThisRow:I
    if-nez v15, :cond_3

    move v12, v13

    .line 298
    .end local v13           #numHorizDividersRemainingToDraw:I
    .restart local v12       #numHorizDividersRemainingToDraw:I
    :cond_2
    :goto_1
    add-int/lit8 v16, v16, 0x1

    move v13, v12

    .end local v12           #numHorizDividersRemainingToDraw:I
    .restart local v13       #numHorizDividersRemainingToDraw:I
    goto :goto_0

    .line 306
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mItems:[[Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    aget-object v17, v18, v16

    .line 309
    .local v17, thisRow:[Lcom/android/phone/InCallMenuItemView;
    const/4 v9, 0x0

    .line 313
    .local v9, itemLeft:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mVerticalDividerWidth:I

    move/from16 v18, v0

    add-int/lit8 v19, v15, -0x1

    mul-int v18, v18, v19

    sub-int v18, p1, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v15

    move/from16 v19, v0

    div-float v11, v18, v19

    .line 316
    .local v11, itemWidth:F
    const/4 v8, 0x0

    .local v8, itemIndex:I
    :goto_2
    if-ge v8, v14, :cond_6

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mItems:[[Lcom/android/phone/InCallMenuItemView;

    move-object/from16 v18, v0

    aget-object v18, v18, v16

    aget-object v5, v18, v8

    .line 319
    .local v5, child:Lcom/android/phone/InCallMenuItemView;
    invoke-virtual {v5}, Lcom/android/phone/InCallMenuItemView;->isVisible()Z

    move-result v18

    if-nez v18, :cond_4

    .line 316
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 324
    :cond_4
    float-to-int v0, v11

    move/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v18

    float-to-int v0, v7

    move/from16 v19, v0

    const/high16 v20, 0x4000

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lcom/android/phone/InCallMenuItemView;->measure(II)V

    .line 328
    invoke-virtual {v5}, Lcom/android/phone/InCallMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #childLayoutParams:Lcom/android/phone/InCallMenuView$LayoutParams;
    check-cast v6, Lcom/android/phone/InCallMenuView$LayoutParams;

    .line 329
    .restart local v6       #childLayoutParams:Lcom/android/phone/InCallMenuView$LayoutParams;
    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/phone/InCallMenuView$LayoutParams;->left:I

    .line 330
    add-float v18, v9, v11

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/phone/InCallMenuView$LayoutParams;->right:I

    .line 331
    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/phone/InCallMenuView$LayoutParams;->top:I

    .line 332
    add-float v18, v10, v7

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v6, Lcom/android/phone/InCallMenuView$LayoutParams;->bottom:I

    .line 335
    add-float/2addr v9, v11

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    float-to-int v0, v9

    move/from16 v20, v0

    float-to-int v0, v10

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mVerticalDividerWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v22, v22, v9

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-float v23, v10, v7

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-direct/range {v19 .. v23}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mVerticalDividerWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v9, v9, v18

    goto/16 :goto_3

    .line 351
    .end local v5           #child:Lcom/android/phone/InCallMenuItemView;
    :cond_6
    if-eqz v6, :cond_7

    .line 352
    move/from16 v0, p1

    iput v0, v6, Lcom/android/phone/InCallMenuView$LayoutParams;->right:I

    .line 355
    :cond_7
    add-float/2addr v10, v7

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    add-int/lit8 v12, v13, -0x1

    .end local v13           #numHorizDividersRemainingToDraw:I
    .restart local v12       #numHorizDividersRemainingToDraw:I
    if-lez v13, :cond_2

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v19, Landroid/graphics/Rect;

    const/16 v20, 0x0

    float-to-int v0, v10

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v22, v22, v10

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, p1

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v10, v10, v18

    goto/16 :goto_1

    .line 364
    .end local v8           #itemIndex:I
    .end local v9           #itemLeft:F
    .end local v11           #itemWidth:F
    .end local v12           #numHorizDividersRemainingToDraw:I
    .end local v14           #numItemsThisRow:I
    .end local v15           #numVisibleThisRow:I
    .end local v17           #thisRow:[Lcom/android/phone/InCallMenuItemView;
    .restart local v13       #numHorizDividersRemainingToDraw:I
    :cond_8
    return-void

    .restart local v8       #itemIndex:I
    .restart local v9       #itemLeft:F
    .restart local v11       #itemWidth:F
    .restart local v14       #numItemsThisRow:I
    .restart local v15       #numVisibleThisRow:I
    .restart local v17       #thisRow:[Lcom/android/phone/InCallMenuItemView;
    :cond_9
    move v12, v13

    .end local v13           #numHorizDividersRemainingToDraw:I
    .restart local v12       #numHorizDividersRemainingToDraw:I
    goto/16 :goto_1
.end method


# virtual methods
.method addItemView(Lcom/android/phone/InCallMenuItemView;I)V
    .locals 5
    .parameter "itemView"
    .parameter "row"

    .prologue
    const/4 v4, -0x1

    .line 195
    const/4 v2, 0x4

    if-lt p2, v2, :cond_0

    .line 196
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > NUM_ROWS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mNumItemsForRow:[I

    aget v0, v2, p2

    .line 200
    .local v0, indexInRow:I
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    .line 201
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many items ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in row "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mNumItemsForRow:[I

    aget v3, v2, p2

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, p2

    .line 204
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mItems:[[Lcom/android/phone/InCallMenuItemView;

    aget-object v2, v2, p2

    aput-object p1, v2, v0

    .line 210
    invoke-virtual {p1}, Lcom/android/phone/InCallMenuItemView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 212
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_2

    .line 214
    new-instance v1, Lcom/android/phone/InCallMenuView$LayoutParams;

    .end local v1           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v1, v4, v4}, Lcom/android/phone/InCallMenuView$LayoutParams;-><init>(II)V

    .line 218
    .restart local v1       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/phone/InCallMenuItemView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    invoke-virtual {p0, p1, v1}, Lcom/android/phone/InCallMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 484
    instance-of v0, p1, Lcom/android/phone/InCallMenuView$LayoutParams;

    return v0
.end method

.method clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenuView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 187
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 437
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    sparse-switch v0, :sswitch_data_0

    .line 457
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/InCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 472
    :goto_0
    return v1

    .line 462
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, p1}, Lcom/android/phone/InCallScreen;->isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 470
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/InCallScreen;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 472
    :cond_2
    :sswitch_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 438
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method dumpState()V
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    .local v0, row:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/phone/InCallMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/phone/InCallMenuView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 478
    new-instance v0, Lcom/android/phone/InCallMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/phone/InCallMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 405
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 408
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 409
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 407
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 413
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 416
    iget-object v2, p0, Lcom/android/phone/InCallMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 417
    iget-object v1, p0, Lcom/android/phone/InCallMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 415
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 420
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuView;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 392
    invoke-virtual {p0, v2}, Lcom/android/phone/InCallMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 393
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/phone/InCallMenuView$LayoutParams;

    .line 396
    .local v1, childLayoutParams:Lcom/android/phone/InCallMenuView$LayoutParams;
    iget v3, v1, Lcom/android/phone/InCallMenuView$LayoutParams;->left:I

    iget v4, v1, Lcom/android/phone/InCallMenuView$LayoutParams;->top:I

    iget v5, v1, Lcom/android/phone/InCallMenuView$LayoutParams;->right:I

    iget v6, v1, Lcom/android/phone/InCallMenuView$LayoutParams;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 391
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 399
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childLayoutParams:Lcom/android/phone/InCallMenuView$LayoutParams;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 372
    iget v1, p0, Lcom/android/phone/InCallMenuView;->mRowHeight:I

    iget v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerHeight:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/phone/InCallMenuView;->mNumVisibleRows:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/android/phone/InCallMenuView;->mHorizontalDividerHeight:I

    sub-int v0, v1, v2

    .line 376
    .local v0, desiredHeight:I
    const v1, 0x7fffffff

    invoke-static {v1, p1}, Lcom/android/phone/InCallMenuView;->resolveSize(II)I

    move-result v1

    invoke-static {v0, p2}, Lcom/android/phone/InCallMenuView;->resolveSize(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InCallMenuView;->setMeasuredDimension(II)V

    .line 380
    invoke-virtual {p0}, Lcom/android/phone/InCallMenuView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/phone/InCallMenuView;->getMeasuredHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallMenuView;->positionChildren(II)V

    .line 381
    return-void
.end method

.method updateVisibility()V
    .locals 6

    .prologue
    .line 231
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/phone/InCallMenuView;->mNumVisibleRows:I

    .line 233
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    const/4 v5, 0x4

    if-ge v3, v5, :cond_3

    .line 234
    iget-object v5, p0, Lcom/android/phone/InCallMenuView;->mItems:[[Lcom/android/phone/InCallMenuItemView;

    aget-object v4, v5, v3

    .line 235
    .local v4, thisRow:[Lcom/android/phone/InCallMenuItemView;
    iget-object v5, p0, Lcom/android/phone/InCallMenuView;->mNumItemsForRow:[I

    aget v1, v5, v3

    .line 236
    .local v1, numItemsThisRow:I
    const/4 v2, 0x0

    .line 237
    .local v2, numVisibleThisRow:I
    const/4 v0, 0x0

    .local v0, itemIndex:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 239
    iget-object v5, p0, Lcom/android/phone/InCallMenuView;->mItems:[[Lcom/android/phone/InCallMenuItemView;

    aget-object v5, v5, v3

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/android/phone/InCallMenuItemView;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 237
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallMenuView;->mNumVisibleItemsForRow:[I

    aput v2, v5, v3

    .line 243
    if-lez v2, :cond_2

    iget v5, p0, Lcom/android/phone/InCallMenuView;->mNumVisibleRows:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/phone/InCallMenuView;->mNumVisibleRows:I

    .line 233
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v0           #itemIndex:I
    .end local v1           #numItemsThisRow:I
    .end local v2           #numVisibleThisRow:I
    .end local v4           #thisRow:[Lcom/android/phone/InCallMenuItemView;
    :cond_3
    return-void
.end method

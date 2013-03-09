.class Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;
.super Landroid/widget/ExpandableListView;
.source "ExpandableListPopupBubbleWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/ExpandableListPopupBubbleWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownExpanableListView"
.end annotation


# static fields
.field static final NO_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ExpanableListPopupBubbleWindow.DropDownListView"


# instance fields
.field private mHijackFocus:Z

.field private mListSelectionHidden:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x20100b1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mHijackFocus:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->setCacheColorHint(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mListSelectionHidden:Z

    return p1
.end method

.method private mockMeasureScrapChild(Landroid/view/View;II)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    if-nez v6, :cond_0

    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {p1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getListPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getListPaddingRight()I

    move-result v4

    add-int v7, v3, v4

    iget v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3, v7, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v5, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v5, :cond_1

    const/high16 v7, 0x4000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    return-void

    :cond_1
    invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ExpandableListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ExpandableListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mHijackFocus:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/ExpandableListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/widget/ExpandableListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mockLookForSelectablePosition(IZ)I
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p2, :cond_2

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    goto :goto_0

    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    goto :goto_0
.end method

.method final mockMeasureHeightOfChildren(IIIII)I
    .locals 13

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getListPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getListPaddingBottom()I

    move-result v6

    if-nez v1, :cond_1

    add-int v8, v7, v6

    :cond_0
    :goto_0
    return v8

    :cond_1
    add-int v11, v7, v6

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->getDividerHeight()I

    move-result v9

    if-lez v9, :cond_5

    if-eqz v3, :cond_5

    move v4, v9

    :goto_1
    const/4 v8, 0x0

    const/4 v12, -0x1

    move/from16 v0, p3

    if-ne v0, v12, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    add-int/lit8 p3, v12, -0x1

    :cond_2
    invoke-virtual {p0}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->recycleOnMeasure()Z

    move-result v10

    move v5, p2

    :goto_2
    move/from16 v0, p3

    if-gt v5, v0, :cond_8

    const/4 v12, 0x0

    invoke-interface {v1, v5, v12, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v5, p1}, Lcom/htc/widget/ExpandableListPopupBubbleWindow$DropDownExpanableListView;->mockMeasureScrapChild(Landroid/view/View;II)V

    if-lez v5, :cond_3

    add-int/2addr v11, v4

    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    move/from16 v0, p4

    if-lt v11, v0, :cond_6

    if-ltz p5, :cond_4

    move/from16 v0, p5

    if-le v5, v0, :cond_4

    if-lez v8, :cond_4

    move/from16 v0, p4

    if-ne v11, v0, :cond_0

    :cond_4
    move/from16 v8, p4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    if-ltz p5, :cond_7

    move/from16 v0, p5

    if-lt v5, v0, :cond_7

    move v8, v11

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    move v8, v11

    goto :goto_0
.end method

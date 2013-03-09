.class public Lcom/google/android/finsky/layout/SuggestionBarLayout;
.super Landroid/widget/RelativeLayout;
.source "SuggestionBarLayout.java"


# instance fields
.field private mSuggestionArrow:Landroid/view/View;

.field private mSuggestionLine1:Landroid/widget/TextView;

.field private mSuggestionLine2:Landroid/widget/TextView;

.field private mSuggestionLineFull:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method


# virtual methods
.method public bind(Ljava/lang/String;)V
    .locals 7
    .parameter "suggestionQuery"

    .prologue
    const/4 v3, 0x1

    .line 54
    iget-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07022d

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&nbsp;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 45
    const v0, 0x7f08021d

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f08021e

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f08021f

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f080220

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    .line 49
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 28
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingLeft()I

    move-result v10

    .line 89
    .local v10, leftPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingRight()I

    move-result v15

    .line 90
    .local v15, rightPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingTop()I

    move-result v21

    .line 91
    .local v21, topPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingBottom()I

    move-result v8

    .line 94
    .local v8, bottomPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getHeight()I

    move-result v23

    sub-int v23, v23, v21

    sub-int v23, v23, v8

    div-int/lit8 v23, v23, 0x2

    add-int v14, v21, v23

    .line 95
    .local v14, middleY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 96
    .local v5, arrowHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 97
    .local v6, arrowWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getWidth()I

    move-result v24

    sub-int v24, v24, v15

    sub-int v24, v24, v6

    div-int/lit8 v25, v5, 0x2

    sub-int v25, v14, v25

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getWidth()I

    move-result v26

    sub-int v26, v26, v15

    div-int/lit8 v27, v5, 0x2

    add-int v27, v27, v14

    invoke-virtual/range {v23 .. v27}, Landroid/view/View;->layout(IIII)V

    .line 101
    move/from16 v22, v10

    .line 102
    .local v22, xText:I
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getWidth()I

    move-result v23

    sub-int v23, v23, v10

    sub-int v23, v23, v15

    sub-int v7, v23, v6

    .line 103
    .local v7, availableTextWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v13

    .line 104
    .local v13, lineFullWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v11

    .line 105
    .local v11, line1Width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v12

    .line 107
    .local v12, line2Width:I
    if-gt v13, v7, :cond_0

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    .line 113
    .local v16, textHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v23, v0

    div-int/lit8 v24, v16, 0x2

    sub-int v24, v14, v24

    add-int v25, v22, v13

    div-int/lit8 v26, v16, 0x2

    add-int v26, v26, v14

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 130
    .end local v16           #textHeight:I
    :goto_0
    return-void

    .line 116
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    .line 120
    .local v17, textHeight1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    .line 121
    .local v18, textHeight2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, v23

    iget v9, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 123
    .local v9, layoutMargin:I
    add-int v23, v17, v18

    add-int v23, v23, v9

    div-int/lit8 v23, v23, 0x2

    sub-int v19, v14, v23

    .line 124
    .local v19, textTop1:I
    add-int v23, v19, v17

    add-int v20, v23, v9

    .line 125
    .local v20, textTop2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v22, v11

    add-int v25, v19, v17

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v19

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    move-object/from16 v23, v0

    add-int v24, v22, v12

    add-int v25, v20, v18

    move-object/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x0

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 65
    .local v2, paddedWidth:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingLeft()I

    move-result v1

    .line 66
    .local v1, leftPadding:I
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->getPaddingRight()I

    move-result v3

    .line 68
    .local v3, rightPadding:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    invoke-virtual {v5, v7, v7}, Landroid/view/View;->measure(II)V

    .line 70
    sub-int v5, v2, v1

    sub-int/2addr v5, v3

    iget-object v6, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionArrow:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int v0, v5, v6

    .line 76
    .local v0, availableTextWidth:I
    const/high16 v5, -0x8000

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 78
    .local v4, textViewWidthSpec:I
    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLineFull:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    .line 79
    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine1:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->measure(II)V

    .line 80
    iget-object v5, p0, Lcom/google/android/finsky/layout/SuggestionBarLayout;->mSuggestionLine2:Landroid/widget/TextView;

    invoke-virtual {v5, v4, v7}, Landroid/widget/TextView;->measure(II)V

    .line 82
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/layout/SuggestionBarLayout;->setMeasuredDimension(II)V

    .line 84
    return-void
.end method

.class public Lcom/google/android/voicesearch/actioneditor/ColumnListView;
.super Landroid/widget/ListView;
.source "ColumnListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 16
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 37
    invoke-super/range {p0 .. p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 38
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 39
    .local v2, adapter:Landroid/widget/Adapter;
    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    .line 44
    .local v8, itemCount:I
    if-eqz v8, :cond_0

    .line 49
    const/4 v3, 0x0

    .line 50
    .local v3, dummy:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getMeasuredWidth()I

    move-result v13

    .line 51
    .local v13, width:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 52
    .local v10, maxWidth:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 54
    .local v14, widthMode:I
    const/high16 v15, -0x8000

    if-eq v14, v15, :cond_2

    if-nez v14, :cond_4

    .line 55
    :cond_2
    const/4 v13, 0x0

    .line 56
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_4

    .line 58
    move-object/from16 v0, p0

    invoke-interface {v2, v7, v3, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 59
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->measure(II)V

    .line 60
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 61
    .local v12, w:I
    if-le v12, v13, :cond_3

    .line 63
    move v13, v12

    .line 65
    :cond_3
    const/high16 v15, -0x8000

    if-ne v14, v15, :cond_7

    if-ne v13, v10, :cond_7

    .line 73
    .end local v7           #i:I
    .end local v12           #w:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->getMeasuredHeight()I

    move-result v5

    .line 74
    .local v5, height:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 75
    .local v9, maxHeight:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 77
    .local v6, heightMode:I
    const/high16 v15, -0x8000

    if-eq v6, v15, :cond_5

    if-nez v6, :cond_6

    .line 78
    :cond_5
    const/4 v5, 0x0

    .line 80
    const/high16 v15, 0x4000

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 81
    .local v11, spec:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v8, :cond_6

    .line 83
    move-object/from16 v0, p0

    invoke-interface {v2, v7, v3, v0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 84
    move/from16 v0, p2

    invoke-virtual {v3, v11, v0}, Landroid/view/View;->measure(II)V

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 88
    .local v4, h:I
    add-int/2addr v5, v4

    .line 89
    const/high16 v15, -0x8000

    if-ne v6, v15, :cond_8

    if-lt v5, v9, :cond_8

    .line 90
    move v5, v9

    .line 96
    .end local v4           #h:I
    .end local v7           #i:I
    .end local v11           #spec:I
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v5}, Lcom/google/android/voicesearch/actioneditor/ColumnListView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 56
    .end local v5           #height:I
    .end local v6           #heightMode:I
    .end local v9           #maxHeight:I
    .restart local v7       #i:I
    .restart local v12       #w:I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 81
    .end local v12           #w:I
    .restart local v4       #h:I
    .restart local v5       #height:I
    .restart local v6       #heightMode:I
    .restart local v9       #maxHeight:I
    .restart local v11       #spec:I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

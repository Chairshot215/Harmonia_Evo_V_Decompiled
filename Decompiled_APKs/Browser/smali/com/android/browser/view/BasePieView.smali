.class public abstract Lcom/android/browser/view/BasePieView;
.super Ljava/lang/Object;
.source "BasePieView.java"

# interfaces
.implements Lcom/android/browser/view/PieMenu$PieView;


# instance fields
.field protected mAdapter:Landroid/widget/Adapter;

.field protected mChildHeight:I

.field protected mChildWidth:I

.field protected mCurrent:I

.field protected mHeight:I

.field protected mLeft:I

.field protected mListener:Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;

.field private mObserver:Landroid/database/DataSetObserver;

.field protected mTop:I

.field protected mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method protected buildViews()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 87
    iget-object v3, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v3, :cond_1

    .line 88
    iget-object v3, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 89
    .local v1, n:I
    iget-object v3, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    .line 94
    :goto_0
    iput v5, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    .line 95
    iput v5, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 97
    iget-object v3, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v3, v0, v6, v6}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 98
    .local v2, view:Landroid/view/View;
    invoke-virtual {v2, v5, v5}, Landroid/view/View;->measure(II)V

    .line 100
    iget v3, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/browser/view/BasePieView;->mChildWidth:I

    .line 101
    iget v3, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/browser/view/BasePieView;->mChildHeight:I

    .line 102
    iget-object v3, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 92
    .end local v0           #i:I
    .end local v2           #view:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 105
    .end local v1           #n:I
    :cond_1
    return-void
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method protected drawView(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 123
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 124
    .local v0, state:I
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {p2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 127
    return-void
.end method

.method protected abstract findChildAt(I)I
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public layout(IIZF)V
    .locals 1
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "left"
    .parameter "angle"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mListener:Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mListener:Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;->onLayout(IIZ)V

    .line 116
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "evt"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 134
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 135
    .local v1, evtx:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 136
    .local v2, evty:I
    iget v5, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    if-lt v1, v5, :cond_0

    iget v5, p0, Lcom/android/browser/view/BasePieView;->mLeft:I

    iget v8, p0, Lcom/android/browser/view/BasePieView;->mWidth:I

    add-int/2addr v5, v8

    if-ge v1, v5, :cond_0

    iget v5, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    if-lt v2, v5, :cond_0

    iget v5, p0, Lcom/android/browser/view/BasePieView;->mTop:I

    iget v8, p0, Lcom/android/browser/view/BasePieView;->mHeight:I

    add-int/2addr v5, v8

    if-lt v2, v5, :cond_1

    :cond_0
    move v5, v7

    .line 158
    :goto_0
    return v5

    .line 140
    :cond_1
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v5, v6

    .line 158
    goto :goto_0

    .line 142
    :pswitch_0
    iget-object v5, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 143
    .local v3, v:Landroid/view/View;
    iget-object v5, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v2}, Lcom/android/browser/view/BasePieView;->findChildAt(I)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/browser/view/BasePieView;->setCurrent(I)V

    .line 145
    iget-object v5, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 146
    .local v4, v1:Landroid/view/View;
    if-eq v3, v4, :cond_2

    .line 147
    invoke-virtual {v3, v7}, Landroid/view/View;->setPressed(Z)V

    .line 148
    invoke-virtual {v4, v6}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 152
    .end local v3           #v:Landroid/view/View;
    .end local v4           #v1:Landroid/view/View;
    :pswitch_1
    iget-object v5, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    .line 153
    iget-object v5, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    iget v8, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setPressed(Z)V

    goto :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    .line 55
    if-nez p1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/android/browser/view/BasePieView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 59
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/view/BasePieView;->mViews:Ljava/util/ArrayList;

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    .line 76
    :goto_0
    return-void

    .line 62
    :cond_1
    new-instance v0, Lcom/android/browser/view/BasePieView$1;

    invoke-direct {v0, p0}, Lcom/android/browser/view/BasePieView$1;-><init>(Lcom/android/browser/view/BasePieView;)V

    iput-object v0, p0, Lcom/android/browser/view/BasePieView;->mObserver:Landroid/database/DataSetObserver;

    .line 73
    iget-object v0, p0, Lcom/android/browser/view/BasePieView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/android/browser/view/BasePieView;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/view/BasePieView;->setCurrent(I)V

    goto :goto_0
.end method

.method public setCurrent(I)V
    .locals 0
    .parameter "ix"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/browser/view/BasePieView;->mCurrent:I

    .line 80
    return-void
.end method

.method public setLayoutListener(Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/view/BasePieView;->mListener:Lcom/android/browser/view/PieMenu$PieView$OnLayoutListener;

    .line 51
    return-void
.end method

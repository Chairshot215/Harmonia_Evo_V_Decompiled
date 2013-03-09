.class public Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;
.super Landroid/widget/LinearLayout;
.source "KindSectionGroupContainerView.java"


# instance fields
.field protected bRoundAtTopAndBottom:Z

.field protected mBottomRound:Landroid/graphics/drawable/Drawable;

.field protected mRoundHeight:I

.field protected mTopRound:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->bRoundAtTopAndBottom:Z

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mRoundHeight:I

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->setOrientation(I)V

    .line 24
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->enableRoundEdge(Z)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->bRoundAtTopAndBottom:Z

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mRoundHeight:I

    .line 29
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->setOrientation(I)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->enableRoundEdge(Z)V

    .line 32
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 42
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->bRoundAtTopAndBottom:Z

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->drawBottomRound(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawBottomRound(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 102
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mBottomRound:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildCount()I

    move-result v4

    .line 107
    .local v4, size:I
    const/4 v3, 0x0

    .line 108
    .local v3, lastVisibleView:Landroid/view/View;
    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 109
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 111
    move-object v3, v1

    .line 116
    .end local v1           #child:Landroid/view/View;
    :cond_2
    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 118
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getMeasuredWidth()I

    move-result v5

    .line 120
    .local v5, width:I
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mBottomRound:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mRoundHeight:I

    sub-int v8, v0, v8

    invoke-virtual {v6, v7, v8, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mBottomRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 108
    .end local v0           #bottom:I
    .end local v5           #width:I
    .restart local v1       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public drawRemainSpace(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildCount()I

    move-result v7

    .line 128
    .local v7, size:I
    const/4 v3, 0x0

    .line 129
    .local v3, lastVisibleView:Landroid/view/View;
    const/4 v6, 0x0

    .line 130
    .local v6, rect_start:I
    add-int/lit8 v2, v7, -0x1

    .local v2, i:I
    :goto_0
    if-lez v2, :cond_0

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_3

    .line 133
    move-object v3, v1

    .line 138
    .end local v1           #child:Landroid/view/View;
    :cond_0
    if-eqz v3, :cond_1

    .line 139
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 140
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getMeasuredWidth()I

    move-result v8

    .line 141
    .local v8, width:I
    move v6, v0

    .line 144
    .end local v0           #bottom:I
    .end local v8           #width:I
    :cond_1
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 145
    .local v5, rect:Landroid/graphics/Rect;
    const/4 v9, 0x0

    iput v9, v5, Landroid/graphics/Rect;->left:I

    .line 146
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getMeasuredWidth()I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->right:I

    .line 147
    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 148
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getMeasuredHeight()I

    move-result v9

    iput v9, v5, Landroid/graphics/Rect;->bottom:I

    .line 150
    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v9, :cond_2

    .line 151
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 152
    .local v4, p:Landroid/graphics/Paint;
    const v9, -0xfefeff

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 154
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 157
    .end local v4           #p:Landroid/graphics/Paint;
    :cond_2
    return-void

    .line 130
    .end local v5           #rect:Landroid/graphics/Rect;
    .restart local v1       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public drawTopRound(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 77
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mTopRound:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildCount()I

    move-result v3

    .line 82
    .local v3, size:I
    const/4 v1, 0x0

    .line 83
    .local v1, firstVisibleView:Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3

    .line 86
    move-object v1, v0

    .line 91
    .end local v0           #child:Landroid/view/View;
    :cond_2
    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 93
    .local v4, top:I
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getMeasuredWidth()I

    move-result v5

    .line 95
    .local v5, width:I
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mTopRound:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mRoundHeight:I

    add-int/2addr v8, v4

    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v6, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mTopRound:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 83
    .end local v4           #top:I
    .end local v5           #width:I
    .restart local v0       #child:Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public enableRoundEdge(Z)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 50
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->bRoundAtTopAndBottom:Z

    .line 51
    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, context:Landroid/content/Context;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const v1, 0x7f020036

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->setBackgroundResource(I)V

    .line 73
    .end local v0           #context:Landroid/content/Context;
    :goto_0
    return-void

    .line 63
    .restart local v0       #context:Landroid/content/Context;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080696

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mTopRound:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080694

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mBottomRound:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 69
    .end local v0           #context:Landroid/content/Context;
    :cond_1
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mTopRound:Landroid/graphics/drawable/Drawable;

    .line 70
    iput-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->mBottomRound:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getLastInsertedElement()Landroid/view/View;
    .locals 12

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildCount()I

    move-result v6

    .line 161
    .local v6, size:I
    const/4 v5, 0x0

    .line 162
    .local v5, lastView:Lcom/android/htccontacts/ui/widget/EditorElement;
    const-wide/16 v3, 0x0

    .line 163
    .local v3, lastTime:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionGroupContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 165
    .local v9, view:Landroid/view/View;
    instance-of v10, v9, Lcom/android/htccontacts/ui/widget/KindSectionView;

    if-eqz v10, :cond_0

    move-object v2, v9

    .line 166
    check-cast v2, Lcom/android/htccontacts/ui/widget/KindSectionView;

    .line 167
    .local v2, kindview:Lcom/android/htccontacts/ui/widget/KindSectionView;
    invoke-virtual {v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->getLastInsertedElement()Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, element:Landroid/view/View;
    if-nez v0, :cond_1

    .line 163
    .end local v0           #element:Landroid/view/View;
    .end local v2           #kindview:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    .restart local v0       #element:Landroid/view/View;
    .restart local v2       #kindview:Lcom/android/htccontacts/ui/widget/KindSectionView;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;

    .line 173
    .local v7, tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    if-eqz v7, :cond_0

    iget-wide v10, v7, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;->mNewInsertTime:J

    cmp-long v10, v10, v3

    if-lez v10, :cond_0

    .line 174
    instance-of v10, v0, Lcom/android/htccontacts/ui/widget/EditorElement;

    if-eqz v10, :cond_0

    .line 175
    iget-wide v3, v7, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;->mNewInsertTime:J

    move-object v5, v0

    .line 176
    check-cast v5, Lcom/android/htccontacts/ui/widget/EditorElement;

    goto :goto_1

    .end local v0           #element:Landroid/view/View;
    .end local v2           #kindview:Lcom/android/htccontacts/ui/widget/KindSectionView;
    .end local v7           #tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    .end local v9           #view:Landroid/view/View;
    :cond_2
    move-object v8, v5

    .line 181
    check-cast v8, Landroid/view/View;

    .line 182
    .local v8, v:Landroid/view/View;
    return-object v8
.end method

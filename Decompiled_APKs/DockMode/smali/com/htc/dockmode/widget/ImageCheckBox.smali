.class public Lcom/htc/dockmode/widget/ImageCheckBox;
.super Landroid/widget/CheckBox;
.source "ImageCheckBox.java"


# instance fields
.field protected mButtonResource:I

.field protected mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    .line 126
    iget-object v1, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getDrawableState()[I

    move-result-object v0

    .line 130
    .local v0, myDrawableState:[I
    iget-object v1, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 132
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->invalidate()V

    .line 134
    .end local v0           #myDrawableState:[I
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v0, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    .local v0, buttonDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getGravity()I

    move-result v7

    and-int/lit8 v3, v7, 0x70

    .line 59
    .local v3, verticalGravity:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 61
    .local v1, height:I
    const/4 v6, 0x0

    .line 63
    .local v6, y:I
    sparse-switch v3, :sswitch_data_0

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getGravity()I

    move-result v7

    and-int/lit8 v2, v7, 0x7

    .line 74
    .local v2, horizonGravity:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 75
    .local v4, width:I
    const/4 v5, 0x0

    .line 76
    .local v5, x:I
    sparse-switch v2, :sswitch_data_1

    .line 85
    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v7, v5

    add-int v8, v6, v1

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    .end local v1           #height:I
    .end local v2           #horizonGravity:I
    .end local v3           #verticalGravity:I
    .end local v4           #width:I
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_0
    return-void

    .line 65
    .restart local v1       #height:I
    .restart local v3       #verticalGravity:I
    .restart local v6       #y:I
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getHeight()I

    move-result v7

    sub-int v6, v7, v1

    .line 66
    goto :goto_0

    .line 68
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getHeight()I

    move-result v7

    sub-int/2addr v7, v1

    div-int/lit8 v6, v7, 0x2

    goto :goto_0

    .line 78
    .restart local v2       #horizonGravity:I
    .restart local v4       #width:I
    .restart local v5       #x:I
    :sswitch_2
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getWidth()I

    move-result v7

    sub-int v5, v7, v4

    .line 79
    goto :goto_1

    .line 81
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getWidth()I

    move-result v7

    sub-int/2addr v7, v4

    div-int/lit8 v5, v7, 0x2

    goto :goto_1

    .line 63
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch

    .line 76
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0x5 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCheckBoxImageDrawable(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 110
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mButtonResource:I

    if-ne p1, v1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    iput p1, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mButtonResource:I

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    :cond_1
    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/ImageCheckBox;->setCheckBoxImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCheckBoxImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "d"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 96
    iget-object v0, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/ImageCheckBox;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 100
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 101
    iput-object p1, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-object v0, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 103
    iget-object v0, p0, Lcom/htc/dockmode/widget/ImageCheckBox;->mCheckBoxDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/widget/ImageCheckBox;->setMinHeight(I)V

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/htc/dockmode/widget/ImageCheckBox;->refreshDrawableState()V

    .line 107
    return-void

    :cond_2
    move v0, v1

    .line 100
    goto :goto_0
.end method

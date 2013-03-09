.class public Lcom/htc/album/modules/ui/widget/HeaderButton;
.super Lcom/htc/album/modules/ui/widget/ControlButton;
.source "HeaderButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/album/modules/ui/widget/ControlButton",
        "<",
        "Lcom/htc/widget/HeaderBarImage;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/htc/widget/HeaderBarImage;III)V
    .locals 0
    .parameter "btn"
    .parameter "groupId"
    .parameter "btnId"
    .parameter "style"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/album/modules/ui/widget/ControlButton;-><init>(Landroid/view/View;III)V

    .line 28
    return-void
.end method


# virtual methods
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 54
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method

.method public setImageMode(I)V
    .locals 1
    .parameter "imageMode"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 64
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 45
    if-gtz p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    goto :goto_0
.end method

.method public setTextResource(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 32
    if-gtz p1, :cond_0

    .line 36
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    goto :goto_0
.end method

.method public setTextString(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/album/modules/ui/widget/ControlButton;->mButton:Landroid/view/View;

    check-cast v0, Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    .line 41
    return-void
.end method

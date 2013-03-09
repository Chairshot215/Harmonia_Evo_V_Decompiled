.class public Lcom/android/htccontacts/widget/HtcListItemRestImageButton;
.super Lcom/htc/widget/HtcListItemImageButton;
.source "HtcListItemRestImageButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemImageButton;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 17
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/htccontacts/widget/HtcListItemRestImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    :goto_0
    return-void

    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListItemImageButton;->setPressed(Z)V

    goto :goto_0
.end method

.class public Lcom/htc/widget/HtcListItemRadioButton;
.super Landroid/widget/RadioButton;
.source "HtcListItemRadioButton.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemRadioButton;->init(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemRadioButton;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListItemRadioButton;->init(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 25
    const-string v1, "common_radiobutton"

    const v2, 0x20804c5

    invoke-static {p1, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 26
    .local v0, rId:I
    invoke-virtual {p0, v0}, Lcom/htc/widget/HtcListItemRadioButton;->setButtonDrawable(I)V

    .line 27
    const v1, 0x20807d7

    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemRadioButton;->setBackgroundResource(I)V

    .line 28
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItemRadioButton;->setVisibility(I)V

    .line 29
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItemRadioButton;->setFocusable(Z)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItemRadioButton;->setClickable(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 41
    iget-object v1, p0, Lcom/htc/widget/HtcListItemRadioButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemRadioButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 46
    :goto_0
    return-object v0

    .line 43
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 45
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput-object v0, p0, Lcom/htc/widget/HtcListItemRadioButton;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    const/4 v0, -0x2

    .line 34
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 35
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 37
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemRadioButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setPressed(Z)V

    goto :goto_0
.end method

.class public Lcom/htc/widget/HtcListItemCheckBox;
.super Landroid/widget/CheckBox;
.source "HtcListItemCheckBox.java"

# interfaces
.implements Lcom/htc/widget/IHtcListItemControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/widget/HtcListItemCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListItemCheckBox;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 38
    sget-object v3, Lcom/android/internal/R$styleable;->CompoundButton:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 41
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 42
    .local v1, default_button:Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 43
    const-string v3, "common_checkbox"

    const v4, 0x2080012

    invoke-static {p1, v3, v4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 44
    .local v2, rId:I
    invoke-virtual {p0, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(I)V

    .line 48
    .end local v2           #rId:I
    :goto_0
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 49
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setFocusable(Z)V

    .line 50
    invoke-virtual {p0, v5}, Lcom/htc/widget/HtcListItemCheckBox;->setClickable(Z)V

    .line 52
    invoke-virtual {p0, v6}, Lcom/htc/widget/HtcListItemCheckBox;->setDuplicateParentStateEnabled(Z)V

    .line 53
    const v3, 0x20807d7

    invoke-virtual {p0, v3}, Lcom/htc/widget/HtcListItemCheckBox;->setBackgroundResource(I)V

    .line 54
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/widget/HtcListItemCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 79
    iget-object v1, p0, Lcom/htc/widget/HtcListItemCheckBox;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/htc/widget/HtcListItemCheckBox;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 84
    :goto_0
    return-object v0

    .line 81
    :cond_0
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 83
    .local v0, params:Landroid/view/ViewGroup$MarginLayoutParams;
    iput-object v0, p0, Lcom/htc/widget/HtcListItemCheckBox;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    goto :goto_0
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    const/4 v0, -0x2

    .line 72
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 73
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 75
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    return-void
.end method

.method public setPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/htc/widget/HtcListItemCheckBox;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setPressed(Z)V

    goto :goto_0
.end method

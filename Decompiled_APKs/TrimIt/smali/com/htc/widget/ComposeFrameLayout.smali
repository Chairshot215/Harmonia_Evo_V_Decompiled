.class public Lcom/htc/widget/ComposeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ComposeFrameLayout.java"


# instance fields
.field private compose:Landroid/widget/LinearLayout;

.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    .line 14
    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    .line 18
    iput-object p1, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    .line 14
    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    .line 24
    iput-object p1, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    .line 14
    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/htc/widget/ComposeFrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 47
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 57
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 58
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 53
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 4

    .prologue
    .line 36
    const v0, 0x2020103

    invoke-virtual {p0, v0}, Lcom/htc/widget/ComposeFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    .line 37
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    const-string v2, "common_button_small"

    const v3, 0x2080011

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 40
    :cond_0
    return-void
.end method

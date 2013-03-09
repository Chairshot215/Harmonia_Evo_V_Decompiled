.class public Lcom/htc/widget/ComposeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ComposeFrameLayout.java"


# instance fields
.field private compose:Landroid/widget/LinearLayout;

.field private m_context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    iput-object p1, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/htc/widget/ComposeFrameLayout;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 4

    const v0, 0x2020103

    invoke-virtual {p0, v0}, Lcom/htc/widget/ComposeFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/ComposeFrameLayout;->compose:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/widget/ComposeFrameLayout;->m_context:Landroid/content/Context;

    const-string v2, "common_button_small"

    const v3, 0x2080011

    invoke-static {v1, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

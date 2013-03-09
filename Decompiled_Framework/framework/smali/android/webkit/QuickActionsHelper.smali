.class final Landroid/webkit/QuickActionsHelper;
.super Ljava/lang/Object;
.source "QuickActionsHelper.java"


# instance fields
.field private ENABLE_QUICKACTION:Z

.field private GAP_DIP:I

.field private innerAnimation:Z

.field private mActionMenu:Landroid/webkit/DefaultActionMenu;

.field private mContext:Landroid/content/Context;

.field private mDefaultClickListener:Landroid/view/View$OnClickListener;

.field private mQuickActions:Lcom/htc/textselection/QuickActions;

.field private mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    const/4 v0, 0x3

    iput v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    new-instance v0, Landroid/webkit/DefaultActionMenu;

    invoke-direct {v0}, Landroid/webkit/DefaultActionMenu;-><init>()V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    new-instance v0, Landroid/webkit/QuickActionsHelper$1;

    invoke-direct {v0, p0}, Landroid/webkit/QuickActionsHelper$1;-><init>(Landroid/webkit/QuickActionsHelper;)V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mDefaultClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/webkit/QuickActionsHelper;->mContext:Landroid/content/Context;

    iget v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    return-void
.end method

.method static synthetic access$000(Landroid/webkit/QuickActionsHelper;)Lcom/htc/textselection/QuickActions;
    .locals 1

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    return-object v0
.end method


# virtual methods
.method public hideQuickAction()V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    goto :goto_0
.end method

.method public hideQuickAction(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEnableQuickAction(Z)V
    .locals 2

    iput-boolean p1, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    iget-object v1, p0, Landroid/webkit/QuickActionsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    :cond_0
    return-void
.end method

.method public setQuickActions(Lcom/htc/textselection/QuickActions;)V
    .locals 1

    iget-boolean v0, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-virtual {v0}, Landroid/webkit/DefaultActionMenu;->clearMenu()V

    iget-object v0, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-interface {p1, v0}, Lcom/htc/textselection/QuickActions;->onCreateQuickActions(Lcom/htc/textselection/ActionMenu;)V

    goto :goto_0
.end method

.method public showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    iget-boolean v3, p0, Landroid/webkit/QuickActionsHelper;->ENABLE_QUICKACTION:Z

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v3}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/webkit/QuickActionsHelper;->mQuickActions:Lcom/htc/textselection/QuickActions;

    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-interface {v3, v4}, Lcom/htc/textselection/QuickActions;->onPrepareShowQuicActions(Lcom/htc/textselection/ActionMenu;)V

    iget-object v3, p0, Landroid/webkit/QuickActionsHelper;->mActionMenu:Landroid/webkit/DefaultActionMenu;

    invoke-virtual {v3}, Landroid/webkit/DefaultActionMenu;->getActions()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/textselection/Action;

    invoke-interface {v0}, Lcom/htc/textselection/Action;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v4, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Landroid/webkit/QuickActionsHelper;->mDefaultClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Lcom/htc/textselection/Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_0

    iget v3, p0, Landroid/webkit/QuickActionsHelper;->GAP_DIP:I

    invoke-virtual {p1, v8, v3}, Landroid/graphics/Rect;->inset(II)V

    iget-object v3, p0, Landroid/webkit/QuickActionsHelper;->mQuickActionsWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    iget-boolean v4, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    invoke-virtual {v3, p2, p1, v4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    iget-boolean v3, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    if-eqz v3, :cond_0

    iput-boolean v8, p0, Landroid/webkit/QuickActionsHelper;->innerAnimation:Z

    goto :goto_0
.end method

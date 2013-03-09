.class public Lcom/htc/quickselection/HtcQuickAction;
.super Ljava/lang/Object;
.source "HtcQuickAction.java"


# static fields
.field private static mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

.field private static mOutsideTouchListener:Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;

.field private static mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# instance fields
.field private IsShowing:Z

.field private mCurrentView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    return-void
.end method

.method public static getInstance()Lcom/htc/quickselection/HtcQuickAction;
    .locals 1

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/quickselection/HtcQuickAction;

    invoke-direct {v0}, Lcom/htc/quickselection/HtcQuickAction;-><init>()V

    sput-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    :cond_0
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    return-object v0
.end method

.method private prepareSelectionWindow(Landroid/view/View;)V
    .locals 2

    sget-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v1, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    :cond_1
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eq v1, p1, :cond_2

    sget-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    :cond_2
    return-void
.end method

.method private updateCurrentView(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public addQuickActionMenu(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method public dismissQuickAction(Z)V
    .locals 1

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    goto :goto_0
.end method

.method public isHtcQuickActionshowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    return v0
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->prepareSelectionWindow(Landroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    return-void
.end method

.method public showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->prepareSelectionWindow(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->updateCurrentView(Landroid/view/View;)V

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    goto :goto_0
.end method

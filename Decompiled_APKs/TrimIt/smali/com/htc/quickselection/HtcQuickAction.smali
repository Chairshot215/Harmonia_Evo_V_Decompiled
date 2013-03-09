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

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    return-void
.end method

.method public static getInstance()Lcom/htc/quickselection/HtcQuickAction;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/htc/quickselection/HtcQuickAction;

    invoke-direct {v0}, Lcom/htc/quickselection/HtcQuickAction;-><init>()V

    sput-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    .line 31
    :cond_0
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mHtcQuickAction:Lcom/htc/quickselection/HtcQuickAction;

    return-object v0
.end method

.method private prepareSelectionWindow(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 66
    sget-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v1, :cond_1

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, ctx:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    :cond_0
    new-instance v1, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v1, v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    .line 73
    .end local v0           #ctx:Landroid/content/Context;
    :cond_1
    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eq v1, p1, :cond_2

    .line 75
    const-string v1, "HtcTextSelection"

    const-string v2, "prepareSelectionWindow::dismiss QuickAction because parent view changed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    sget-object v1, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    .line 78
    :cond_2
    return-void
.end method

.method private updateCurrentView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 81
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    if-eq v0, p1, :cond_1

    .line 82
    iput-object p1, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    if-nez p1, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickAction;->mCurrentView:Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public addQuickActionMenu(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "icon"
    .parameter "listener"
    .parameter "description"

    .prologue
    .line 35
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public dismissQuickAction(Z)V
    .locals 1
    .parameter "fakeDismiss"

    .prologue
    .line 55
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    if-eqz p1, :cond_1

    .line 57
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V

    .line 61
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    .line 63
    :cond_0
    return-void

    .line 59
    :cond_1
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V

    goto :goto_0
.end method

.method public isHtcQuickActionshowing()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    return v0
.end method

.method public prepareQuickActions(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/content/Context;)V
    .locals 1
    .parameter "view"
    .parameter "listener"
    .parameter "context"

    .prologue
    .line 39
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    if-nez v0, :cond_0

    .line 40
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->prepareSelectionWindow(Landroid/view/View;)V

    .line 41
    :cond_0
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    .line 42
    return-void
.end method

.method public showQuickAction(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .locals 2
    .parameter "parent"
    .parameter "r"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->prepareSelectionWindow(Landroid/view/View;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/htc/quickselection/HtcQuickAction;->updateCurrentView(Landroid/view/View;)V

    .line 50
    sget-object v0, Lcom/htc/quickselection/HtcQuickAction;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/quickselection/HtcQuickAction;->IsShowing:Z

    goto :goto_0
.end method

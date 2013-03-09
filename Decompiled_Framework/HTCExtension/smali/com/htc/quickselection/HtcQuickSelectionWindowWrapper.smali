.class public Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;
.super Ljava/lang/Object;
.source "HtcQuickSelectionWindowWrapper.java"


# instance fields
.field private mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-direct {v0, p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    return-void
.end method


# virtual methods
.method public HideDescription()V
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->HideDescription()V

    return-void
.end method

.method public ShowDescription(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->ShowDescription(Ljava/lang/String;)V

    return-void
.end method

.method public addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->addButton(Ljava/lang/Object;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized dismiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->dismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized fakeDismiss()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->fakeDismiss()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->reset()V

    return-void
.end method

.method public setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->setOutsideTouchListener(Lcom/htc/quickselection/HtcQuickSelectionWindow$OutsideTouchListener;)V

    return-void
.end method

.method public declared-synchronized show(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->show(Landroid/view/View;Landroid/graphics/Rect;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showDescriptionWithProgress(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/quickselection/HtcQuickSelectionWindowWrapper;->mSelectionWindow:Lcom/htc/quickselection/HtcQuickSelectionWindow;

    invoke-virtual {v0, p1, p2}, Lcom/htc/quickselection/HtcQuickSelectionWindow;->showDescriptionWithProgress(Ljava/lang/String;Z)V

    return-void
.end method

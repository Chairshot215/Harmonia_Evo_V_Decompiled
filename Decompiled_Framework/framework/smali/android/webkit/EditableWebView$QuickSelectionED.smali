.class Landroid/webkit/EditableWebView$QuickSelectionED;
.super Landroid/webkit/WebView$QuickSelectAbs;
.source "EditableWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/EditableWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickSelectionED"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;
    }
.end annotation


# instance fields
.field enableQuickAction:Z

.field private mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

.field showQuickActionDelay:Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;

.field final synthetic this$0:Landroid/webkit/EditableWebView;


# direct methods
.method private constructor <init>(Landroid/webkit/EditableWebView;)V
    .locals 2

    iput-object p1, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    invoke-direct {p0, p1}, Landroid/webkit/WebView$QuickSelectAbs;-><init>(Landroid/webkit/WebView;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->enableQuickAction:Z

    new-instance v0, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;-><init>(Landroid/webkit/EditableWebView$QuickSelectionED;Landroid/webkit/EditableWebView$1;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->showQuickActionDelay:Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/EditableWebView;Landroid/webkit/EditableWebView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$QuickSelectionED;-><init>(Landroid/webkit/EditableWebView;)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/EditableWebView$QuickSelectionED;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$QuickSelectionED;->getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/webkit/EditableWebView$QuickSelectionED;)Landroid/webkit/QuickActionsHelper;
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    return-object v0
.end method

.method private getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    iget-object v2, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    #calls: Landroid/webkit/EditableWebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    invoke-static {v2, p1}, Landroid/webkit/EditableWebView;->access$1000(Landroid/webkit/EditableWebView;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    sget v2, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_HEIGHT:I

    sget v3, Lcom/htc/textselection/SelectionAnchor;->ANCHOR_OFFSET:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/webkit/WebView$QuickSelectAbs;->ANCHOR_DRAWABLE_HEIGHT:I

    add-int/2addr v2, v3

    shr-int/lit8 v0, v2, 0x1

    const/4 v2, 0x0

    neg-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    return-object v1
.end method


# virtual methods
.method protected doWordSelection(II)V
    .locals 0

    return-void
.end method

.method public hideQuickActions(Z)V
    .locals 1

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0}, Landroid/webkit/QuickActionsHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, p1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    :cond_0
    return-void
.end method

.method protected myInit()V
    .locals 2

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getWebSelectionType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->enableQuickAction:Z

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v1, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, v1, Landroid/webkit/EditableWebView;->mAnchorTouchListener:Landroid/webkit/EditableWebView$AnchorTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    iget-object v1, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    iget-object v1, v1, Landroid/webkit/EditableWebView;->mAnchorTouchListener:Landroid/webkit/EditableWebView$AnchorTouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/textselection/SelectionAnchor;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/QuickActionsHelper;

    iget-object v1, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$500(Landroid/webkit/EditableWebView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/QuickActionsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(IILandroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public selectionDone()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->showAnchor:Z

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPriorAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->mPostAnchor:Lcom/htc/textselection/SelectionAnchor;

    invoke-virtual {v0}, Lcom/htc/textselection/SelectionAnchor;->dismiss()V

    iput-boolean v1, p0, Landroid/webkit/WebView$QuickSelectAbs;->showMagnifier:Z

    iget-object v0, p0, Landroid/webkit/WebView$QuickSelectAbs;->magnifier:Landroid/webkit/MagnifyView;

    invoke-virtual {v0}, Landroid/webkit/MagnifyView;->dismiss()V

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->hideQuickAction(Z)V

    return-void
.end method

.method public setQuickSelectionButtonFlag(I)V
    .locals 0

    return-void
.end method

.method public setUpSelect()V
    .locals 0

    return-void
.end method

.method public showQuickActions(Landroid/graphics/Rect;I)V
    .locals 4

    if-nez p1, :cond_0

    iget-object p1, p0, Landroid/webkit/WebView$QuickSelectAbs;->mSelectRect:Landroid/graphics/Rect;

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->enableQuickAction:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-boolean v1, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->enableQuickAction:Z

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->setEnableQuickAction(Z)V

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    iget-object v1, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    #getter for: Landroid/webkit/EditableWebView;->editableQuickActions:Landroid/webkit/EditableWebView$EditableQuickActions;
    invoke-static {v1}, Landroid/webkit/EditableWebView;->access$900(Landroid/webkit/EditableWebView;)Landroid/webkit/EditableWebView$EditableQuickActions;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/QuickActionsHelper;->setQuickActions(Lcom/htc/textselection/QuickActions;)V

    :cond_1
    if-gtz p2, :cond_2

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->mQuickActionsHelper:Landroid/webkit/QuickActionsHelper;

    invoke-direct {p0, p1}, Landroid/webkit/EditableWebView$QuickSelectionED;->getRegionForQuickAction(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/QuickActionsHelper;->showQuickAction(Landroid/graphics/Rect;Landroid/view/View;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->showQuickActionDelay:Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->showQuickActionDelay:Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;

    iget-object v0, v0, Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;->selectionRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->this$0:Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/EditableWebView$QuickSelectionED;->showQuickActionDelay:Landroid/webkit/EditableWebView$QuickSelectionED$ShowQuickActionDelay;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.class Lcom/htc/widget/TabSwitchHost$1;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"

# interfaces
.implements Lcom/htc/widget/TabSwitchWidget$OnSwitchWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/widget/TabSwitchHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchHost;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchHost;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchDown()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z
    invoke-static {v0, v1}, Lcom/htc/widget/TabSwitchHost;->access$102(Lcom/htc/widget/TabSwitchHost;Z)Z

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;
    invoke-static {v1}, Lcom/htc/widget/TabSwitchHost;->access$300(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchWidget;->isJumpTab()Z

    move-result v1

    #setter for: Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z
    invoke-static {v0, v1}, Lcom/htc/widget/TabSwitchHost;->access$202(Lcom/htc/widget/TabSwitchHost;Z)Z

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$200(Lcom/htc/widget/TabSwitchHost;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$400(Lcom/htc/widget/TabSwitchHost;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mPanelSwitchWidget:Lcom/htc/widget/TabSwitchWidget;
    invoke-static {v1}, Lcom/htc/widget/TabSwitchHost;->access$300(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/TabSwitchWidget;->getJumpNextId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$700(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$700(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;->onTouchDown()V

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/htc/widget/TabSwitchHost;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$600(Lcom/htc/widget/TabSwitchHost;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$600(Lcom/htc/widget/TabSwitchHost;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    goto :goto_0
.end method

.method public onTouchMove()V
    .locals 2

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    const/4 v1, 0x1

    #setter for: Lcom/htc/widget/TabSwitchHost;->mIsTouchMove:Z
    invoke-static {v0, v1}, Lcom/htc/widget/TabSwitchHost;->access$102(Lcom/htc/widget/TabSwitchHost;Z)Z

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$700(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$700(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;->onTouchMove()V

    :cond_0
    return-void
.end method

.method public onTouchUp()V
    .locals 2

    invoke-static {}, Lcom/htc/widget/TabSwitchHost;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mCurrentView:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$600(Lcom/htc/widget/TabSwitchHost;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$700(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$1;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mSwitchWidgetTouchEvent:Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$700(Lcom/htc/widget/TabSwitchHost;)Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/widget/TabSwitchHost$OnSwitchHostListener;->onTouchUp()V

    :cond_1
    return-void
.end method

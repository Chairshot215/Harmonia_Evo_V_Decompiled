.class Lcom/htc/widget/TabSwitchHost$4;
.super Ljava/lang/Object;
.source "TabSwitchHost.java"

# interfaces
.implements Lcom/htc/widget/TabSwitchWidget$OnTabSelectionChanged;


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
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/widget/TabSwitchHost$4;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 2
    .parameter "tabIndex"
    .parameter "clicked"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$4;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mIsJumpTab:Z
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$200(Lcom/htc/widget/TabSwitchHost;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$4;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mIsChangeTabAnim:Z
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$400(Lcom/htc/widget/TabSwitchHost;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$4;->this$0:Lcom/htc/widget/TabSwitchHost;

    invoke-virtual {v0, p1}, Lcom/htc/widget/TabSwitchHost;->setCurrentTab(I)V

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/htc/widget/TabSwitchHost$4;->this$0:Lcom/htc/widget/TabSwitchHost;

    #getter for: Lcom/htc/widget/TabSwitchHost;->mTabContent:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchHost;->access$800(Lcom/htc/widget/TabSwitchHost;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestFocus(I)Z

    .line 293
    return-void
.end method

.class Lcom/htc/widget/TabSwitchWidget$2;
.super Ljava/lang/Object;
.source "TabSwitchWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchWidget;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1746
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget$2;->this$0:Lcom/htc/widget/TabSwitchWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 1748
    if-eqz p2, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget$2;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #getter for: Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchWidget;->access$400(Lcom/htc/widget/TabSwitchWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1750
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget$2;->this$0:Lcom/htc/widget/TabSwitchWidget;

    #getter for: Lcom/htc/widget/TabSwitchWidget;->mSwitchWidget:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/widget/TabSwitchWidget;->access$400(Lcom/htc/widget/TabSwitchWidget;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 1751
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget$2;->this$0:Lcom/htc/widget/TabSwitchWidget;

    invoke-virtual {v0}, Lcom/htc/widget/TabSwitchWidget;->setRequest()V

    .line 1754
    :cond_0
    return-void
.end method

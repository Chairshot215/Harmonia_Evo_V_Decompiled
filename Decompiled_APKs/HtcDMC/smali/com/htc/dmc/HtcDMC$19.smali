.class Lcom/htc/dmc/HtcDMC$19;
.super Ljava/lang/Object;
.source "HtcDMC.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dmc/HtcDMC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/HtcDMC;


# direct methods
.method constructor <init>(Lcom/htc/dmc/HtcDMC;)V
    .locals 0
    .parameter

    .prologue
    .line 3964
    iput-object p1, p0, Lcom/htc/dmc/HtcDMC$19;->this$0:Lcom/htc/dmc/HtcDMC;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "arg1"
    .parameter "nIndex"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3968
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$19;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$5700(Lcom/htc/dmc/HtcDMC;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$19;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$5700(Lcom/htc/dmc/HtcDMC;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3970
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$19;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$19;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3971
    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$19;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v0, v0, Lcom/htc/dmc/HtcDMC;->mMoreMenuPopupWindow:Lcom/htc/widget/HtcPopupWindowWrapper;

    invoke-virtual {v0}, Lcom/htc/widget/HtcPopupWindowWrapper;->dismiss()V

    .line 3972
    :cond_0
    iget-object v1, p0, Lcom/htc/dmc/HtcDMC$19;->this$0:Lcom/htc/dmc/HtcDMC;

    iget-object v0, p0, Lcom/htc/dmc/HtcDMC$19;->this$0:Lcom/htc/dmc/HtcDMC;

    #getter for: Lcom/htc/dmc/HtcDMC;->mMoreMenuMap:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/dmc/HtcDMC;->access$5700(Lcom/htc/dmc/HtcDMC;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/htc/dmc/HtcDMC;->ExecuteMenuFunc(I)V

    .line 3978
    :goto_0
    return-void

    .line 3976
    :cond_1
    const-string v0, "[HtcDMC]"

    const-string v1, "Menu map un-matched menu, abnormal!"

    invoke-static {v0, v1}, Lcom/htc/dmc/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

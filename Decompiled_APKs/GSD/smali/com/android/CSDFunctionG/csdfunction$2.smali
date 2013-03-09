.class Lcom/android/CSDFunctionG/csdfunction$2;
.super Ljava/lang/Object;
.source "csdfunction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/CSDFunctionG/csdfunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/CSDFunctionG/csdfunction;


# direct methods
.method constructor <init>(Lcom/android/CSDFunctionG/csdfunction;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 591
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 592
    .local v0, intentToSend:Landroid/content/Intent;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 593
    .local v2, testDataBundle:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    check-cast p1, Landroid/widget/Button;

    .end local p1
    #setter for: Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestBtn:Landroid/widget/Button;
    invoke-static {v3, p1}, Lcom/android/CSDFunctionG/csdfunction;->access$202(Lcom/android/CSDFunctionG/csdfunction;Landroid/widget/Button;)Landroid/widget/Button;

    .line 594
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    #getter for: Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/CSDFunctionG/csdfunction;->access$200(Lcom/android/CSDFunctionG/csdfunction;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    .local v1, strBtnName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    iget-object v3, v3, Lcom/android/CSDFunctionG/csdfunction;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_0

    .line 597
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    iget-object v3, v3, Lcom/android/CSDFunctionG/csdfunction;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 599
    :cond_0
    const-string v3, "About"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    invoke-virtual {v3}, Lcom/android/CSDFunctionG/csdfunction;->Copyright()V

    .line 603
    :cond_1
    const-string v3, "Select All"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 605
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    iput-boolean v6, v3, Lcom/android/CSDFunctionG/csdfunction;->Select_AllFlag:Z

    .line 606
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    invoke-virtual {v3, v6}, Lcom/android/CSDFunctionG/csdfunction;->CheckAllchkbox(Z)V

    .line 607
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    #getter for: Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/CSDFunctionG/csdfunction;->access$200(Lcom/android/CSDFunctionG/csdfunction;)Landroid/widget/Button;

    move-result-object v3

    const-string v4, "Unselect All"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 609
    :cond_2
    const-string v3, "Unselect All"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 611
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    iput-boolean v5, v3, Lcom/android/CSDFunctionG/csdfunction;->Select_AllFlag:Z

    .line 612
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    invoke-virtual {v3, v5}, Lcom/android/CSDFunctionG/csdfunction;->CheckAllchkbox(Z)V

    .line 613
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    #getter for: Lcom/android/CSDFunctionG/csdfunction;->g_mPressedTestBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/CSDFunctionG/csdfunction;->access$200(Lcom/android/CSDFunctionG/csdfunction;)Landroid/widget/Button;

    move-result-object v3

    const-string v4, "Select All"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 615
    :cond_3
    const-string v3, "Run"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 617
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    iput-boolean v6, v3, Lcom/android/CSDFunctionG/csdfunction;->Select_AllFlag:Z

    .line 619
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    invoke-virtual {v3}, Lcom/android/CSDFunctionG/csdfunction;->Run_Selectall()V

    .line 625
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    invoke-virtual {v3, v5}, Lcom/android/CSDFunctionG/csdfunction;->CheckAllchkbox(Z)V

    .line 626
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    #getter for: Lcom/android/CSDFunctionG/csdfunction;->g_objSelectAllBtn:Landroid/widget/Button;
    invoke-static {v3}, Lcom/android/CSDFunctionG/csdfunction;->access$300(Lcom/android/CSDFunctionG/csdfunction;)Landroid/widget/Button;

    move-result-object v3

    const-string v4, "Select All"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 628
    :cond_4
    const-string v3, "More"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 630
    iget-object v3, p0, Lcom/android/CSDFunctionG/csdfunction$2;->this$0:Lcom/android/CSDFunctionG/csdfunction;

    invoke-virtual {v3}, Lcom/android/CSDFunctionG/csdfunction;->Moretestitem()V

    .line 632
    :cond_5
    return-void
.end method

.class Lcom/sprint/dsa/DsaClient$3;
.super Ljava/lang/Object;
.source "DsaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sprint/dsa/DsaClient;->enableUI(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sprint/dsa/DsaClient;

.field private final synthetic val$uiActiveFlag:Z


# direct methods
.method constructor <init>(Lcom/sprint/dsa/DsaClient;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iput-boolean p2, p0, Lcom/sprint/dsa/DsaClient$3;->val$uiActiveFlag:Z

    .line 518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x4

    .line 521
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-boolean v4, p0, Lcom/sprint/dsa/DsaClient$3;->val$uiActiveFlag:Z

    #setter for: Lcom/sprint/dsa/DsaClient;->allowBack:Z
    invoke-static {v1, v4}, Lcom/sprint/dsa/DsaClient;->access$1(Lcom/sprint/dsa/DsaClient;Z)V

    .line 522
    iget-object v4, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-boolean v1, p0, Lcom/sprint/dsa/DsaClient$3;->val$uiActiveFlag:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v4, Lcom/sprint/dsa/DsaClient;->loading:Z

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-boolean v4, p0, Lcom/sprint/dsa/DsaClient$3;->val$uiActiveFlag:Z

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sprint/dsa/DsaClient;->setProgressBarIndeterminateVisibility(Z)V

    .line 525
    iget-boolean v1, p0, Lcom/sprint/dsa/DsaClient$3;->val$uiActiveFlag:Z

    if-nez v1, :cond_2

    .line 528
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->btnRight:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 529
    sget-object v1, Lcom/sprint/dsa/DsaClient;->btnLeft:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 530
    invoke-static {}, Lcom/sprint/dsa/DsaClient;->access$0()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 557
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 522
    goto :goto_0

    :cond_1
    move v2, v3

    .line 524
    goto :goto_1

    .line 532
    :cond_2
    invoke-static {}, Lcom/sprint/dsa/DsaClient;->access$0()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->hide()V

    .line 533
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 534
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_4

    .line 536
    sget-object v1, Lcom/sprint/dsa/DsaClient;->btnLeft:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 537
    sget-object v1, Lcom/sprint/dsa/DsaClient;->btnLeft:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->leftSoftKeyText:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "DSS"

    const-string v2, "Enable left softkey"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 545
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_5

    .line 547
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->btnRight:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 548
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->btnRight:Landroid/widget/Button;

    iget-object v2, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v2, v2, Lcom/sprint/dsa/DsaClient;->rightSoftKeyText:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "DSS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enableUI:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 541
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_1
    sget-object v1, Lcom/sprint/dsa/DsaClient;->btnLeft:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 542
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-boolean v1, v1, Lcom/sprint/dsa/DsaClient;->dsaDebug:Z

    if-eqz v1, :cond_3

    const-string v1, "DSS"

    const-string v2, "Disable left-Softkey:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 551
    :cond_5
    iget-object v1, p0, Lcom/sprint/dsa/DsaClient$3;->this$0:Lcom/sprint/dsa/DsaClient;

    iget-object v1, v1, Lcom/sprint/dsa/DsaClient;->btnRight:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

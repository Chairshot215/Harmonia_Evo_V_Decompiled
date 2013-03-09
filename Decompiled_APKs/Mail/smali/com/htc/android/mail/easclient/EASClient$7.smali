.class Lcom/htc/android/mail/easclient/EASClient$7;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASClient;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 589
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 591
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 592
    .local v0, bSync:Z
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->isBusy(J)Z

    move-result v2

    .line 593
    .local v2, syncActive:Z
    if-eqz v0, :cond_6

    .line 594
    if-eqz v2, :cond_1

    .line 595
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v5, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v5}, Lcom/htc/android/mail/easclient/EASClient;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0294

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    #setter for: Lcom/htc/android/mail/easclient/EASClient;->mToast:Landroid/widget/Toast;
    invoke-static {v3, v4}, Lcom/htc/android/mail/easclient/EASClient;->access$1402(Lcom/htc/android/mail/easclient/EASClient;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 598
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mToast:Landroid/widget/Toast;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$1400(Lcom/htc/android/mail/easclient/EASClient;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 622
    .end local v0           #bSync:Z
    .end local v2           #syncActive:Z
    :cond_0
    :goto_0
    return-void

    .line 600
    .restart local v0       #bSync:Z
    .restart local v2       #syncActive:Z
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "EASClient"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v4

    const-string v6, "Sync Now"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 601
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getPhoneStatus()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 602
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/easclient/EASClient;->showDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    .end local v0           #bSync:Z
    .end local v2           #syncActive:Z
    :catch_0
    move-exception v1

    .line 619
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 604
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bSync:Z
    .restart local v2       #syncActive:Z
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$1100(Lcom/htc/android/mail/easclient/EASClient;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/util/NetworkUtil;->checkNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 605
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->startSync()V
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$1500(Lcom/htc/android/mail/easclient/EASClient;)V

    goto :goto_0

    .line 607
    :cond_4
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "EASClient"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v4

    const-string v6, "network failed"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 608
    :cond_5
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4}, Lcom/htc/android/mail/easclient/EASClient;->showDialog(I)V

    goto :goto_0

    .line 614
    :cond_6
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "EASClient"

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v4

    const-string v6, "Cancel Sync"

    invoke-static {v3, v4, v5, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 615
    :cond_7
    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/android/mail/easclient/EASClient$7;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v4}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/htc/android/mail/eassvc/pim/IEASService;->cancelSync(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.class Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostSignInProvRunnable"
.end annotation


# instance fields
.field logger:Lcom/htc/cs/util/Logger;

.field mEndMessage:Landroid/os/Message;

.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method public constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter "msg"

    .prologue
    .line 648
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 645
    invoke-static {p0}, Lcom/htc/cs/util/Logger;->getLogger(Ljava/lang/Object;)Lcom/htc/cs/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->logger:Lcom/htc/cs/util/Logger;

    .line 649
    iput-object p2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->mEndMessage:Landroid/os/Message;

    .line 650
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .parameter "arg"

    .prologue
    .line 653
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CS_login;->removeDialog(I)V

    .line 654
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->mEndMessage:Landroid/os/Message;

    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 655
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->mEndMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 656
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    .line 660
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2}, Lcom/htc/cs/util/Logger;->logMethodName()V

    .line 661
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->activityDestroyed()Z
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$000(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v2, v3}, Lcom/htc/cs/util/NetworkCheck;->isNetworkOK(Landroid/content/Context;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 667
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->mEndMessage:Landroid/os/Message;

    const/4 v3, 0x3

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 668
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->mEndMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 675
    :cond_2
    const/4 v1, 0x0

    .line 676
    .local v1, time:I
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x32

    if-ge v1, v2, :cond_3

    .line 677
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->logger:Lcom/htc/cs/util/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "Updated = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v5}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/htc/cs/util/Logger;->debug([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 679
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, e:Ljava/lang/InterruptedException;
    const/4 v2, 0x4

    :try_start_2
    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->sendMessage(I)V

    .line 683
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/cs/service/DashboardService;->removeAccount(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 713
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 714
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->logger:Lcom/htc/cs/util/Logger;

    invoke-virtual {v2, v0}, Lcom/htc/cs/util/Logger;->exception(Ljava/lang/Throwable;)V

    .line 715
    invoke-direct {p0, v6}, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->sendMessage(I)V

    .line 716
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/cs/service/DashboardService;->removeAccount(Landroid/content/Context;)V

    goto :goto_0

    .line 688
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->provisioningUpdated:Z
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$400(Lcom/htc/cs/activity/accountactivities/CS_login;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 689
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->sendMessage(I)V

    .line 690
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/cs/service/DashboardService;->removeAccount(Landroid/content/Context;)V

    goto :goto_0

    .line 693
    :cond_4
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 694
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->contentObserverDeviceConfig:Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$100(Lcom/htc/cs/activity/accountactivities/CS_login;)Lcom/htc/cs/activity/accountactivities/CS_login$ContentObserverDeviceConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 699
    :cond_5
    const/16 v2, 0x3e9

    invoke-direct {p0, v2}, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->sendMessage(I)V

    .line 700
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v3, 0x1

    #calls: Lcom/htc/cs/activity/accountactivities/CS_login;->sendLoginIntent(Z)V
    invoke-static {v2, v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1700(Lcom/htc/cs/activity/accountactivities/CS_login;Z)V

    .line 702
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-static {v2}, Lcom/htc/cs/util/CSStatusBarNotification;->cancelAll(Landroid/content/Context;)V

    .line 704
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$800(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 705
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 706
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->editEmailAddr:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$1600(Lcom/htc/cs/activity/accountactivities/CS_login;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 710
    :cond_6
    iget-object v2, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-virtual {v2}, Lcom/htc/cs/activity/accountactivities/CS_login;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/cs/activity/accountactivities/CS_login$PostSignInProvRunnable;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    #getter for: Lcom/htc/cs/activity/accountactivities/CS_login;->versionList:Ljava/util/List;
    invoke-static {v3}, Lcom/htc/cs/activity/accountactivities/CS_login;->access$800(Lcom/htc/cs/activity/accountactivities/CS_login;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setLegalDocVersion(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

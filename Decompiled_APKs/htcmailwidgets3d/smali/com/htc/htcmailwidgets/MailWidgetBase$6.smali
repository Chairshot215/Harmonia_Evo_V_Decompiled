.class Lcom/htc/htcmailwidgets/MailWidgetBase$6;
.super Landroid/content/BroadcastReceiver;
.source "MailWidgetBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailWidgetBase;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;


# direct methods
.method constructor <init>(Lcom/htc/htcmailwidgets/MailWidgetBase;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 657
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 658
    .local v3, action:Ljava/lang/String;
    const-string v8, "com.htc.htcmailwidgets.donothing_completed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.htcmailwidgets.firstrun_completed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.htcmailwidgets.secondrun_completed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.htcmailwidgets.requeryrun_completed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.htcmailwidgets.mailstatus_completed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.htcmailwidgets.contactstatus_completed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "com.htc.htcmailwidgets.timechanged_completed"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 663
    :cond_0
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v9, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v9, v9, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget-object v11, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v11, v11, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    invoke-static {v9, v10, v11}, Lcom/htc/htcmailwidgets/MailDataManager;->getMailIDList(JLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    .line 665
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v8, :cond_2

    .line 667
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    if-eqz v8, :cond_1

    .line 668
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mUiHandler:Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;

    const/16 v9, 0x1772

    invoke-virtual {v8, v9}, Lcom/htc/htcmailwidgets/MailWidgetBase$UIHandler;->sendEmptyMessage(I)Z

    .line 834
    :cond_1
    :goto_0
    return-void

    .line 670
    :cond_2
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedUpdateDataToUI:Z

    goto :goto_0

    .line 672
    :cond_3
    const-string v8, "com.htc.android.mail.intent.change"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    if-eqz p2, :cond_f

    .line 674
    const-string v8, "accountChange"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 675
    .local v0, ac:Z
    const-string v8, "syncStart"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 676
    .local v7, mss:Z
    const-string v8, "syncFinish"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 677
    .local v6, msf:Z
    const-string v8, "accountId"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 678
    .local v1, accountid:J
    const-string v8, "settingChange"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 680
    .local v5, msc:Z
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v8, :cond_4

    .line 681
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    #getter for: Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailWidgetBase;->access$400(Lcom/htc/htcmailwidgets/MailWidgetBase;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "BroadcastReceiver:  EXTRA_HTC_MAIL_FLAG_CHANGE: Not Hidden --> Quit..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_4
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    #getter for: Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailWidgetBase;->access$400(Lcom/htc/htcmailwidgets/MailWidgetBase;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BroadcastReceiver:  EXTRA_HTC_MAIL_FLAG_CHANGE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    if-eqz v0, :cond_9

    .line 686
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 687
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFromIntent:Z

    .line 690
    :cond_5
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 691
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 703
    :cond_6
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x0

    iput v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mFirstVisibleItemPosition:I

    .line 704
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbLoacteCurrentItemPosition:Z

    .line 710
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedReloadAccountInfo:Z

    .line 711
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    if-nez v8, :cond_1

    .line 712
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138b

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 713
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138b

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 693
    :cond_7
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v8, v1, v8

    if-eqz v8, :cond_6

    :cond_8
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    .line 694
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x1393

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 695
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x1393

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 698
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v8, :cond_1

    .line 699
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    invoke-virtual {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->onRequeryAccountsInfo()V

    goto/16 :goto_0

    .line 717
    :cond_9
    if-eqz v5, :cond_a

    .line 720
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138c

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 721
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138c

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 722
    :cond_a
    if-eqz v6, :cond_e

    .line 724
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountProtocol:I

    const/4 v9, 0x4

    if-eq v8, v9, :cond_1

    .line 728
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 729
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 735
    :cond_b
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 736
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFromIntent:Z

    .line 738
    :cond_c
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshMail:Z

    .line 743
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInDeleteMail:Z

    if-nez v8, :cond_1

    .line 744
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 746
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 731
    :cond_d
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v8, v1, v8

    if-eqz v8, :cond_b

    goto/16 :goto_0

    .line 750
    :cond_e
    if-eqz v7, :cond_1

    .line 751
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshMail:Z

    .line 753
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInDeleteMail:Z

    if-nez v8, :cond_1

    .line 754
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 756
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 759
    .end local v0           #ac:Z
    .end local v1           #accountid:J
    .end local v5           #msc:Z
    .end local v6           #msf:Z
    .end local v7           #mss:Z
    :cond_f
    const-string v8, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 762
    const-string v8, "accountId"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 764
    .restart local v1       #accountid:J
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_11

    .line 765
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 771
    :cond_10
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedReloadAccountInfo:Z

    .line 773
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInRefresh:Z

    if-nez v8, :cond_1

    .line 774
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138b

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 775
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138b

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 767
    :cond_11
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v8, v1, v8

    if-eqz v8, :cond_10

    goto/16 :goto_0

    .line 777
    .end local v1           #accountid:J
    :cond_12
    const-string v8, "com.htc.eas.intent.all_sync_start"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 779
    const-string v8, "com.htc.eas.intent.all_sync_finish"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 780
    const-string v8, "accountId"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 782
    .restart local v1       #accountid:J
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_16

    .line 783
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 789
    :cond_13
    const-string v8, "com.htc.eas.intent.delete_mail_finish"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 790
    .local v4, mmd:Z
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    #getter for: Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailWidgetBase;->access$400(Lcom/htc/htcmailwidgets/MailWidgetBase;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BroadcastReceiver:  EASManager.INTENT_ALL_SYNC_FINISH, delete flag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mMailIDs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_14

    .line 793
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbFromIntent:Z

    .line 795
    :cond_14
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshMail:Z

    .line 797
    if-eqz v4, :cond_15

    .line 798
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInDeleteMail:Z

    .line 800
    :cond_15
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInDeleteMail:Z

    if-nez v8, :cond_1

    .line 801
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 803
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 785
    .end local v4           #mmd:Z
    :cond_16
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v8, v1, v8

    if-eqz v8, :cond_13

    goto/16 :goto_0

    .line 805
    .end local v1           #accountid:J
    :cond_17
    const-string v8, "android.mail.notification.NotifyNewMail"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 806
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    #getter for: Lcom/htc/htcmailwidgets/MailWidgetBase;->LOG_TAG:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailWidgetBase;->access$400(Lcom/htc/htcmailwidgets/MailWidgetBase;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "BroadcastReceiver: android.mail.notification.NotifyNewMail"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const-string v8, "accountId"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 810
    .restart local v1       #accountid:J
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-nez v8, :cond_1b

    .line 811
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    .line 817
    :cond_18
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbHasNewMailComingNotify:Z

    .line 818
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbRefetchAllMails:Z

    .line 819
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbNeedRefreshMail:Z

    .line 822
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    const/4 v9, 0x0

    iput v9, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mIntExtractDataPosition:I

    .line 823
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    if-eqz v8, :cond_19

    .line 824
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mDataManager:Lcom/htc/htcmailwidgets/MailDataManager;

    iget-object v9, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v9, v9, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    iget-object v11, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v11, v11, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountName:Ljava/lang/String;

    iget-object v12, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget v12, v12, Lcom/htc/htcmailwidgets/MailWidgetBase;->mIntExtractDataPosition:I

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/htc/htcmailwidgets/MailDataManager;->setExtractionDataPosition(JLjava/lang/String;I)V

    .line 826
    :cond_19
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mFirstVisibleItemIndex:Landroid/graphics/PointF;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/PointF;->offset(FF)V

    .line 828
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInvisible:Z

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-boolean v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mbInDeleteMail:Z

    if-nez v8, :cond_1

    .line 829
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->hasMessage(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    .line 830
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 831
    :cond_1a
    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-object v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mWidgetWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/16 v9, 0x138d

    invoke-interface {v8, v9}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto/16 :goto_0

    .line 813
    :cond_1b
    const-wide/16 v8, -0x1

    cmp-long v8, v1, v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/htc/htcmailwidgets/MailWidgetBase$6;->this$0:Lcom/htc/htcmailwidgets/MailWidgetBase;

    iget-wide v8, v8, Lcom/htc/htcmailwidgets/MailWidgetBase;->mAccountId:J

    cmp-long v8, v1, v8

    if-eqz v8, :cond_18

    goto/16 :goto_0
.end method

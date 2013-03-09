.class final Lcom/htc/htcmailwidgets/MailDataManager$1;
.super Landroid/content/BroadcastReceiver;
.source "MailDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htcmailwidgets/MailDataManager;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 717
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 721
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 722
    .local v3, action:Ljava/lang/String;
    const-string v8, "com.htc.android.mail.intent.change"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    if-eqz p2, :cond_c

    .line 724
    const-string v8, "accountId"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 726
    .local v1, accountid:J
    const-string v8, "starMark"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$002([J)[J

    .line 727
    const-string v8, "starUnmark"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$102([J)[J

    .line 728
    const-string v8, "messageRead"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$202([J)[J

    .line 729
    const-string v8, "messageUnread"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$302([J)[J

    .line 730
    const-string v8, "messageDelete"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$402([J)[J

    .line 731
    const-string v8, "messageReload"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$502([J)[J

    .line 732
    const-string v8, "messageReply"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$602([J)[J

    .line 733
    const-string v8, "messageForward"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$702([J)[J

    .line 735
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$000()[J

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$000()[J

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_7

    :cond_0
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$100()[J

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$100()[J

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_7

    :cond_1
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$200()[J

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$200()[J

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_7

    :cond_2
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$300()[J

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$300()[J

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_7

    :cond_3
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$400()[J

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$400()[J

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_7

    :cond_4
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$500()[J

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$500()[J

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_7

    :cond_5
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$600()[J

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$600()[J

    move-result-object v8

    array-length v8, v8

    if-gtz v8, :cond_7

    :cond_6
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$700()[J

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$700()[J

    move-result-object v8

    array-length v8, v8

    if-lez v8, :cond_a

    .line 744
    :cond_7
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$600()[J

    move-result-object v8

    if-eqz v8, :cond_8

    .line 747
    :cond_8
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$700()[J

    move-result-object v8

    if-eqz v8, :cond_9

    .line 750
    :cond_9
    #calls: Lcom/htc/htcmailwidgets/MailDataManager;->getAccountName(J)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/htcmailwidgets/MailDataManager;->access$800(J)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, acc_name_:Ljava/lang/String;
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$900()Z

    move-result v8

    if-nez v8, :cond_b

    .line 754
    #calls: Lcom/htc/htcmailwidgets/MailDataManager;->buildChangedMap()V
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1000()V

    .line 815
    .end local v0           #acc_name_:Ljava/lang/String;
    .end local v1           #accountid:J
    :cond_a
    :goto_0
    return-void

    .line 756
    .restart local v0       #acc_name_:Ljava/lang/String;
    .restart local v1       #accountid:J
    :cond_b
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1102(Z)Z

    .line 758
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1200()Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 759
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1200()Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;

    move-result-object v8

    const v9, 0x30004

    const-wide/16 v10, 0x2710

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/htcmailwidgets/MailDataManager$DataManagerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 762
    .end local v0           #acc_name_:Ljava/lang/String;
    .end local v1           #accountid:J
    :cond_c
    const-string v8, "anddroid.intent.action.FAVORITE_CHANGE"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 763
    sget-object v8, Lcom/htc/htcmailwidgets/MailDataManager;->LOG_TAG:Ljava/lang/String;

    const-string v9, "BroadcastReceiver:  ACTION_FAVORITE_CHANGE... "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v8, "contact_id"

    const-wide/16 v9, -0x1

    invoke-virtual {p2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 766
    .local v6, lPersonId:J
    const-string v8, "delete"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 767
    .local v5, bdelete:Z
    const-string v8, "isSim"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 769
    .local v4, bSimContact:Z
    if-nez v4, :cond_a

    .line 772
    if-eqz v5, :cond_10

    .line 774
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1300()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_d

    .line 775
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 778
    :cond_d
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_f

    .line 779
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1300()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_e

    .line 780
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1300()Ljava/util/ArrayList;

    move-result-object v8

    long-to-int v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_e
    :goto_1
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateContacts()V

    goto :goto_0

    .line 782
    :cond_f
    const-string v8, "contact_id_list"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_1

    .line 783
    :cond_10
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_e

    .line 784
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1400()Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_11

    .line 785
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1402(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 787
    :cond_11
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    if-gez v8, :cond_e

    .line 788
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1400()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 793
    .end local v4           #bSimContact:Z
    .end local v5           #bdelete:Z
    .end local v6           #lPersonId:J
    :cond_12
    const-string v8, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    const-string v8, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 805
    :cond_13
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1500()Z

    move-result v8

    if-nez v8, :cond_15

    .line 806
    const/4 v8, 0x0

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1602(Z)Z

    .line 807
    const-string v8, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 808
    #calls: Lcom/htc/htcmailwidgets/MailDataManager;->checkTime()V
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1700()V

    goto/16 :goto_0

    .line 811
    :cond_14
    invoke-static {}, Lcom/htc/htcmailwidgets/MailDataManager;->updateTimes()V

    goto/16 :goto_0

    .line 813
    :cond_15
    const/4 v8, 0x1

    invoke-static {v8}, Lcom/htc/htcmailwidgets/MailDataManager;->access$1602(Z)Z

    goto/16 :goto_0
.end method

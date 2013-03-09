.class Lcom/htc/android/mail/easclient/EASClient$1;
.super Landroid/content/BroadcastReceiver;
.source "EASClient.java"


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
    .line 170
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 173
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v7}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v7

    if-nez v7, :cond_1

    .line 174
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v7}, Lcom/htc/android/mail/easclient/EASClient;->finish()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, action:Ljava/lang/String;
    const-string v7, "intent.htc.mail.eas.sync_status"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 179
    const-string v7, "exchange.account"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 180
    .local v5, exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    iget-wide v7, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    iget-object v9, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v9}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 183
    const-string v7, "sync.status"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 184
    .local v6, statusMap:Landroid/content/ContentValues;
    if-eqz v6, :cond_0

    .line 185
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->onSyncSourceChange(Landroid/content/ContentValues;)V
    invoke-static {v7, v6}, Lcom/htc/android/mail/easclient/EASClient;->access$200(Lcom/htc/android/mail/easclient/EASClient;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 187
    .end local v5           #exAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .end local v6           #statusMap:Landroid/content/ContentValues;
    :cond_2
    const-string v7, "com.htc.eas.intent.failed_sync"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 189
    :try_start_0
    const-string v7, "extra.sync_error_code"

    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v8

    invoke-interface {v8}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getDefaultErrorCode()I

    move-result v8

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 192
    .local v4, errCode:I
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v8}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/android/mail/easclient/EASClient;->setGlobalErrorMessage(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/htc/android/mail/easclient/EASClient;->access$300(Lcom/htc/android/mail/easclient/EASClient;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 193
    .end local v4           #errCode:I
    :catch_0
    move-exception v7

    goto :goto_0

    .line 194
    :catch_1
    move-exception v3

    .line 195
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 197
    .end local v3           #e:Ljava/lang/Exception;
    :cond_3
    const-string v7, "com.htc.eas.intent.chk_svrcap_failed"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 198
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    sget-object v8, Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;->END:Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->setSyncAction(Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;)V
    invoke-static {v7, v8}, Lcom/htc/android/mail/easclient/EASClient;->access$400(Lcom/htc/android/mail/easclient/EASClient;Lcom/htc/android/mail/easclient/EASClient$SYNC_ACTION;)V

    .line 199
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v7}, Lcom/htc/android/mail/easclient/EASClient;->onChkSvrCapFailed()V

    goto :goto_0

    .line 200
    :cond_4
    const-string v7, "com.htc.eas.intent.phone_status_change"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 201
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const-string v8, "extra.phone_status"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/htc/android/mail/easclient/EASClient;->mPhoneStatus:I
    invoke-static {v7, v8}, Lcom/htc/android/mail/easclient/EASClient;->access$502(Lcom/htc/android/mail/easclient/EASClient;I)I

    .line 204
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->getScheduleType()I
    invoke-static {v8}, Lcom/htc/android/mail/easclient/EASClient;->access$600(Lcom/htc/android/mail/easclient/EASClient;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/android/mail/easclient/EASClient;->updateScheduleUI(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/htc/android/mail/easclient/EASClient;->access$700(Lcom/htc/android/mail/easclient/EASClient;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_5
    const-string v7, "intent.eas.mail.schedulerChange"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 206
    const-string v7, "accountId"

    const-wide/16 v8, -0x1

    invoke-virtual {p2, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 207
    .local v0, accountId:J
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v7}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v7

    cmp-long v7, v0, v7

    if-nez v7, :cond_0

    .line 208
    iget-object v7, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    iget-object v8, p0, Lcom/htc/android/mail/easclient/EASClient$1;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #calls: Lcom/htc/android/mail/easclient/EASClient;->getScheduleType()I
    invoke-static {v8}, Lcom/htc/android/mail/easclient/EASClient;->access$600(Lcom/htc/android/mail/easclient/EASClient;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    #calls: Lcom/htc/android/mail/easclient/EASClient;->updateScheduleUI(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/htc/android/mail/easclient/EASClient;->access$700(Lcom/htc/android/mail/easclient/EASClient;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

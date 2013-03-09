.class Lcom/htc/android/mail/eassvc/EASAppSvc$2;
.super Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub;
.source "EASAppSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/pim/EASEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x59d9

    if-ne v7, v8, :cond_1

    .line 198
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/EASAppSvc;->startService()V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget v7, p1, Landroid/os/Message;->what:I

    const/16 v8, 0x59da

    if-ne v7, v8, :cond_0

    .line 200
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mWasWakeupWifi:Z
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$100(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 201
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mIsScreenOff:Z
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$200(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 204
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.WIFIIDLE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v6, wifiIDle:Landroid/content/Intent;
    const-string v7, "extra.com.htc.eas.wifi_active"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v7, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->sendBroadcast(Landroid/content/Intent;)V

    .line 208
    .end local v6           #wifiIDle:Landroid/content/Intent;
    :cond_2
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v8, 0x0

    #setter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mWasWakeupWifi:Z
    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$102(Lcom/htc/android/mail/eassvc/EASAppSvc;Z)Z

    .line 212
    :cond_3
    const/4 v5, 0x0

    .line 213
    .local v5, syncRunning:Z
    const/4 v4, 0x0

    .line 214
    .local v4, sendingMail:Z
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 215
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isRequestEmpty(Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 216
    const/4 v5, 0x1

    .line 220
    .end local v0           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_5
    if-nez v5, :cond_6

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mEasReqController:Lcom/htc/android/mail/eassvc/core/EASRequestController;
    invoke-static {v7}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$400(Lcom/htc/android/mail/eassvc/EASAppSvc;)Lcom/htc/android/mail/eassvc/core/EASRequestController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/core/EASRequestController;->isSendingRequestEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 221
    const/4 v4, 0x1

    .line 224
    :cond_6
    if-nez v5, :cond_0

    if-nez v4, :cond_0

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, inDelete:Z
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v7, v7, Lcom/htc/android/mail/eassvc/EASAppSvc;->mStartIdList:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 227
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.htc.eas.deleteaccount"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 228
    const/4 v2, 0x1

    .line 232
    .end local v3           #intent:Landroid/content/Intent;
    :cond_8
    if-nez v2, :cond_a

    .line 233
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "EASAppSvc"

    const-string v8, "syncCallback(): No account is running, stop EAS Service"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_9
    iget-object v7, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$2;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v7}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopServiceForSyncEnd()V

    goto/16 :goto_0

    .line 236
    :cond_a
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "EASAppSvc"

    const-string v8, "syncCallback(): inDelete, skip stop service"

    invoke-static {v7, v8}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

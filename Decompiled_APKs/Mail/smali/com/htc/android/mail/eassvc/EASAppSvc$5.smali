.class Lcom/htc/android/mail/eassvc/EASAppSvc$5;
.super Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;
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
    .line 890
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public EmptyFolderContents(JLjava/lang/String;Z)V
    .locals 3
    .parameter "accountId"
    .parameter "collId"
    .parameter "deleteSubFolders"

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1271
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reveive:EmptyFolderContents(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1272
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->EmptyFolderContents(JLjava/lang/String;Z)V

    goto :goto_0
.end method

.method public StopAutoDiscover()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 949
    :goto_0
    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopAutoDiscover()V

    goto :goto_0
.end method

.method public StopTestServer()V
    .locals 1

    .prologue
    .line 952
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopTestServer()V

    goto :goto_0
.end method

.method public applyPolicy(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 1
    .parameter "account"

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1114
    :goto_0
    return-void

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->applyPolicy(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto :goto_0
.end method

.method public applySSLCertificate(JLjava/lang/String;)V
    .locals 1
    .parameter "accountId"
    .parameter "emailAddr"

    .prologue
    .line 999
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->applySSLCertificate(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .parameter "emailAddr"
    .parameter "domain"
    .parameter "account"
    .parameter "password"

    .prologue
    .line 959
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 960
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 961
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "return"

    const/16 v2, -0xb

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 964
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->autoDiscover(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public cancelErrorNotification(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1312
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/htc/android/mail/eassvc/util/EASEventBroadcaster;->cancelErrorNotification(Landroid/content/Context;J)V

    .line 1313
    return-void
.end method

.method public cancelMailOperation(JILjava/lang/String;)V
    .locals 3
    .parameter "accountId"
    .parameter "option"
    .parameter "param"

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1321
    :goto_0
    return-void

    .line 1319
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reveive:cancelMailOperation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->cancelMailOperation(JILjava/lang/String;)V

    goto :goto_0
.end method

.method public cancelOof(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1240
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "Receive:cancelOof()"

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1241
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->cancelOof(J)V

    goto :goto_0
.end method

.method public cancelSearchGlobalMail(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    :goto_0
    return-void

    .line 1263
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "Receive:cancelSearchGlobalMail()"

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1264
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->cancelSearchGlobalMail(J)V

    goto :goto_0
.end method

.method public cancelSync(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->cancelSync(J)V

    goto :goto_0
.end method

.method public cancelSyncSource(JI)V
    .locals 3
    .parameter "accountId"
    .parameter "srcType"

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1062
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reveive:cancelSyncSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1063
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->cancelSyncSource(JI)V

    goto :goto_0
.end method

.method public cancelSyncSourceByMode(JII)V
    .locals 1
    .parameter "accountId"
    .parameter "srcType"
    .parameter "mode"

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$900(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1074
    :cond_0
    :goto_0
    return-void

    .line 1070
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->cancelSyncSourceByMode(JII)V

    goto :goto_0
.end method

.method public deleteExchangeAccount(J)Z
    .locals 3
    .parameter "accountId"

    .prologue
    const/4 v0, 0x0

    .line 1083
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1086
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v0, v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->deleteExchangeAccount(JZLcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteExchangeRemainDatas()Z
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    const/4 v0, 0x0

    .line 1080
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->deleteExchangeRemainDatas()Z

    move-result v0

    goto :goto_0
.end method

.method public enableSyncSource(JIZ)V
    .locals 1
    .parameter "accountId"
    .parameter "srcType"
    .parameter "enabled"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 918
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->enableSyncSource(JIZ)V

    goto :goto_0
.end method

.method public fetchMailItem(JLjava/lang/String;Ljava/lang/String;IJIZ)I
    .locals 10
    .parameter "accountId"
    .parameter "collId"
    .parameter "uid"
    .parameter "type"
    .parameter "truncationSize"
    .parameter "AllOrNone"
    .parameter "globalMail"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    const/4 v0, 0x0

    .line 1201
    :goto_0
    return v0

    .line 1200
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive:fetchMailItem(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 1201
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/htc/android/mail/eassvc/EASAppSvc;->fetchMailItem(JLjava/lang/String;Ljava/lang/String;IJIZ)I

    move-result v0

    goto :goto_0
.end method

.method public getAccountCount()I
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    const/4 v0, 0x0

    .line 985
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getAccountCount()I

    move-result v0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;)J
    .locals 2
    .parameter "accountName"

    .prologue
    .line 893
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    const-wide/16 v0, -0x1

    .line 896
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getAccountId(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 969
    const/4 v0, 0x0

    .line 971
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    move-result-object v0

    goto :goto_0
.end method

.method public getAttachment(JJLjava/lang/String;Ljava/lang/String;ZI)I
    .locals 9
    .parameter "accountId"
    .parameter "partId"
    .parameter "fileRef"
    .parameter "fileName"
    .parameter "globalAttach"
    .parameter "attachType"

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    const/4 v0, 0x0

    .line 1193
    :goto_0
    return v0

    .line 1192
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive:getAttachment(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getAttachment(JJLjava/lang/String;Ljava/lang/String;ZI)I

    move-result v0

    goto :goto_0
.end method

.method public getDefaultErrorCode()I
    .locals 1

    .prologue
    .line 1124
    const/16 v0, 0x320

    return v0
.end method

.method public getDefaultSyncMailBoxs(J)[Ljava/lang/String;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    const/4 v0, 0x0

    .line 1343
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getDefaultSyncMailBoxs(J)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .locals 1
    .parameter "errorCode"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    .line 1129
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExchangeAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 976
    const/4 v0, 0x0

    .line 978
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getExchangeAccountInfo(J)Lcom/htc/android/mail/eassvc/pim/EASAccountInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getLastSyncInfo(J)Ljava/util/List;
    .locals 1
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/EASLastSyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 910
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getLastSyncInfo(J)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getMailboxList(J)[Lcom/htc/android/mail/eassvc/pim/EASMailbox;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    const/4 v0, 0x0

    .line 1349
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getMailboxList(J)[Lcom/htc/android/mail/eassvc/pim/EASMailbox;

    move-result-object v0

    goto :goto_0
.end method

.method public getMailboxRefreshing(J)Ljava/lang/String;
    .locals 2
    .parameter "accountId"

    .prologue
    const/4 v0, 0x0

    .line 1324
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$900(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1330
    :cond_0
    :goto_0
    return-object v0

    .line 1327
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getMailboxRefreshing(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOof(JLjava/lang/String;)Lcom/htc/android/mail/eassvc/pim/EASOofResult;
    .locals 2
    .parameter "accountId"
    .parameter "bodyType"

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    const/4 v0, 0x0

    .line 1225
    :goto_0
    return-object v0

    .line 1224
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "Receive:getOof()"

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1225
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getOOF(JLjava/lang/String;)Lcom/htc/android/mail/eassvc/pim/EASOofResult;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneStatus()I
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getPhoneStatus()I

    move-result v0

    return v0
.end method

.method public getProgressing()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 989
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$900(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 995
    :cond_0
    :goto_0
    return v0

    .line 992
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 995
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getProgressing()I

    move-result v0

    goto :goto_0
.end method

.method public getProvisionDoc(J)Landroid/os/Bundle;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1277
    const/4 v0, 0x0

    .line 1279
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getProvisionDoc(J)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getScheduleOption(J)I
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1175
    const/4 v0, 0x0

    .line 1177
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getScheduleOption(J)I

    move-result v0

    goto :goto_0
.end method

.method public getServerProtocol(J)D
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    const-wide/high16 v0, 0x4004

    .line 1149
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getServerProtocol(J)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1154
    const/4 v0, 0x0

    .line 1156
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getSyncOptions(J)Lcom/htc/android/mail/eassvc/pim/EASOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1297
    const/4 v0, 0x1

    return v0
.end method

.method public isAnyAccountProvision()Z
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1353
    const/4 v0, 0x0

    .line 1355
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isAnyAccountProvision()Z

    move-result v0

    goto :goto_0
.end method

.method public isAttachDownloading(JLjava/lang/String;)Z
    .locals 1
    .parameter "accountId"
    .parameter "fileReference"

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1091
    const/4 v0, 0x0

    .line 1093
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isAttachDownloading(JLjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isBusy(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1291
    const/4 v0, 0x0

    .line 1293
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isBusy(J)Z

    move-result v0

    goto :goto_0
.end method

.method public isConnWhileRoaming(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1306
    const/4 v0, 0x0

    .line 1308
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isConnWhileRoaming(J)Z

    move-result v0

    goto :goto_0
.end method

.method public isSendingMail(J)Z
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    const/4 v0, 0x0

    .line 1286
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isSendingMail(J)Z

    move-result v0

    goto :goto_0
.end method

.method public isSyncSourceEnabled(JI)Z
    .locals 1
    .parameter "accountId"
    .parameter "srcType"

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #getter for: Lcom/htc/android/mail/eassvc/EASAppSvc;->mInited:Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$900(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 922
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isSyncSourceEnabledFromFile(JI)Z

    move-result v0

    .line 927
    :goto_0
    return v0

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 925
    const/4 v0, 0x0

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isSyncSourceEnabled(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public isSyncSourceRunning(JI)Z
    .locals 1
    .parameter "accountId"
    .parameter "syncSrcType"

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1134
    const/4 v0, 0x0

    .line 1136
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isSyncSourceRunning(JI)Z

    move-result v0

    goto :goto_0
.end method

.method public isTaskFOTA(Ljava/lang/String;)Z
    .locals 1
    .parameter "accountName"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1382
    const/4 v0, 0x0

    .line 1384
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isTaskFOTA(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public meetingResp(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "accountId"
    .parameter "collId"
    .parameter "RequestId"
    .parameter "usrResp"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive:meetingResp(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V

    .line 1209
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->meetingResp(JLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public moveMail(JLcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z
    .locals 2
    .parameter "accountId"
    .parameter "moveItems"

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1214
    const/4 v0, 0x0

    .line 1217
    :goto_0
    return v0

    .line 1216
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "Receive:moveMail()"

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1217
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->moveMail(JLcom/htc/android/mail/eassvc/pim/EASMoveItems;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1100
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    goto :goto_0
.end method

.method public resendSyncEvent(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 904
    :goto_0
    return-void

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->resendSyncEvent(J)V

    goto :goto_0
.end method

.method public resetAdminPolicy()V
    .locals 1

    .prologue
    .line 1374
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1378
    :goto_0
    return-void

    .line 1377
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->resetAdminPolicy()V

    goto :goto_0
.end method

.method public searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    .locals 3
    .parameter "accountName"
    .parameter "criteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1360
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1361
    const/4 v1, 0x0

    .line 1370
    :goto_0
    return-object v1

    .line 1365
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->searchGAL(Ljava/lang/String;Ljava/lang/String;Z)Lcom/htc/android/pim/eas/EASGalSearchResult;

    move-result-object v0

    .line 1370
    .local v0, result:Lcom/htc/android/pim/eas/EASGalSearchResult;
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->transferResult(Lcom/htc/android/pim/eas/EASGalSearchResult;)Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;
    invoke-static {v1, v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$1000(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/pim/eas/EASGalSearchResult;)Lcom/htc/android/mail/eassvc/pim/EASGalSearchResult;

    move-result-object v1

    goto :goto_0
.end method

.method public searchGlobalMail(JLcom/htc/android/mail/eassvc/pim/EASMailSearchElement;Z)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;
    .locals 2
    .parameter "accountId"
    .parameter "searchElement"
    .parameter "searchMore"

    .prologue
    .line 1252
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    const/4 v0, 0x0

    .line 1256
    :goto_0
    return-object v0

    .line 1255
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "Receive:searchGlobalMail()"

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1256
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->searchGlobalMail(JLcom/htc/android/mail/eassvc/pim/EASMailSearchElement;Z)Lcom/htc/android/mail/eassvc/pim/EASMailSearchResult;

    move-result-object v0

    goto :goto_0
.end method

.method public sendMail(JILcom/htc/android/mail/eassvc/pim/EASMailSendItem;)V
    .locals 3
    .parameter "accountId"
    .parameter "meetingResp"
    .parameter "item"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1184
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive:sendMail(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p4, Lcom/htc/android/mail/eassvc/pim/EASMailSendItem;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1185
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->sendMail(JILcom/htc/android/mail/eassvc/pim/EASMailSendItem;)V

    goto :goto_0
.end method

.method public setDefaultSyncMailbox(J[Ljava/lang/String;)V
    .locals 1
    .parameter "accountId"
    .parameter "defaultSyncMailbox"

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1338
    :goto_0
    return-void

    .line 1337
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setDefaultSyncMailbox(J[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMailFilterType(JI)V
    .locals 1
    .parameter "accountId"
    .parameter "mailFilterType"

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1164
    :goto_0
    return-void

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setMailFilterType(JI)V

    goto :goto_0
.end method

.method public setOof(JLcom/htc/android/mail/eassvc/pim/EASOofRequest;)I
    .locals 2
    .parameter "accountId"
    .parameter "oofRequest"

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    const/4 v0, -0x1

    .line 1233
    :goto_0
    return v0

    .line 1232
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "Receive:setOof()"

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1233
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setOof(JLcom/htc/android/mail/eassvc/pim/EASOofRequest;)I

    move-result v0

    goto :goto_0
.end method

.method public setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V
    .locals 1
    .parameter "accountId"
    .parameter "options"

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1171
    :goto_0
    return-void

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->setSyncOptions(JLcom/htc/android/mail/eassvc/pim/EASOptions;)V

    goto :goto_0
.end method

.method public startSync(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 936
    :goto_0
    return-void

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->startSync(J)V

    goto :goto_0
.end method

.method public syncCalendar(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncCalendar(JZ)V

    goto :goto_0
.end method

.method public syncContacts(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1010
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncContacts(JZ)V

    goto :goto_0
.end method

.method public syncMail(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1031
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    const-string v1, "Receive:syncMail"

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1032
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncMail(J)V

    goto :goto_0
.end method

.method public syncMailbox(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "accountId"
    .parameter "collId"
    .parameter "parameter"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    :goto_0
    return-void

    .line 1039
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive:syncMail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncMailbox(JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public syncMailboxs(J[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "accountId"
    .parameter "collIdList"
    .parameter "parameter"

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1047
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EASAppSvc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive:syncMail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1048
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncMailboxs(J[Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public syncTasks(JZ)V
    .locals 1
    .parameter "accountId"
    .parameter "blocking"

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1024
    :goto_0
    return-void

    .line 1023
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncTasks(JZ)V

    goto :goto_0
.end method

.method public testServer(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)I
    .locals 1
    .parameter "exAccount"
    .parameter "accountId"

    .prologue
    .line 939
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 940
    const/4 v0, -0x3

    .line 942
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->testServer(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)I

    move-result v0

    goto :goto_0
.end method

.method public unregisterCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->unregisterCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V

    goto :goto_0
.end method

.method public updateAccountInfo(JLcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V
    .locals 1
    .parameter "accountId"
    .parameter "exAccount"

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1143
    :goto_0
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->updateAccountInfo(JLcom/htc/android/mail/eassvc/pim/ExchangeAccount;)V

    goto :goto_0
.end method

.method public updateFolderHierarchy(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    const/4 v1, 0x1

    .line 1117
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    :goto_0
    return-void

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->updateFolderHierarchy(JZZ)I

    goto :goto_0
.end method

.method public waitForSyncComplete(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$5;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForSyncComplete(J)V

    goto :goto_0
.end method

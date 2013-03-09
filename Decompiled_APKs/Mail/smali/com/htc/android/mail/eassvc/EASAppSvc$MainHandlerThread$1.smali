.class Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$1;
.super Ljava/lang/Object;
.source "EASAppSvc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1832
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$1;->this$1:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1834
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v4

    .line 1835
    .local v4, list:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;>;"
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountsId()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1836
    .local v0, accountId:Ljava/lang/Long;
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getExchangeSyncSources(J)Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    move-result-object v2

    .line 1837
    .local v2, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    if-eqz v2, :cond_0

    .line 1838
    const-string v5, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v7, v7, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", deleted="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v7, v7, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hadPasswordPolicy="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->hadPasswordPolicy()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1839
    iget-object v5, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v5, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->hadPasswordPolicy()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1841
    :try_start_0
    const-string v5, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ">>>>>deleteExchangeAccount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v7, v7, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V

    .line 1842
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$1;->this$1:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/htc/android/mail/eassvc/EASAppSvc;->deleteExchangeAccount(JZLcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z

    .line 1843
    const-string v5, "EASAppSvc"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<<<<<deleteExchangeAccount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v7, v7, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v2, v6}, Lcom/htc/android/mail/eassvc/util/EASLog;->i(Ljava/lang/String;Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1844
    :catch_0
    move-exception v1

    .line 1845
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1849
    .end local v0           #accountId:Ljava/lang/Long;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$1;->this$1:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->removeAllRequest()V

    .line 1850
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread$1;->this$1:Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/EASAppSvc$MainHandlerThread;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v5}, Lcom/htc/android/mail/eassvc/EASAppSvc;->stopService()V

    .line 1851
    return-void
.end method

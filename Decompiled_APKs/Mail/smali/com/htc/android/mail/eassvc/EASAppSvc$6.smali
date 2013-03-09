.class Lcom/htc/android/mail/eassvc/EASAppSvc$6;
.super Ljava/lang/Thread;
.source "EASAppSvc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/eassvc/EASAppSvc;->manageDelFailEASAcc()V
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
    .line 2231
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$6;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2233
    const/4 v3, 0x1

    .line 2234
    .local v3, isChooseDeletedAccounts:Z
    new-instance v0, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;-><init>()V

    .line 2235
    .local v0, exDelAccountList:Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$6;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v6, 0x1

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->createExchangeSources(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Z)V
    invoke-static {v5, v0, v6}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$2300(Lcom/htc/android/mail/eassvc/EASAppSvc;Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;Z)V

    .line 2236
    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v4

    .line 2237
    .local v4, vexDelAccountList:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;>;"
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 2238
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 2239
    .local v1, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$6;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    iget-object v6, v1, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-wide v6, v6, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountId:J

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->deleteExchangeAccount(JZLcom/htc/android/mail/eassvc/common/ExchangeSyncSources;)Z

    goto :goto_0

    .line 2242
    .end local v1           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.class Lcom/htc/android/mail/eassvc/EASAppSvc$3;
.super Lcom/htc/android/pim/eas/IEASSvc$Stub;
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
    .line 795
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$3;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-direct {p0}, Lcom/htc/android/pim/eas/IEASSvc$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountList()[Landroid/accounts/Account;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 806
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$3;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v4}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 807
    new-array v4, v6, [Landroid/accounts/Account;

    .line 814
    :goto_0
    return-object v4

    .line 809
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v0, accList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/accounts/Account;>;"
    invoke-static {}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$300()Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 811
    .local v2, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    new-instance v1, Landroid/accounts/Account;

    iget-object v4, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v4, v4, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountName:Ljava/lang/String;

    iget-object v5, v2, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->accountType:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .local v1, account:Landroid/accounts/Account;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 814
    .end local v1           #account:Landroid/accounts/Account;
    .end local v2           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :cond_1
    new-array v4, v6, [Landroid/accounts/Account;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    goto :goto_0
.end method

.method public searchGAL(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/pim/eas/EASGalSearchResult;
    .locals 2
    .parameter "accountName"
    .parameter "criteria"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 798
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$3;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v0}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x0

    .line 801
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$3;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->searchGAL(Ljava/lang/String;Ljava/lang/String;Z)Lcom/htc/android/pim/eas/EASGalSearchResult;

    move-result-object v0

    goto :goto_0
.end method

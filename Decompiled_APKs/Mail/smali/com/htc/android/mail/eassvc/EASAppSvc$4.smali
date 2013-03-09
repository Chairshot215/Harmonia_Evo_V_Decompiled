.class Lcom/htc/android/mail/eassvc/EASAppSvc$4;
.super Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;
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
    .line 818
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-direct {p0}, Lcom/htc/tasklib/source/ITaskSourceProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 822
    const-string v0, "com.htc.android.mail.eas"

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 827
    const-string v0, "@string/exchange_sync"

    return-object v0
.end method

.method public getDrawable()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 832
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportColumns()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 837
    const/16 v0, 0x3f

    .line 840
    .local v0, mask:I
    return v0
.end method

.method public isSyncEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 845
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 846
    const/4 v2, 0x0

    .line 849
    :goto_0
    return v2

    .line 848
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getAccountId(Ljava/lang/String;)J

    move-result-wide v0

    .line 849
    .local v0, accountId:J
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->isSyncSourceEnabled(JI)Z

    move-result v2

    goto :goto_0
.end method

.method public isTimePrecision2Second()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 854
    const/4 v0, 0x0

    return v0
.end method

.method public requestHandleError(Ljava/lang/String;I)V
    .locals 0
    .parameter "account"
    .parameter "arg1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 861
    return-void
.end method

.method public requestSync(Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 865
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 871
    :goto_0
    return-void

    .line 868
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getAccountId(Ljava/lang/String;)J

    move-result-wide v0

    .line 869
    .local v0, accountId:J
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncTasks(JZ)V

    goto :goto_0
.end method

.method public requestSyncV1(Ljava/lang/String;Z)V
    .locals 4
    .parameter "account"
    .parameter "isSyncManually"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 875
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getAccountId(Ljava/lang/String;)J

    move-result-wide v0

    .line 879
    .local v0, accountId:J
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3, p2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->syncTasks(JZZ)V

    goto :goto_0
.end method

.method public stopSync(Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 882
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    #calls: Lcom/htc/android/mail/eassvc/EASAppSvc;->waitForInitComplete()Z
    invoke-static {v2}, Lcom/htc/android/mail/eassvc/EASAppSvc;->access$800(Lcom/htc/android/mail/eassvc/EASAppSvc;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 887
    :goto_0
    return-void

    .line 885
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    invoke-virtual {v2, p1}, Lcom/htc/android/mail/eassvc/EASAppSvc;->getAccountId(Ljava/lang/String;)J

    move-result-wide v0

    .line 886
    .local v0, accountId:J
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/EASAppSvc$4;->this$0:Lcom/htc/android/mail/eassvc/EASAppSvc;

    const/4 v3, 0x4

    invoke-virtual {v2, v0, v1, v3}, Lcom/htc/android/mail/eassvc/EASAppSvc;->cancelSyncSource(JI)V

    goto :goto_0
.end method

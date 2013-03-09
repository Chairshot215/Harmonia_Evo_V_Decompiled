.class Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;
.super Ljava/lang/Thread;
.source "EASClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteAccountThread"
.end annotation


# instance fields
.field endMessage:Landroid/os/Message;

.field private mIsRunning:Z

.field svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASClient;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 1
    .parameter

    .prologue
    .line 1199
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1200
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASClient;->access$000(Lcom/htc/android/mail/easclient/EASClient;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 1201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/easclient/EASClient;Lcom/htc/android/mail/easclient/EASClient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1199
    invoke-direct {p0, p1}, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;-><init>(Lcom/htc/android/mail/easclient/EASClient;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 1227
    iget-boolean v0, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1205
    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->mIsRunning:Z

    .line 1207
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EASClient"

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v3

    const-string v5, "Delete account start"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1208
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/htc/android/mail/easclient/EASClient;->inDeleteAccount:Z

    .line 1209
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/htc/android/mail/eassvc/pim/IEASService;->deleteExchangeAccount(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1211
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "EASClient"

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->AccountId:J
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASClient;->access$100(Lcom/htc/android/mail/easclient/EASClient;)J

    move-result-wide v3

    const-string v5, "Delete account done."

    invoke-static {v2, v3, v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 1212
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.mail.eas.intent.delete_exchg_account"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    #getter for: Lcom/htc/android/mail/easclient/EASClient;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASClient;->access$1100(Lcom/htc/android/mail/easclient/EASClient;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1214
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->endMessage:Landroid/os/Message;

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->arg1:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1221
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->endMessage:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1222
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->svc:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 1223
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->mIsRunning:Z

    .line 1224
    return-void

    .line 1216
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->endMessage:Landroid/os/Message;

    const/4 v3, -0x1

    iput v3, v2, Landroid/os/Message;->arg1:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setEndMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 1231
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$DeleteAccountThread;->endMessage:Landroid/os/Message;

    .line 1232
    return-void
.end method

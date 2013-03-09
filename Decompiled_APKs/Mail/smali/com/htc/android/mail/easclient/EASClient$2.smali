.class Lcom/htc/android/mail/easclient/EASClient$2;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 242
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 245
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EASClient"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-virtual {v1}, Lcom/htc/android/mail/easclient/EASClient;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    const-string v1, "EASClient"

    const-string v2, "EASClient finish"

    invoke-static {v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v2

    #setter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v1, v2}, Lcom/htc/android/mail/easclient/EASClient;->access$002(Lcom/htc/android/mail/easclient/EASClient;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 252
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/EASClient$2$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/EASClient$2$1;-><init>(Lcom/htc/android/mail/easclient/EASClient$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 276
    .local v0, initThread:Ljava/lang/Thread;
    const-string v1, "EASClientInit"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 281
    invoke-static {}, Lcom/htc/android/mail/easclient/EASClient;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EASClient"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASClient$2;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/easclient/EASClient;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/EASClient;->access$002(Lcom/htc/android/mail/easclient/EASClient;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 285
    return-void
.end method

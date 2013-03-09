.class Lcom/htc/android/mail/easclient/OutOfOffice$1;
.super Ljava/lang/Object;
.source "OutOfOffice.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/OutOfOffice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/OutOfOffice;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/OutOfOffice;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OutOfOffice"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v1

    const-string v3, "onServiceConnected"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "OutOfOffice"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v1

    const-string v3, "OutOfOffice finish"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 112
    :goto_0
    return-void

    .line 105
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$202(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 106
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/OutOfOffice$1$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/OutOfOffice$1$1;-><init>(Lcom/htc/android/mail/easclient/OutOfOffice$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->DEBUG:Z
    invoke-static {v0}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$000(Lcom/htc/android/mail/easclient/OutOfOffice;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OutOfOffice"

    iget-object v1, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    #getter for: Lcom/htc/android/mail/easclient/OutOfOffice;->accountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$100(Lcom/htc/android/mail/easclient/OutOfOffice;)J

    move-result-wide v1

    const-string v3, "onServiceDisconnected"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/OutOfOffice$1;->this$0:Lcom/htc/android/mail/easclient/OutOfOffice;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/easclient/OutOfOffice;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/OutOfOffice;->access$202(Lcom/htc/android/mail/easclient/OutOfOffice;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 117
    return-void
.end method

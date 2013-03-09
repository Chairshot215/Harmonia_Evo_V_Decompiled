.class Lcom/htc/android/mail/easclient/EASSetting$1;
.super Ljava/lang/Object;
.source "EASSetting.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "className"
    .parameter "service"

    .prologue
    .line 139
    invoke-static {}, Lcom/htc/android/mail/easclient/EASSetting;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASSetting;->access$100(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v1

    const-string v3, "onServiceConnected"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASSetting;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASSetting;->access$100(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: activity is already finish."

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    #setter for: Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/EASSetting;->access$302(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/easclient/EASSetting$1$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/easclient/EASSetting$1$1;-><init>(Lcom/htc/android/mail/easclient/EASSetting$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "className"

    .prologue
    .line 186
    invoke-static {}, Lcom/htc/android/mail/easclient/EASSetting;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASSetting;->access$100(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mAccountId:J
    invoke-static {v1}, Lcom/htc/android/mail/easclient/EASSetting;->access$200(Lcom/htc/android/mail/easclient/EASSetting;)J

    move-result-wide v1

    const-string v3, "onServiceDisconnected"

    invoke-static {v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$1;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/mail/easclient/EASSetting;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;
    invoke-static {v0, v1}, Lcom/htc/android/mail/easclient/EASSetting;->access$302(Lcom/htc/android/mail/easclient/EASSetting;Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 190
    return-void
.end method

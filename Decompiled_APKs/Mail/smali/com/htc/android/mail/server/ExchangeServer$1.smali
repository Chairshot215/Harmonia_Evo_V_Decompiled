.class final Lcom/htc/android/mail/server/ExchangeServer$1;
.super Ljava/lang/Object;
.source "ExchangeServer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/server/ExchangeServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "className"
    .parameter "service"

    .prologue
    .line 68
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ExchangeServer"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v1

    sput-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/android/mail/server/ExchangeServer$1$1;

    invoke-direct {v1, p0}, Lcom/htc/android/mail/server/ExchangeServer$1$1;-><init>(Lcom/htc/android/mail/server/ExchangeServer$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    .local v0, serviceConnect:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 84
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 86
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ExchangeServer"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 88
    return-void
.end method

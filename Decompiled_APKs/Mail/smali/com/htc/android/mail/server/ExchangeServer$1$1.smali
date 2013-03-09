.class Lcom/htc/android/mail/server/ExchangeServer$1$1;
.super Ljava/lang/Object;
.source "ExchangeServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/server/ExchangeServer$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/server/ExchangeServer$1;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/server/ExchangeServer$1;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/android/mail/server/ExchangeServer$1$1;->this$0:Lcom/htc/android/mail/server/ExchangeServer$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$100()Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    :try_start_0
    sget-object v1, Lcom/htc/android/mail/server/ExchangeServer;->mService:Lcom/htc/android/mail/eassvc/pim/IEASService;

    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$100()Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/android/mail/eassvc/pim/IEASService;->registerCallback(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/android/mail/server/ExchangeServer;->access$102(Lcom/htc/android/mail/eassvc/pim/EASEventCallback;)Lcom/htc/android/mail/eassvc/pim/EASEventCallback;

    .line 80
    :cond_0
    invoke-static {}, Lcom/htc/android/mail/server/ExchangeServer;->access$200()Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 81
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

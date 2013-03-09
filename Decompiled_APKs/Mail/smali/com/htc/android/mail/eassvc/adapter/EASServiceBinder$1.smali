.class final Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder$1;
.super Ljava/lang/Object;
.source "EASServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 39
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EASServiceBinder"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-static {p2}, Lcom/htc/android/mail/eassvc/pim/IEASService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->access$102(Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 41
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->access$200()Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->access$302(Z)Z

    .line 44
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EASServiceBinder"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/android/mail/eassvc/adapter/EASServiceBinder;->access$102(Lcom/htc/android/mail/eassvc/pim/IEASService;)Lcom/htc/android/mail/eassvc/pim/IEASService;

    .line 49
    return-void
.end method

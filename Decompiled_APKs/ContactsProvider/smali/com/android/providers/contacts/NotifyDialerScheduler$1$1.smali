.class Lcom/android/providers/contacts/NotifyDialerScheduler$1$1;
.super Ljava/lang/Object;
.source "NotifyDialerScheduler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/NotifyDialerScheduler$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/contacts/NotifyDialerScheduler$1;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/NotifyDialerScheduler$1;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1$1;->this$1:Lcom/android/providers/contacts/NotifyDialerScheduler$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 79
    const-string v0, "NotifyDialerScheduler"

    const-string v1, "DialerService connected !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1$1;->this$1:Lcom/android/providers/contacts/NotifyDialerScheduler$1;

    iget-object v0, v0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-static {p2}, Lcom/htc/service/dialer/IDialerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/dialer/IDialerService;

    move-result-object v1

    #setter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;
    invoke-static {v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$102(Lcom/android/providers/contacts/NotifyDialerScheduler;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;

    .line 82
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 86
    const-string v0, "NotifyDialerScheduler"

    const-string v1, "DialerService disconnected !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1$1;->this$1:Lcom/android/providers/contacts/NotifyDialerScheduler$1;

    iget-object v0, v0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;
    invoke-static {v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$102(Lcom/android/providers/contacts/NotifyDialerScheduler;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;

    .line 89
    return-void
.end method

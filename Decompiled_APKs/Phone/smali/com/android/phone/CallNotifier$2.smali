.class Lcom/android/phone/CallNotifier$2;
.super Ljava/lang/Object;
.source "CallNotifier.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallNotifier;->bindDialerService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .parameter

    .prologue
    .line 3201
    iput-object p1, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 3204
    const-string v0, "CallNotifier"

    const-string v1, "DialerService connected !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3206
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    invoke-static {p2}, Lcom/htc/service/dialer/IDialerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/htc/service/dialer/IDialerService;

    move-result-object v1

    #setter for: Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$1502(Lcom/android/phone/CallNotifier;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;

    .line 3207
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 3211
    const-string v0, "CallNotifier"

    const-string v1, "DialerService disconnected !"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    iget-object v0, p0, Lcom/android/phone/CallNotifier$2;->this$0:Lcom/android/phone/CallNotifier;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/CallNotifier;->mDialerSrv:Lcom/htc/service/dialer/IDialerService;
    invoke-static {v0, v1}, Lcom/android/phone/CallNotifier;->access$1502(Lcom/android/phone/CallNotifier;Lcom/htc/service/dialer/IDialerService;)Lcom/htc/service/dialer/IDialerService;

    .line 3214
    return-void
.end method

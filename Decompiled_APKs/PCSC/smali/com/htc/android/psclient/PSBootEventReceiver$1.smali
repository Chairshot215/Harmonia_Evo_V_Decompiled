.class Lcom/htc/android/psclient/PSBootEventReceiver$1;
.super Ljava/lang/Thread;
.source "PSBootEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/psclient/PSBootEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/PSBootEventReceiver;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/PSBootEventReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/htc/android/psclient/PSBootEventReceiver$1;->this$0:Lcom/htc/android/psclient/PSBootEventReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 28
    const-string v0, "PSBootEventReceiver"

    const-string v1, "Start Connect_to_PC service."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/htc/android/psclient/PSBootEventReceiver$1;->this$0:Lcom/htc/android/psclient/PSBootEventReceiver;

    #getter for: Lcom/htc/android/psclient/PSBootEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/android/psclient/PSBootEventReceiver;->access$000(Lcom/htc/android/psclient/PSBootEventReceiver;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/htc/android/psclient/PSBootEventReceiver$1;->this$0:Lcom/htc/android/psclient/PSBootEventReceiver;

    #getter for: Lcom/htc/android/psclient/PSBootEventReceiver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/psclient/PSBootEventReceiver;->access$000(Lcom/htc/android/psclient/PSBootEventReceiver;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/htc/android/psclient/ConnectToPCService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    .line 31
    iget-object v0, p0, Lcom/htc/android/psclient/PSBootEventReceiver$1;->this$0:Lcom/htc/android/psclient/PSBootEventReceiver;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/psclient/PSBootEventReceiver;->UpdateHDMIPlugStatus(Z)V
    invoke-static {v0, v1}, Lcom/htc/android/psclient/PSBootEventReceiver;->access$100(Lcom/htc/android/psclient/PSBootEventReceiver;Z)V

    .line 33
    :cond_0
    return-void
.end method

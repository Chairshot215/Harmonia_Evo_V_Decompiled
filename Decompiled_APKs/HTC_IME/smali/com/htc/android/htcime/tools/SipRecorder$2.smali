.class Lcom/htc/android/htcime/tools/SipRecorder$2;
.super Landroid/content/BroadcastReceiver;
.source "SipRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/tools/SipRecorder;->receiverRegister()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/tools/SipRecorder;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/tools/SipRecorder;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/htc/android/htcime/tools/SipRecorder$2;->this$0:Lcom/htc/android/htcime/tools/SipRecorder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder$2;->this$0:Lcom/htc/android/htcime/tools/SipRecorder;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tools/SipRecorder;->sipRecorderDone()V

    .line 99
    iget-object v0, p0, Lcom/htc/android/htcime/tools/SipRecorder$2;->this$0:Lcom/htc/android/htcime/tools/SipRecorder;

    invoke-virtual {v0}, Lcom/htc/android/htcime/tools/SipRecorder;->finish()V

    .line 101
    :cond_0
    return-void
.end method

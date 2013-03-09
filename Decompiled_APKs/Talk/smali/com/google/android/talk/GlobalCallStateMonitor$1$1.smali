.class Lcom/google/android/talk/GlobalCallStateMonitor$1$1;
.super Ljava/lang/Object;
.source "GlobalCallStateMonitor.java"

# interfaces
.implements Lcom/google/android/talk/videochat/CallTaskDispatcher$CallTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/GlobalCallStateMonitor$1;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/GlobalCallStateMonitor$1;


# direct methods
.method constructor <init>(Lcom/google/android/talk/GlobalCallStateMonitor$1;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/android/talk/GlobalCallStateMonitor$1$1;->this$1:Lcom/google/android/talk/GlobalCallStateMonitor$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runTask(Lcom/google/android/videochat/CallSession;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 47
    const-string v0, "Talk:GlobalCallStateMonitor"

    const-string v1, "ending Talk call due to a phone call"

    invoke-static {v0, v1}, Lcom/google/android/videochat/util/LogUtil;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/google/android/talk/GlobalCallStateMonitor$1$1;->this$1:Lcom/google/android/talk/GlobalCallStateMonitor$1;

    iget-object v0, v0, Lcom/google/android/talk/GlobalCallStateMonitor$1;->this$0:Lcom/google/android/talk/GlobalCallStateMonitor;

    #getter for: Lcom/google/android/talk/GlobalCallStateMonitor;->mCurrentCallRemoteBareJid:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/GlobalCallStateMonitor;->access$000(Lcom/google/android/talk/GlobalCallStateMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/videochat/CallSession;->terminateCall(Ljava/lang/String;)Z

    .line 49
    return-void
.end method

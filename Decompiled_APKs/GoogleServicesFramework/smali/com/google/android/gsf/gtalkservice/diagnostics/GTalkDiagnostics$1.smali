.class Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;
.super Ljava/lang/Object;
.source "GTalkDiagnostics.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 84
    const-string v1, "GTalkDiag"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GTalkDiag"

    const-string v2, "Connected to GTalkService."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    invoke-static {p2}, Lcom/google/android/gtalkservice/IGTalkService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gtalkservice/IGTalkService;

    move-result-object v2

    #setter for: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$202(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 87
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    #calls: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->initSession()Z
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$300(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Z

    .line 88
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    const/4 v2, 0x1

    #calls: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->refresh(Z)V
    invoke-static {v1, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$000(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Z)V

    .line 91
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 92
    .local v0, refresh:Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 93
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    #getter for: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$100(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 98
    const-string v0, "GTalkDiag"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GTalkDiag"

    const-string v1, "Disconnected from GTalkService."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    #getter for: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mServiceDump:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$400(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0801a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    #setter for: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkService:Lcom/google/android/gtalkservice/IGTalkService;
    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$202(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gtalkservice/IGTalkService;)Lcom/google/android/gtalkservice/IGTalkService;

    .line 101
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    #setter for: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mGTalkConnection:Lcom/google/android/gtalkservice/IGTalkConnection;
    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$502(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gtalkservice/IGTalkConnection;)Lcom/google/android/gtalkservice/IGTalkConnection;

    .line 102
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    #setter for: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mImSession:Lcom/google/android/gtalkservice/IImSession;
    invoke-static {v0, v2}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$602(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gtalkservice/IImSession;)Lcom/google/android/gtalkservice/IImSession;

    .line 103
    return-void
.end method

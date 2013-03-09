.class final Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;
.super Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;
.source "GTalkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;


# direct methods
.method private constructor <init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    invoke-direct {p0}, Lcom/google/android/gtalkservice/IConnectionStateListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;-><init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)V

    return-void
.end method


# virtual methods
.method public connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "error"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 68
    const-string v0, "GTalkDiag"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "GTalkDiag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    #getter for: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$100(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener$1;-><init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method

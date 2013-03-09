.class Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener$1;
.super Ljava/lang/Object;
.source "GTalkDiagnostics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;->connectionStateChanged(Lcom/google/android/gtalkservice/ConnectionState;Lcom/google/android/gtalkservice/ConnectionError;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener$1;->this$1:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener$1;->this$1:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;

    iget-object v0, v0, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics$MyConnectionListener;->this$0:Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;

    const/4 v1, 0x0

    #calls: Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->refresh(Z)V
    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;->access$000(Lcom/google/android/gsf/gtalkservice/diagnostics/GTalkDiagnostics;Z)V

    .line 75
    return-void
.end method

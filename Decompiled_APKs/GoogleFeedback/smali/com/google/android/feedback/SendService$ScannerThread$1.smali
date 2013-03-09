.class Lcom/google/android/feedback/SendService$ScannerThread$1;
.super Ljava/lang/Object;
.source "SendService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/feedback/SendService$ScannerThread;->notifyThreadFinished(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/feedback/SendService$ScannerThread;

.field final synthetic val$allReportsSent:Z

.field final synthetic val$networkError:Z


# direct methods
.method constructor <init>(Lcom/google/android/feedback/SendService$ScannerThread;ZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/google/android/feedback/SendService$ScannerThread$1;->this$1:Lcom/google/android/feedback/SendService$ScannerThread;

    iput-boolean p2, p0, Lcom/google/android/feedback/SendService$ScannerThread$1;->val$networkError:Z

    iput-boolean p3, p0, Lcom/google/android/feedback/SendService$ScannerThread$1;->val$allReportsSent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/feedback/SendService$ScannerThread$1;->this$1:Lcom/google/android/feedback/SendService$ScannerThread;

    iget-object v0, v0, Lcom/google/android/feedback/SendService$ScannerThread;->this$0:Lcom/google/android/feedback/SendService;

    iget-boolean v1, p0, Lcom/google/android/feedback/SendService$ScannerThread$1;->val$networkError:Z

    iget-boolean v2, p0, Lcom/google/android/feedback/SendService$ScannerThread$1;->val$allReportsSent:Z

    #calls: Lcom/google/android/feedback/SendService;->onThreadFinished(ZZ)V
    invoke-static {v0, v1, v2}, Lcom/google/android/feedback/SendService;->access$100(Lcom/google/android/feedback/SendService;ZZ)V

    .line 263
    return-void
.end method

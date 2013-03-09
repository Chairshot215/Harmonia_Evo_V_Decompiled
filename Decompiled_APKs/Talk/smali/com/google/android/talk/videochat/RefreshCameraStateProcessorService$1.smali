.class Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService$1;
.super Ljava/lang/Object;
.source "RefreshCameraStateProcessorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;->onBootCompleted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;

.field final synthetic val$startId:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService$1;->this$0:Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;

    iput p2, p0, Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService$1;->val$startId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService$1;->this$0:Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;

    iget v1, p0, Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService$1;->val$startId:I

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/RefreshCameraStateProcessorService;->stopSelf(I)V

    .line 54
    return-void
.end method

.class Lcom/android/facelock/FaceLockService$2;
.super Ljava/lang/Object;
.source "FaceLockService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/facelock/FaceLockService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/facelock/FaceLockService;


# direct methods
.method constructor <init>(Lcom/android/facelock/FaceLockService;)V
    .locals 0
    .parameter

    .prologue
    .line 614
    iput-object p1, p0, Lcom/android/facelock/FaceLockService$2;->this$0:Lcom/android/facelock/FaceLockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 617
    invoke-static {}, Lcom/android/facelock/FaceLockService;->access$400()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$2;->this$0:Lcom/android/facelock/FaceLockService;

    const/4 v2, 0x1

    #setter for: Lcom/android/facelock/FaceLockService;->mDone:Z
    invoke-static {v0, v2}, Lcom/android/facelock/FaceLockService;->access$502(Lcom/android/facelock/FaceLockService;Z)Z

    .line 619
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$2;->this$0:Lcom/android/facelock/FaceLockService;

    invoke-virtual {v0}, Lcom/android/facelock/FaceLockService;->interruptThread()V

    .line 621
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$2;->this$0:Lcom/android/facelock/FaceLockService;

    #calls: Lcom/android/facelock/FaceLockService;->startShutdown()V
    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$600(Lcom/android/facelock/FaceLockService;)V

    .line 622
    return-void

    .line 619
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

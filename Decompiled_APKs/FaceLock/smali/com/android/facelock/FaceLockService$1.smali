.class Lcom/android/facelock/FaceLockService$1;
.super Ljava/lang/Thread;
.source "FaceLockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/facelock/FaceLockService;->initializeIfNecessary()V
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
    .line 539
    iput-object p1, p0, Lcom/android/facelock/FaceLockService$1;->this$0:Lcom/android/facelock/FaceLockService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 542
    invoke-static {}, Lcom/android/facelock/FaceLockService;->access$000()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/facelock/FaceLockService$1;->this$0:Lcom/android/facelock/FaceLockService;

    invoke-virtual {v1}, Lcom/android/facelock/FaceLockService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/facelock/FaceLockService$1;->this$0:Lcom/android/facelock/FaceLockService;

    #calls: Lcom/android/facelock/FaceLockService;->getFilesPath()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/facelock/FaceLockService;->access$100(Lcom/android/facelock/FaceLockService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/facelockutil/FaceLockUtil;->initialize(ZLandroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$002(Z)Z

    .line 554
    :cond_0
    invoke-static {}, Lcom/android/facelock/FaceLockService;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 555
    const-string v0, "FaceLockService"

    const-string v1, "JNI library Initialization failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$1;->this$0:Lcom/android/facelock/FaceLockService;

    sget-object v1, Lcom/android/facelock/FaceLockService$InitializeState;->INITIALIZE_FAILED:Lcom/android/facelock/FaceLockService$InitializeState;

    #calls: Lcom/android/facelock/FaceLockService;->displayIfInitializationError(Lcom/android/facelock/FaceLockService$InitializeState;)V
    invoke-static {v0, v1}, Lcom/android/facelock/FaceLockService;->access$200(Lcom/android/facelock/FaceLockService;Lcom/android/facelock/FaceLockService$InitializeState;)V

    .line 560
    :goto_0
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/facelock/FaceLockService$1;->this$0:Lcom/android/facelock/FaceLockService;

    #calls: Lcom/android/facelock/FaceLockService;->loadGallery()V
    invoke-static {v0}, Lcom/android/facelock/FaceLockService;->access$300(Lcom/android/facelock/FaceLockService;)V

    goto :goto_0
.end method

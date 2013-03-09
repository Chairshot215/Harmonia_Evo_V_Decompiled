.class Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConnectionStateListener"
.end annotation


# instance fields
.field private telephony:Landroid/telephony/TelephonyManager;

.field final synthetic this$0:Lcom/google/android/apps/uploader/UploadService;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/uploader/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 522
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->this$0:Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/uploader/UploadService;Lcom/google/android/apps/uploader/UploadService$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 522
    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;-><init>(Lcom/google/android/apps/uploader/UploadService;)V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 535
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v0, 0x1

    .line 536
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->this$0:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v1

    .line 537
    :try_start_0
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->dataConnected:Z
    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->access$700(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #setter for: Lcom/google/android/apps/uploader/UploadService;->dataConnected:Z
    invoke-static {v2, v0}, Lcom/google/android/apps/uploader/UploadService;->access$702(Lcom/google/android/apps/uploader/UploadService;Z)Z

    .line 539
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->dataConnected:Z
    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->access$700(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 540
    const-string v0, "MediaUploader"

    const-string v2, "Data connection came back, resuming"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->this$0:Lcom/google/android/apps/uploader/UploadService;

    #getter for: Lcom/google/android/apps/uploader/UploadService;->retryPolicy:Lcom/google/android/apps/uploader/RetryPolicy;
    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->access$400(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/RetryPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/RetryPolicy;->resetAndOpen()V

    .line 546
    :cond_0
    :goto_1
    monitor-exit v1

    .line 547
    return-void

    .line 535
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 543
    :cond_2
    const-string v0, "MediaUploader"

    const-string v2, "Data connection dropped"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 546
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 527
    const-string v0, "MediaUploader"

    const-string v1, "Registering DataConnectionStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->this$0:Lcom/google/android/apps/uploader/UploadService;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->telephony:Landroid/telephony/TelephonyManager;

    .line 529
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->telephony:Landroid/telephony/TelephonyManager;

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 530
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->this$0:Lcom/google/android/apps/uploader/UploadService;

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService$DataConnectionStateListener;->telephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    #setter for: Lcom/google/android/apps/uploader/UploadService;->dataConnected:Z
    invoke-static {v0, v1}, Lcom/google/android/apps/uploader/UploadService;->access$702(Lcom/google/android/apps/uploader/UploadService;Z)Z

    .line 531
    return-void

    .line 530
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.class Lcom/htc/htcMessageUploader/UploadMessageService$ScheduleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcMessageUploader/UploadMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScheduleChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcMessageUploader/UploadMessageService;


# direct methods
.method private constructor <init>(Lcom/htc/htcMessageUploader/UploadMessageService;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ScheduleChangeReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcMessageUploader/UploadMessageService;Lcom/htc/htcMessageUploader/UploadMessageService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 178
    invoke-direct {p0, p1}, Lcom/htc/htcMessageUploader/UploadMessageService$ScheduleChangeReceiver;-><init>(Lcom/htc/htcMessageUploader/UploadMessageService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 181
    sget-boolean v0, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "htcMessageUploader"

    const-string v1, "[UploadMessageService] ScheduleChangeReceiver::onReceive()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_0
    const-string v0, "scheduleCmd"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ScheduleChangeReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    #calls: Lcom/htc/htcMessageUploader/UploadMessageService;->scheduleUpload()V
    invoke-static {v0}, Lcom/htc/htcMessageUploader/UploadMessageService;->access$400(Lcom/htc/htcMessageUploader/UploadMessageService;)V

    .line 189
    :cond_1
    :goto_0
    return-void

    .line 185
    :cond_2
    const-string v0, "scheduleCmd"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessageService$ScheduleChangeReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    #calls: Lcom/htc/htcMessageUploader/UploadMessageService;->cancelSchedule()V
    invoke-static {v0}, Lcom/htc/htcMessageUploader/UploadMessageService;->access$500(Lcom/htc/htcMessageUploader/UploadMessageService;)V

    goto :goto_0
.end method

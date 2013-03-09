.class Lcom/htc/htcMessageUploader/UploadMessageService$SendScheduleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadMessageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htcMessageUploader/UploadMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendScheduleReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htcMessageUploader/UploadMessageService;


# direct methods
.method private constructor <init>(Lcom/htc/htcMessageUploader/UploadMessageService;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/htc/htcMessageUploader/UploadMessageService$SendScheduleReceiver;->this$0:Lcom/htc/htcMessageUploader/UploadMessageService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/htcMessageUploader/UploadMessageService;Lcom/htc/htcMessageUploader/UploadMessageService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Lcom/htc/htcMessageUploader/UploadMessageService$SendScheduleReceiver;-><init>(Lcom/htc/htcMessageUploader/UploadMessageService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 196
    sget-boolean v1, Lcom/htc/htcMessageUploader/UploadMessageReceiver;->LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "htcMessageUploader"

    const-string v2, "[UploadMessageService] Send schedule intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.checkin.FOTA_UPLOAD_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, schedIntent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

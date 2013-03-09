.class Lcom/google/android/gsf/checkin/CheckinService$1;
.super Lcom/google/android/gsf/checkin/CheckinTask;
.source "CheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/CheckinService;->launchTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/checkin/CheckinService;

.field final synthetic val$lastTriggerCount:I


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/CheckinService;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    iput p2, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->val$lastTriggerCount:I

    invoke-direct {p0}, Lcom/google/android/gsf/checkin/CheckinTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/common/io/protocol/ProtoBuf;
    .locals 3
    .parameter "params"

    .prologue
    .line 228
    const-string v1, "CheckinService"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "CheckinService"

    const-string v2, "task doInBackground"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    const/4 v0, 0x0

    .line 232
    .local v0, response:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    #calls: Lcom/google/android/gsf/checkin/CheckinService;->checkSchedule()Z
    invoke-static {v1}, Lcom/google/android/gsf/checkin/CheckinService;->access$100(Lcom/google/android/gsf/checkin/CheckinService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 233
    const-string v1, "CheckinService"

    const-string v2, "Preparing to send checkin request"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    invoke-static {v1}, Lcom/google/android/gsf/checkin/EventLogService;->captureLogs(Landroid/content/Context;)V

    .line 235
    invoke-super {p0, p1}, Lcom/google/android/gsf/checkin/CheckinTask;->doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    #calls: Lcom/google/android/gsf/checkin/CheckinService;->handleResponse(Lcom/google/common/io/protocol/ProtoBuf;)V
    invoke-static {v1, v0}, Lcom/google/android/gsf/checkin/CheckinService;->access$200(Lcom/google/android/gsf/checkin/CheckinService;Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 237
    if-eqz v0, :cond_1

    .line 238
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/android/gsf/checkin/CheckinService;->access$302(Z)Z

    goto :goto_0

    .line 241
    :cond_2
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, [Lcom/google/android/gsf/checkin/CheckinTask$Params;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/CheckinService$1;->doInBackground([Lcom/google/android/gsf/checkin/CheckinTask$Params;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 3
    .parameter "response"

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    const/4 v1, 0x0

    #setter for: Lcom/google/android/gsf/checkin/CheckinService;->mTask:Lcom/google/android/gsf/checkin/CheckinTask;
    invoke-static {v0, v1}, Lcom/google/android/gsf/checkin/CheckinService;->access$402(Lcom/google/android/gsf/checkin/CheckinService;Lcom/google/android/gsf/checkin/CheckinTask;)Lcom/google/android/gsf/checkin/CheckinTask;

    .line 247
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    #getter for: Lcom/google/android/gsf/checkin/CheckinService;->mTaskTriggerCount:I
    invoke-static {v0}, Lcom/google/android/gsf/checkin/CheckinService;->access$500(Lcom/google/android/gsf/checkin/CheckinService;)I

    move-result v0

    iget v1, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->val$lastTriggerCount:I

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.checkin.CHECKIN_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gsf/checkin/CheckinService;->sendBroadcast(Landroid/content/Intent;)V

    .line 249
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    invoke-virtual {v0}, Lcom/google/android/gsf/checkin/CheckinService;->stopSelf()V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/checkin/CheckinService$1;->this$0:Lcom/google/android/gsf/checkin/CheckinService;

    #calls: Lcom/google/android/gsf/checkin/CheckinService;->launchTask()V
    invoke-static {v0}, Lcom/google/android/gsf/checkin/CheckinService;->access$600(Lcom/google/android/gsf/checkin/CheckinService;)V

    goto :goto_0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, Lcom/google/common/io/protocol/ProtoBuf;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/checkin/CheckinService$1;->onPostExecute(Lcom/google/common/io/protocol/ProtoBuf;)V

    return-void
.end method

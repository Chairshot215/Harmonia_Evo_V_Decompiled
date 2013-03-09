.class Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/providers/uploads/uploadUI/UploadsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;


# direct methods
.method constructor <init>(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    .line 302
    const-string v6, "message_file_id"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 303
    .local v0, fid:I
    if-ltz v0, :cond_0

    .line 304
    const-string v6, "message_status_change_time"

    const-wide/16 v7, 0x0

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 306
    .local v3, time:J
    const-string v6, "message_file_id"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 307
    .local v1, id:I
    const-string v6, "message_file_status"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 308
    .local v2, status:I
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    invoke-virtual {v6, v2}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->getStatus(I)I

    move-result v2

    .line 309
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    #getter for: Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->LOG_TAG:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->access$000(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", status "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "message_file_status"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v5, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;

    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    invoke-direct {v5, v6, v3, v4, v2}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;-><init>(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;JI)V

    .line 313
    .local v5, tstatus:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    iget-object v6, v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    iget-object v6, v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;

    iget-wide v6, v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;->time:J

    cmp-long v6, v3, v6

    if-lez v6, :cond_1

    .line 315
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    iget-object v6, v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    #getter for: Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->statusHelper:Lcom/htc/providers/uploads/uploadUI/StatusHelper;
    invoke-static {v6}, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->access$100(Lcom/htc/providers/uploads/uploadUI/UploadsObserver;)Lcom/htc/providers/uploads/uploadUI/StatusHelper;

    move-result-object v6

    invoke-virtual {v6, v2, v1}, Lcom/htc/providers/uploads/uploadUI/StatusHelper;->switchStatus(II)Z

    .line 321
    .end local v1           #id:I
    .end local v2           #status:I
    .end local v3           #time:J
    .end local v5           #tstatus:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;
    :cond_0
    :goto_0
    return-void

    .line 317
    .restart local v1       #id:I
    .restart local v2       #status:I
    .restart local v3       #time:J
    .restart local v5       #tstatus:Lcom/htc/providers/uploads/uploadUI/UploadsObserver$TimeStatus;
    :cond_1
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    iget-object v6, v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 318
    iget-object v6, p0, Lcom/htc/providers/uploads/uploadUI/UploadsObserver$StatusReceiver;->this$0:Lcom/htc/providers/uploads/uploadUI/UploadsObserver;

    iget-object v6, v6, Lcom/htc/providers/uploads/uploadUI/UploadsObserver;->FileTimeStamp:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

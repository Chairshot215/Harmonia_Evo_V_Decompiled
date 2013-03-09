.class Lcom/android/mms/ui/RestoreActivity$6$1;
.super Ljava/lang/Thread;
.source "RestoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/RestoreActivity$6;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/RestoreActivity$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/RestoreActivity$6;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v3, 0x67

    const/16 v2, 0x66

    .line 245
    const/4 v1, 0x0

    .line 247
    .local v1, success:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v4, v4, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v4, v4, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v5, v5, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v5, v5, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v4, v4, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v5, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v5, v5, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v5, v5, Lcom/android/mms/ui/RestoreActivity;->mBackupFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/RestoreActivity;->restore(Ljava/lang/String;)Z

    move-result v1

    .line 250
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v5, v5, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #calls: Lcom/android/mms/ui/RestoreActivity;->isDelOldMsgSettingEnabled()Z
    invoke-static {v5}, Lcom/android/mms/ui/RestoreActivity;->access$500(Lcom/android/mms/ui/RestoreActivity;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 251
    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v4, v4, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    #calls: Lcom/android/mms/ui/RestoreActivity;->autoDeleteOldMsg()V
    invoke-static {v4}, Lcom/android/mms/ui/RestoreActivity;->access$600(Lcom/android/mms/ui/RestoreActivity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    if-eqz v1, :cond_1

    .line 258
    .local v2, what:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v3, v3, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v3, v3, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v4, v4, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v4, v4, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    invoke-static {v7}, Lcom/android/mms/ui/RestoreActivity;->access$402(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 261
    :goto_1
    return-void

    .end local v2           #what:I
    :cond_1
    move v2, v3

    .line 257
    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "RestoreActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    if-eqz v1, :cond_2

    .line 258
    .restart local v2       #what:I
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v3, v3, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v3, v3, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v4, v4, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v4, v4, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    invoke-static {v7}, Lcom/android/mms/ui/RestoreActivity;->access$402(Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_1

    .end local v2           #what:I
    :cond_2
    move v2, v3

    .line 257
    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 258
    .restart local v2       #what:I
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v3, v3, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v3, v3, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/mms/ui/RestoreActivity$6$1;->this$1:Lcom/android/mms/ui/RestoreActivity$6;

    iget-object v5, v5, Lcom/android/mms/ui/RestoreActivity$6;->this$0:Lcom/android/mms/ui/RestoreActivity;

    iget-object v5, v5, Lcom/android/mms/ui/RestoreActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 259
    invoke-static {v7}, Lcom/android/mms/ui/RestoreActivity;->access$402(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 260
    throw v4

    .end local v2           #what:I
    :cond_3
    move v2, v3

    .line 257
    goto :goto_3
.end method

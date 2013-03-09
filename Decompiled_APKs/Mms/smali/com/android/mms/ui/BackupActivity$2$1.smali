.class Lcom/android/mms/ui/BackupActivity$2$1;
.super Ljava/lang/Thread;
.source "BackupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/BackupActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/BackupActivity$2;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/BackupActivity$2;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iput-object p2, p0, Lcom/android/mms/ui/BackupActivity$2$1;->val$fileName:Ljava/lang/String;

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

    .line 125
    const/4 v1, 0x0

    .line 127
    .local v1, success:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v4, v4, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v4, v4, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v5, v5, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 128
    iget-object v4, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v4, v4, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v5, p0, Lcom/android/mms/ui/BackupActivity$2$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/BackupActivity;->backup(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    if-eqz v1, :cond_0

    .line 133
    .local v2, what:I
    :goto_0
    iget-object v3, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v3, v3, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v3, v3, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v4, v4, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v4, v4, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    invoke-static {v7}, Lcom/android/mms/ui/BackupActivity;->access$202(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 136
    :goto_1
    return-void

    .end local v2           #what:I
    :cond_0
    move v2, v3

    .line 132
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "BackupActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    if-eqz v1, :cond_1

    .line 133
    .restart local v2       #what:I
    :goto_2
    iget-object v3, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v3, v3, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v3, v3, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v4, v4, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v4, v4, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    invoke-static {v7}, Lcom/android/mms/ui/BackupActivity;->access$202(Ljava/lang/Thread;)Ljava/lang/Thread;

    goto :goto_1

    .end local v2           #what:I
    :cond_1
    move v2, v3

    .line 132
    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 133
    .restart local v2       #what:I
    :goto_3
    iget-object v3, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v3, v3, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v3, v3, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/mms/ui/BackupActivity$2$1;->this$1:Lcom/android/mms/ui/BackupActivity$2;

    iget-object v5, v5, Lcom/android/mms/ui/BackupActivity$2;->this$0:Lcom/android/mms/ui/BackupActivity;

    iget-object v5, v5, Lcom/android/mms/ui/BackupActivity;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 134
    invoke-static {v7}, Lcom/android/mms/ui/BackupActivity;->access$202(Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 135
    throw v4

    .end local v2           #what:I
    :cond_2
    move v2, v3

    .line 132
    goto :goto_3
.end method

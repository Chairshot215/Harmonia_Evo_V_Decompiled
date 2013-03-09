.class Lcom/google/android/gm/provider/MailSync$1;
.super Ljava/io/FilterInputStream;
.source "MailSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailSync;

.field final synthetic val$tempFile:Ljava/lang/String;


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2952
    :try_start_0
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2954
    iget-object v0, p0, Lcom/google/android/gm/provider/MailSync$1;->this$0:Lcom/google/android/gm/provider/MailSync;

    #getter for: Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/google/android/gm/provider/MailSync;->access$000(Lcom/google/android/gm/provider/MailSync;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync$1;->val$tempFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 2956
    return-void

    .line 2954
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gm/provider/MailSync$1;->this$0:Lcom/google/android/gm/provider/MailSync;

    #getter for: Lcom/google/android/gm/provider/MailSync;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/google/android/gm/provider/MailSync;->access$000(Lcom/google/android/gm/provider/MailSync;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gm/provider/MailSync$1;->val$tempFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    throw v0
.end method

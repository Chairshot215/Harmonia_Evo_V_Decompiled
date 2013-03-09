.class Lcom/htc/android/mail/MailCommon$10;
.super Ljava/lang/Object;
.source "MailCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailCommon;->saveToSDAndPlayMedia(Lcom/htc/android/mail/Attachment;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailCommon;

.field final synthetic val$_partId:J

.field final synthetic val$attach:Lcom/htc/android/mail/Attachment;

.field final synthetic val$dstFile:Ljava/io/File;

.field final synthetic val$handler:Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;

.field final synthetic val$isGlobal:Z

.field final synthetic val$sdFileName:Ljava/lang/String;

.field final synthetic val$srcFile:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailCommon;Ljava/io/File;Ljava/io/File;Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;JZLjava/lang/String;Lcom/htc/android/mail/Attachment;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/htc/android/mail/MailCommon$10;->this$0:Lcom/htc/android/mail/MailCommon;

    iput-object p2, p0, Lcom/htc/android/mail/MailCommon$10;->val$srcFile:Ljava/io/File;

    iput-object p3, p0, Lcom/htc/android/mail/MailCommon$10;->val$dstFile:Ljava/io/File;

    iput-object p4, p0, Lcom/htc/android/mail/MailCommon$10;->val$handler:Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;

    iput-wide p5, p0, Lcom/htc/android/mail/MailCommon$10;->val$_partId:J

    iput-boolean p7, p0, Lcom/htc/android/mail/MailCommon$10;->val$isGlobal:Z

    iput-object p8, p0, Lcom/htc/android/mail/MailCommon$10;->val$sdFileName:Ljava/lang/String;

    iput-object p9, p0, Lcom/htc/android/mail/MailCommon$10;->val$attach:Lcom/htc/android/mail/Attachment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 2308
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$srcFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 2309
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/htc/android/mail/MailCommon$10;->val$srcFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 2310
    .local v1, srcChannel:Ljava/nio/channels/FileChannel;
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/htc/android/mail/MailCommon$10;->val$dstFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 2311
    .local v0, dstChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 2312
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 2313
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2324
    .end local v0           #dstChannel:Ljava/nio/channels/FileChannel;
    .end local v1           #srcChannel:Ljava/nio/channels/FileChannel;
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$dstFile:Ljava/io/File;

    if-nez v2, :cond_3

    .line 2325
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MailCommon"

    const-string v3, "save to SD, the file is null"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    :cond_1
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$handler:Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2328
    .local v9, msg:Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 2360
    :goto_0
    return-void

    .line 2315
    .end local v9           #msg:Landroid/os/Message;
    :catch_0
    move-exception v8

    .line 2316
    .local v8, ioe:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write SD fail>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    :cond_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 2319
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$handler:Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2320
    .restart local v9       #msg:Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2333
    .end local v8           #ioe:Ljava/lang/Exception;
    .end local v9           #msg:Landroid/os/Message;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$dstFile:Ljava/io/File;

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    .line 2334
    .local v10, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    .line 2335
    .local v7, fd:Ljava/io/FileDescriptor;
    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 2336
    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2337
    iget-wide v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$_partId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 2339
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$srcFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/android/mail/MailCommon$10;->val$_partId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2342
    .local v13, where:Ljava/lang/String;
    iget-wide v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$_partId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/htc/android/mail/MailCommon$10;->val$isGlobal:Z

    invoke-static {v2, v3, v4}, Lcom/htc/android/mail/MailCommon;->formatMailContentUri(JZ)Landroid/net/Uri;

    move-result-object v11

    .line 2343
    .local v11, updateUri:Landroid/net/Uri;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 2344
    .local v12, values:Landroid/content/ContentValues;
    const-string v2, "_filepath"

    iget-object v3, p0, Lcom/htc/android/mail/MailCommon$10;->val$sdFileName:Ljava/lang/String;

    invoke-virtual {v12, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->this$0:Lcom/htc/android/mail/MailCommon;

    iget-object v2, v2, Lcom/htc/android/mail/MailCommon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v12, v13, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2346
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "MailCommon"

    const-string v3, "update DB complete"

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2347
    :cond_4
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$attach:Lcom/htc/android/mail/Attachment;

    iget-object v3, p0, Lcom/htc/android/mail/MailCommon$10;->val$sdFileName:Ljava/lang/String;

    iput-object v3, v2, Lcom/htc/android/mail/Attachment;->attachPath:Ljava/lang/String;

    .line 2350
    .end local v11           #updateUri:Landroid/net/Uri;
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v13           #where:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$handler:Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/htc/android/mail/MailCommon$10;->val$attach:Lcom/htc/android/mail/Attachment;

    invoke-virtual {v2, v3, v4}, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 2351
    .restart local v9       #msg:Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2353
    .end local v7           #fd:Ljava/io/FileDescriptor;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v6

    .line 2354
    .local v6, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/htc/android/mail/MailCommon;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "MailCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "write file to SD exception>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    :cond_6
    iget-object v2, p0, Lcom/htc/android/mail/MailCommon$10;->val$handler:Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailCommon$SaveToStorageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 2357
    .restart local v9       #msg:Landroid/os/Message;
    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method

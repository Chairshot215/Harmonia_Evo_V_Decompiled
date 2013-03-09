.class Lcom/htc/feedback/PreviewInfoActivity$4;
.super Ljava/lang/Object;
.source "PreviewInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/feedback/PreviewInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/feedback/PreviewInfoActivity;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;


# direct methods
.method constructor <init>(Lcom/htc/feedback/PreviewInfoActivity;Landroid/os/DropBoxManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iput-object p2, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->val$dbox:Landroid/os/DropBoxManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 107
    const/4 v5, 0x0

    .line 108
    .local v5, entry:Landroid/os/DropBoxManager$Entry;
    const/4 v3, 0x0

    .line 109
    .local v3, count:I
    :cond_0
    iget-object v8, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v9, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v9, v9, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v5

    if-nez v5, :cond_3

    .line 110
    iget-object v8, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-boolean v8, v8, Lcom/htc/feedback/PreviewInfoActivity;->destory:Z

    if-eqz v8, :cond_2

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 114
    :cond_2
    const-wide/16 v8, 0x3e8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_1
    add-int/lit8 v3, v3, 0x1

    const/16 v8, 0xc

    if-ne v3, v8, :cond_0

    .line 123
    :cond_3
    iget-object v8, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-boolean v8, v8, Lcom/htc/feedback/PreviewInfoActivity;->destory:Z

    if-nez v8, :cond_1

    .line 126
    if-nez v5, :cond_4

    .line 128
    iget-object v8, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v9, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v9, v9, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v5

    .line 129
    if-nez v5, :cond_4

    .line 130
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cannot get entry from dbox, skip. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :catch_0
    move-exception v4

    .line 116
    .local v4, e:Ljava/lang/InterruptedException;
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Interrupt "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 135
    .end local v4           #e:Ljava/lang/InterruptedException;
    :cond_4
    const/4 v0, 0x0

    .line 137
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    sget-object v9, Lcom/htc/feedback/PreviewInfoActivity;->SEED_GETTER:Lcom/htc/utils/ulog/io/LogStream$SeedGetter;

    invoke-static {v8, v9}, Lcom/htc/utils/ulog/io/LogStream;->concatenateInputStream(Ljava/io/InputStream;Lcom/htc/utils/ulog/io/LogStream$SeedGetter;)Ljava/io/InputStream;

    move-result-object v6

    .line 138
    .local v6, is:Ljava/io/InputStream;
    if-eqz v6, :cond_6

    .line 139
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    move-object v0, v1

    .line 144
    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v8, 0x1388

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 145
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, line:Ljava/lang/String;
    :goto_3
    if-eqz v7, :cond_8

    .line 146
    iget-object v8, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-boolean v8, v8, Lcom/htc/feedback/PreviewInfoActivity;->destory:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v8, :cond_7

    .line 159
    if-eqz v5, :cond_5

    .line 160
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 161
    const/4 v5, 0x0

    .line 163
    :cond_5
    if-eqz v0, :cond_1

    .line 165
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 166
    :catch_1
    move-exception v4

    .line 167
    .local v4, e:Ljava/io/IOException;
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error loading log file. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 141
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #line:Ljava/lang/String;
    :cond_6
    :try_start_3
    iget-object v8, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v9, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v9, v9, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v5

    .line 142
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2

    .line 148
    .restart local v2       #builder:Ljava/lang/StringBuilder;
    .restart local v7       #line:Ljava/lang/String;
    :cond_7
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const/16 v8, 0xa

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 151
    :cond_8
    iget-object v8, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-boolean v8, v8, Lcom/htc/feedback/PreviewInfoActivity;->destory:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v8, :cond_a

    .line 159
    if-eqz v5, :cond_9

    .line 160
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 161
    const/4 v5, 0x0

    .line 163
    :cond_9
    if-eqz v0, :cond_1

    .line 165
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 166
    :catch_2
    move-exception v4

    .line 167
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error loading log file. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 153
    .end local v4           #e:Ljava/io/IOException;
    :cond_a
    :try_start_5
    iget-object v8, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    #getter for: Lcom/htc/feedback/PreviewInfoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/htc/feedback/PreviewInfoActivity;->access$000(Lcom/htc/feedback/PreviewInfoActivity;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    #getter for: Lcom/htc/feedback/PreviewInfoActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/htc/feedback/PreviewInfoActivity;->access$000(Lcom/htc/feedback/PreviewInfoActivity;)Landroid/os/Handler;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_6

    .line 159
    if-eqz v5, :cond_b

    .line 160
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 161
    const/4 v5, 0x0

    .line 163
    :cond_b
    if-eqz v0, :cond_1

    .line 165
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 166
    :catch_3
    move-exception v4

    .line 167
    .restart local v4       #e:Ljava/io/IOException;
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error loading log file. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 154
    .end local v2           #builder:Ljava/lang/StringBuilder;
    .end local v4           #e:Ljava/io/IOException;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #line:Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 155
    .restart local v4       #e:Ljava/io/IOException;
    :try_start_7
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error loading log file. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 159
    if-eqz v5, :cond_c

    .line 160
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 161
    const/4 v5, 0x0

    .line 163
    :cond_c
    if-eqz v0, :cond_1

    .line 165
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 166
    :catch_5
    move-exception v4

    .line 167
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error loading log file. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 156
    .end local v4           #e:Ljava/io/IOException;
    :catch_6
    move-exception v4

    .line 157
    .local v4, e:Ljava/security/GeneralSecurityException;
    :try_start_9
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Security error. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 159
    if-eqz v5, :cond_d

    .line 160
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 161
    const/4 v5, 0x0

    .line 163
    :cond_d
    if-eqz v0, :cond_1

    .line 165
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_0

    .line 166
    :catch_7
    move-exception v4

    .line 167
    .local v4, e:Ljava/io/IOException;
    const-string v8, "PreviewInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "error loading log file. tag:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v10, v10, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 159
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v5, :cond_e

    .line 160
    invoke-virtual {v5}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 161
    const/4 v5, 0x0

    .line 163
    :cond_e
    if-eqz v0, :cond_f

    .line 165
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 168
    :cond_f
    :goto_4
    throw v8

    .line 166
    :catch_8
    move-exception v4

    .line 167
    .restart local v4       #e:Ljava/io/IOException;
    const-string v9, "PreviewInfoActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error loading log file. tag:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-object v11, v11, Lcom/htc/feedback/PreviewInfoActivity;->tag:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/feedback/PreviewInfoActivity$4;->this$0:Lcom/htc/feedback/PreviewInfoActivity;

    iget-wide v11, v11, Lcom/htc/feedback/PreviewInfoActivity;->time:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

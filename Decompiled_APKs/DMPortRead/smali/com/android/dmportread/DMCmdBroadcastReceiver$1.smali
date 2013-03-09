.class Lcom/android/dmportread/DMCmdBroadcastReceiver$1;
.super Ljava/lang/Thread;
.source "DMCmdBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/dmportread/DMCmdBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/dmportread/DMCmdBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/dmportread/DMCmdBroadcastReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;->this$0:Lcom/android/dmportread/DMCmdBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 79
    const/4 v6, 0x0

    .line 80
    .local v6, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 81
    .local v0, bis:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 82
    .local v2, dis:Ljava/io/DataInputStream;
    new-instance v5, Ljava/io/File;

    const-string v11, "/data/data/com.android.dmportread/boot"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v5, file:Ljava/io/File;
    const-wide/16 v11, 0x1388

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V

    .line 85
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 86
    .end local v6           #fis:Ljava/io/FileInputStream;
    .local v7, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 87
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 88
    .end local v2           #dis:Ljava/io/DataInputStream;
    .local v3, dis:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->read()I

    move-result v10

    .line 91
    .local v10, temp:I
    const/16 v11, 0x31

    if-ne v10, v11, :cond_4

    .line 93
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v8, i:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;->this$0:Lcom/android/dmportread/DMCmdBroadcastReceiver;

    #getter for: Lcom/android/dmportread/DMCmdBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/dmportread/DMCmdBroadcastReceiver;->access$000(Lcom/android/dmportread/DMCmdBroadcastReceiver;)Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/android/dmportread/DMPortActivity;

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 95
    const/high16 v11, 0x1000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v11, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;->this$0:Lcom/android/dmportread/DMCmdBroadcastReceiver;

    #getter for: Lcom/android/dmportread/DMCmdBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/dmportread/DMCmdBroadcastReceiver;->access$000(Lcom/android/dmportread/DMCmdBroadcastReceiver;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 120
    .end local v8           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 122
    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 126
    :cond_3
    :goto_1
    const/4 v5, 0x0

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 128
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v10           #temp:I
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_2
    return-void

    .line 98
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v10       #temp:I
    :cond_4
    const/16 v11, 0x32

    if-ne v10, v11, :cond_8

    .line 100
    :try_start_5
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 101
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .restart local v8       #i:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;->this$0:Lcom/android/dmportread/DMCmdBroadcastReceiver;

    #getter for: Lcom/android/dmportread/DMCmdBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/dmportread/DMCmdBroadcastReceiver;->access$000(Lcom/android/dmportread/DMCmdBroadcastReceiver;)Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/android/dmportread/DMPortActivity;

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    const/high16 v11, 0x1000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    iget-object v11, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;->this$0:Lcom/android/dmportread/DMCmdBroadcastReceiver;

    #getter for: Lcom/android/dmportread/DMCmdBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/dmportread/DMCmdBroadcastReceiver;->access$000(Lcom/android/dmportread/DMCmdBroadcastReceiver;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    new-instance v9, Ljava/io/File;

    const-string v11, "/data/data/com.android.dmportread/.setKey"

    invoke-direct {v9, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v9, keyfile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 115
    .end local v8           #i:Landroid/content/Intent;
    .end local v9           #keyfile:Ljava/io/File;
    .end local v10           #temp:I
    :catch_0
    move-exception v4

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 117
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v4, e:Ljava/lang/Exception;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_3
    :try_start_6
    const-string v11, "DMCmdSvs"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " read boot "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 120
    if-eqz v6, :cond_5

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 122
    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 126
    :cond_7
    :goto_4
    const/4 v5, 0x0

    .line 127
    goto :goto_2

    .line 108
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v10       #temp:I
    :cond_8
    const/16 v11, 0x33

    if-ne v10, v11, :cond_0

    .line 110
    :try_start_8
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v8       #i:Landroid/content/Intent;
    iget-object v11, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;->this$0:Lcom/android/dmportread/DMCmdBroadcastReceiver;

    #getter for: Lcom/android/dmportread/DMCmdBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/dmportread/DMCmdBroadcastReceiver;->access$000(Lcom/android/dmportread/DMCmdBroadcastReceiver;)Landroid/content/Context;

    move-result-object v11

    const-class v12, Lcom/android/dmportread/DMPortActivity;

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 112
    const/high16 v11, 0x1000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 113
    iget-object v11, p0, Lcom/android/dmportread/DMCmdBroadcastReceiver$1;->this$0:Lcom/android/dmportread/DMCmdBroadcastReceiver;

    #getter for: Lcom/android/dmportread/DMCmdBroadcastReceiver;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/dmportread/DMCmdBroadcastReceiver;->access$000(Lcom/android/dmportread/DMCmdBroadcastReceiver;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 119
    .end local v8           #i:Landroid/content/Intent;
    .end local v10           #temp:I
    :catchall_0
    move-exception v11

    move-object v2, v3

    .end local v3           #dis:Ljava/io/DataInputStream;
    .restart local v2       #dis:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .line 120
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    :goto_5
    if-eqz v6, :cond_9

    :try_start_9
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 121
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 122
    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 126
    :cond_b
    :goto_6
    const/4 v5, 0x0

    throw v11

    .line 124
    :catch_1
    move-exception v12

    goto :goto_6

    .line 119
    :catchall_1
    move-exception v11

    goto :goto_5

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v11

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_5

    .line 124
    .restart local v4       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v11

    goto :goto_4

    .line 115
    .end local v4           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_3

    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    move-object v6, v7

    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v6       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .line 124
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .end local v2           #dis:Ljava/io/DataInputStream;
    .end local v6           #fis:Ljava/io/FileInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v3       #dis:Ljava/io/DataInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    .restart local v10       #temp:I
    :catch_6
    move-exception v11

    goto/16 :goto_1
.end method

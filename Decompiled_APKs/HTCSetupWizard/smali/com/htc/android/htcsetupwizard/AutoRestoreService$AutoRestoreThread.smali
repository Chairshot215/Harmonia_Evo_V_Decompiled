.class Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;
.super Ljava/lang/Thread;
.source "AutoRestoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/AutoRestoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRestoreThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/AutoRestoreService;


# direct methods
.method private constructor <init>(Lcom/htc/android/htcsetupwizard/AutoRestoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;->this$0:Lcom/htc/android/htcsetupwizard/AutoRestoreService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/htcsetupwizard/AutoRestoreService;Lcom/htc/android/htcsetupwizard/AutoRestoreService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;-><init>(Lcom/htc/android/htcsetupwizard/AutoRestoreService;)V

    return-void
.end method

.method private doAutoRestore(Ljava/lang/ProcessBuilder;Ljava/lang/StringBuilder;)V
    .locals 8
    .parameter "processBuilder"
    .parameter "stringBuilder"

    .prologue
    .line 42
    const/4 v2, 0x0

    .line 44
    .local v2, input:Ljava/io/InputStreamReader;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    .line 45
    .local v5, process:Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 46
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 47
    :goto_1
    :try_start_3
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 49
    .end local v2           #input:Ljava/io/InputStreamReader;
    .local v3, input:Ljava/io/InputStreamReader;
    const/16 v6, 0x200

    :try_start_4
    new-array v0, v6, [C

    .line 50
    .local v0, buf:[C
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    .local v4, num:I
    if-lez v4, :cond_1

    const/4 v6, 0x0

    invoke-virtual {p2, v0, v6, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 51
    .end local v0           #buf:[C
    .end local v4           #num:I
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 52
    .end local v3           #input:Ljava/io/InputStreamReader;
    .end local v5           #process:Ljava/lang/Process;
    .local v1, e:Ljava/lang/Exception;
    .restart local v2       #input:Ljava/io/InputStreamReader;
    :goto_3
    :try_start_5
    const-string v6, "AutoRestoreService"

    const-string v7, "Error running process"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 54
    if-eqz v2, :cond_0

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 56
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    :goto_4
    return-void

    .line 54
    .end local v2           #input:Ljava/io/InputStreamReader;
    .restart local v0       #buf:[C
    .restart local v3       #input:Ljava/io/InputStreamReader;
    .restart local v4       #num:I
    .restart local v5       #process:Ljava/lang/Process;
    :cond_1
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStreamReader;
    .restart local v2       #input:Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v2           #input:Ljava/io/InputStreamReader;
    .restart local v3       #input:Ljava/io/InputStreamReader;
    :catch_1
    move-exception v6

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStreamReader;
    .restart local v2       #input:Ljava/io/InputStreamReader;
    goto :goto_4

    .end local v0           #buf:[C
    .end local v4           #num:I
    .end local v5           #process:Ljava/lang/Process;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_2
    :goto_6
    throw v6

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_6

    .end local v2           #input:Ljava/io/InputStreamReader;
    .restart local v3       #input:Ljava/io/InputStreamReader;
    .restart local v5       #process:Ljava/lang/Process;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStreamReader;
    .restart local v2       #input:Ljava/io/InputStreamReader;
    goto :goto_5

    .line 51
    .end local v5           #process:Ljava/lang/Process;
    :catch_4
    move-exception v1

    goto :goto_3

    .line 46
    .restart local v5       #process:Ljava/lang/Process;
    :catch_5
    move-exception v6

    goto :goto_1

    .line 45
    :catch_6
    move-exception v6

    goto :goto_0

    .end local v2           #input:Ljava/io/InputStreamReader;
    .restart local v0       #buf:[C
    .restart local v3       #input:Ljava/io/InputStreamReader;
    .restart local v4       #num:I
    :cond_3
    move-object v2, v3

    .end local v3           #input:Ljava/io/InputStreamReader;
    .restart local v2       #input:Ljava/io/InputStreamReader;
    goto :goto_4
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 32
    const-string v1, "AutoRestoreService"

    const-string v2, "AutoRestoreThread start!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, restoreSb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "/system/bin/bmgr"

    aput-object v4, v2, v3

    const-string v3, "restore"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "auto"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;->doAutoRestore(Ljava/lang/ProcessBuilder;Ljava/lang/StringBuilder;)V

    .line 37
    const-string v1, "AutoRestoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAutoRestore() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/AutoRestoreService$AutoRestoreThread;->this$0:Lcom/htc/android/htcsetupwizard/AutoRestoreService;

    invoke-virtual {v1}, Lcom/htc/android/htcsetupwizard/AutoRestoreService;->stopSelf()V

    .line 39
    return-void
.end method

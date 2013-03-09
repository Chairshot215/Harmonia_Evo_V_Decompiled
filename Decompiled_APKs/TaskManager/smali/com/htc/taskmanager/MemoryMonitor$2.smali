.class Lcom/htc/taskmanager/MemoryMonitor$2;
.super Ljava/lang/Object;
.source "MemoryMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/taskmanager/MemoryMonitor;->readTotalMemory()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/taskmanager/MemoryMonitor;


# direct methods
.method constructor <init>(Lcom/htc/taskmanager/MemoryMonitor;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/taskmanager/MemoryMonitor$2;->this$0:Lcom/htc/taskmanager/MemoryMonitor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 106
    const-wide/16 v5, 0x0

    .line 109
    .local v5, totalKb:J
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    const-string v9, "cat /proc/meminfo"

    invoke-virtual {v8, v9}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 110
    .local v3, process:Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 112
    .local v4, r:Ljava/io/BufferedReader;
    const/4 v1, 0x1

    .line 113
    .local v1, loop:Z
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, memInfoLine:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 114
    const-string v8, "MemTotal"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 115
    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 116
    .local v7, vals:[Ljava/lang/String;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x2

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-long v5, v8

    .line 117
    const/4 v1, 0x0

    .line 118
    goto :goto_0

    .line 120
    .end local v2           #memInfoLine:Ljava/lang/String;
    .end local v7           #vals:[Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/htc/taskmanager/MemoryMonitor$2;->this$0:Lcom/htc/taskmanager/MemoryMonitor;

    #setter for: Lcom/htc/taskmanager/MemoryMonitor;->mTotalMemoryKb:J
    invoke-static {v8, v5, v6}, Lcom/htc/taskmanager/MemoryMonitor;->access$202(Lcom/htc/taskmanager/MemoryMonitor;J)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v1           #loop:Z
    .end local v3           #process:Ljava/lang/Process;
    .end local v4           #r:Ljava/io/BufferedReader;
    :goto_1
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

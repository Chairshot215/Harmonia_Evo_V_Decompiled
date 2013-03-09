.class Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/demoflopackageinstaller/net/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownThread"
.end annotation


# instance fields
.field public m_fRun:Z

.field final synthetic this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;


# direct methods
.method constructor <init>(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->m_fRun:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 30
    const-string v6, "DFPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DownloadManager]Thread start : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const/4 v2, 0x0

    .line 32
    .local v2, errorCount:I
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->m_fRun:Z

    if-eqz v6, :cond_1

    .line 34
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    if-nez v6, :cond_2

    .line 82
    :cond_1
    :goto_1
    const-string v6, "DFPI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[DownloadManager]Thread close : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return-void

    .line 37
    :cond_2
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 39
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/demoflopackageinstaller/net/QueryResult;

    invoke-virtual {v6}, Lcom/htc/demoflopackageinstaller/net/QueryResult;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, URL:Ljava/lang/String;
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/demoflopackageinstaller/net/QueryResult;

    invoke-virtual {v6}, Lcom/htc/demoflopackageinstaller/net/QueryResult;->getApkID()Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, apkid:Ljava/lang/String;
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/demoflopackageinstaller/net/QueryResult;

    invoke-virtual {v6}, Lcom/htc/demoflopackageinstaller/net/QueryResult;->getName()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/DownloadManager;->mDownloadApkFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$100(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 44
    .local v5, success:Z
    if-eqz v5, :cond_4

    .line 46
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 47
    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_CallbackFunc:Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;
    invoke-static {v6}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$200(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 48
    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_CallbackFunc:Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;
    invoke-static {v6}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$200(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/DownloadManager;->mDownloadApkFolder:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$100(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1, v4}, Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;->downloadDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_3
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/DownloadManager;->mDownloadApkFolder:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$100(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v3, f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 53
    invoke-virtual {v3, v11, v10}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 54
    invoke-virtual {v3, v11, v10}, Ljava/io/File;->setReadable(ZZ)Z

    .line 55
    invoke-virtual {v3, v11, v10}, Ljava/io/File;->setWritable(ZZ)Z

    goto/16 :goto_0

    .line 60
    .end local v3           #f:Ljava/io/File;
    :cond_4
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/DownloadManager;->mDownloadApkFolder:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$100(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .restart local v3       #f:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 62
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 63
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 64
    const/4 v6, 0x5

    if-lt v2, v6, :cond_0

    .line 66
    const-string v6, "DFPI"

    const-string v7, "[DownloadManager]download failed 5 times, stop download thread"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v6, "pause"

    invoke-static {v6}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$302(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 75
    .end local v0           #URL:Ljava/lang/String;
    .end local v1           #apkid:Ljava/lang/String;
    .end local v3           #f:Ljava/io/File;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #success:Z
    :cond_6
    const-string v6, "DFPI"

    const-string v7, "[DownloadManager]Queue is empty, stop download thread"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v6, "pause"

    invoke-static {v6}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$302(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_CallbackFunc:Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;
    invoke-static {v6}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$200(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 78
    iget-object v6, p0, Lcom/htc/demoflopackageinstaller/net/DownloadManager$DownThread;->this$0:Lcom/htc/demoflopackageinstaller/net/DownloadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/DownloadManager;->m_CallbackFunc:Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;
    invoke-static {v6}, Lcom/htc/demoflopackageinstaller/net/DownloadManager;->access$200(Lcom/htc/demoflopackageinstaller/net/DownloadManager;)Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;

    move-result-object v6

    invoke-interface {v6}, Lcom/htc/demoflopackageinstaller/net/IDownloadCallback;->allDownloadDone()V

    goto/16 :goto_1
.end method

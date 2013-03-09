.class Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;
.super Ljava/lang/Thread;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/demoflopackageinstaller/net/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpThread"
.end annotation


# instance fields
.field public m_fRun:Z

.field final synthetic this$0:Lcom/htc/demoflopackageinstaller/net/UploadManager;


# direct methods
.method constructor <init>(Lcom/htc/demoflopackageinstaller/net/UploadManager;)V
    .locals 1
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->this$0:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->m_fRun:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 28
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UploadManager]Thread start. tid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    .line 30
    .local v0, errorCount:I
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->m_fRun:Z

    if-eqz v3, :cond_1

    .line 32
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v3

    if-nez v3, :cond_2

    .line 66
    :cond_1
    :goto_1
    const-string v3, "DFPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UploadManager]Thread close. tid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->getId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 34
    :cond_2
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 38
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->this$0:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    invoke-virtual {v3, v1}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->uploadFile(Ljava/lang/String;)Z

    move-result v2

    .line 39
    .local v2, success:Z
    if-eqz v2, :cond_3

    .line 41
    invoke-static {}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->access$000()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 42
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->this$0:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/UploadManager;->mCallback:Lcom/htc/demoflopackageinstaller/net/IUploadCallback;
    invoke-static {v3}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->access$100(Lcom/htc/demoflopackageinstaller/net/UploadManager;)Lcom/htc/demoflopackageinstaller/net/IUploadCallback;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/htc/demoflopackageinstaller/net/IUploadCallback;->oneFileDone(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    goto :goto_0

    .line 47
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 48
    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .line 50
    const-string v3, "DFPI"

    const-string v4, "[UploadManager]upload failed 5 times, stop upload thread"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string v3, "pause"

    invoke-static {v3}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->access$202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 59
    .end local v2           #success:Z
    :cond_4
    const-string v3, "DFPI"

    const-string v4, "[UploadManager]Queue is empty, stop upload thread"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v3, "pause"

    invoke-static {v3}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->access$202(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->this$0:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/UploadManager;->mCallback:Lcom/htc/demoflopackageinstaller/net/IUploadCallback;
    invoke-static {v3}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->access$100(Lcom/htc/demoflopackageinstaller/net/UploadManager;)Lcom/htc/demoflopackageinstaller/net/IUploadCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 62
    iget-object v3, p0, Lcom/htc/demoflopackageinstaller/net/UploadManager$UpThread;->this$0:Lcom/htc/demoflopackageinstaller/net/UploadManager;

    #getter for: Lcom/htc/demoflopackageinstaller/net/UploadManager;->mCallback:Lcom/htc/demoflopackageinstaller/net/IUploadCallback;
    invoke-static {v3}, Lcom/htc/demoflopackageinstaller/net/UploadManager;->access$100(Lcom/htc/demoflopackageinstaller/net/UploadManager;)Lcom/htc/demoflopackageinstaller/net/IUploadCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/demoflopackageinstaller/net/IUploadCallback;->allDone()V

    goto :goto_1
.end method

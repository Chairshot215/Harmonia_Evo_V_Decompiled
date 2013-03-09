.class public Lcom/htc/home/personalize/abstractresource/PrepareThread;
.super Ljava/lang/Thread;
.source "PrepareThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;,
        Lcom/htc/home/personalize/abstractresource/PrepareThread$Preparable;,
        Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;,
        Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;
    }
.end annotation


# static fields
.field private static final FAIL_DOZE_THRESHOLD:I = 0x1f4

.field private static final PAUSE_DOZE_TIME:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static volatile threadCount:I


# instance fields
.field private final container:Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;

.field private final evaluater:Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;

.field private volatile nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

.field private final uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const-class v0, Lcom/htc/home/personalize/abstractresource/PrepareThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->TAG:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    sput v0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->threadCount:I

    return-void
.end method

.method private constructor <init>(Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;Lcom/htc/home/personalize/olrespicker/UIHandler;)V
    .locals 1
    .parameter "evaluater"
    .parameter "container"
    .parameter "uiHandler"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 161
    sget-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->NORMAL:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    iput-object v0, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    .line 166
    iput-object p1, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->evaluater:Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;

    .line 167
    iput-object p2, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->container:Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;

    .line 168
    iput-object p3, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    .line 169
    return-void
.end method

.method public static askToPausePreparing(Lcom/htc/home/personalize/abstractresource/PrepareThread;)Z
    .locals 2
    .parameter "thread"

    .prologue
    const/4 v1, 0x0

    .line 119
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_PAUSE:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    iput-object v0, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    .line 126
    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->interrupt()V

    goto :goto_0
.end method

.method public static askToStopPreparing(Lcom/htc/home/personalize/abstractresource/PrepareThread;)Z
    .locals 1
    .parameter "thread"

    .prologue
    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_EXIT:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    iput-object v0, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    .line 112
    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->interrupt()V

    .line 114
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startToPrepare(Lcom/htc/home/personalize/abstractresource/PrepareThread;Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;Lcom/htc/home/personalize/olrespicker/UIHandler;)Lcom/htc/home/personalize/abstractresource/PrepareThread;
    .locals 1
    .parameter "thread"
    .parameter "evaluater"
    .parameter "container"
    .parameter "uiHandler"

    .prologue
    .line 135
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    :cond_0
    new-instance p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;

    .end local p0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/abstractresource/PrepareThread;-><init>(Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;Lcom/htc/home/personalize/olrespicker/UIHandler;)V

    .line 137
    .restart local p0
    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->getPriority()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->setPriority(I)V

    .line 138
    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->start()V

    .line 146
    :goto_0
    return-object p0

    .line 142
    :cond_1
    sget-object v0, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->NORMAL:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    iput-object v0, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    .line 143
    invoke-virtual {p0}, Lcom/htc/home/personalize/abstractresource/PrepareThread;->interrupt()V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 29
    const-class v5, Lcom/htc/home/personalize/abstractresource/PrepareThread;

    monitor-enter v5

    .line 30
    :try_start_0
    sget v4, Lcom/htc/home/personalize/abstractresource/PrepareThread;->threadCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/htc/home/personalize/abstractresource/PrepareThread;->threadCount:I

    .line 31
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v4, Lcom/htc/home/personalize/abstractresource/PrepareThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": run. threadCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/home/personalize/abstractresource/PrepareThread;->threadCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v4, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    if-eqz v4, :cond_0

    .line 34
    iget-object v4, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 37
    :cond_0
    const/4 v4, 0x1

    new-array v0, v4, [Lcom/htc/home/personalize/abstractresource/Resource$Const;

    .line 38
    .local v0, badPractice:[Lcom/htc/home/personalize/abstractresource/Resource$Const;
    const/4 v3, 0x0

    .line 39
    .local v3, i:I
    const/4 v1, 0x0

    .line 40
    .local v1, dataReady:Z
    :cond_1
    :goto_0
    sget-object v4, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_EXIT:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    iget-object v5, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    if-eq v4, v5, :cond_4

    .line 41
    sget-object v4, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_PAUSE:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    iget-object v5, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    if-ne v4, v5, :cond_2

    .line 44
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v4

    goto :goto_0

    .line 31
    .end local v0           #badPractice:[Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .end local v1           #dataReady:Z
    .end local v3           #i:I
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 52
    .restart local v0       #badPractice:[Lcom/htc/home/personalize/abstractresource/Resource$Const;
    .restart local v1       #dataReady:Z
    .restart local v3       #i:I
    :cond_2
    :try_start_3
    iget-object v4, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->evaluater:Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;

    invoke-interface {v4, v0}, Lcom/htc/home/personalize/abstractresource/PrepareThread$NextEvaluater;->whoIsNext([Lcom/htc/home/personalize/abstractresource/Resource$Const;)I

    move-result v3

    .line 53
    if-gez v3, :cond_3

    .line 54
    sget-object v4, Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;->TO_EXIT:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    iput-object v4, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v2

    .line 82
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_4
    sget-object v4, Lcom/htc/home/personalize/abstractresource/PrepareThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": exception doze="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " badPractice[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 86
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 87
    :catch_2
    move-exception v4

    goto :goto_0

    .line 60
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_3
    :try_start_5
    iget-object v4, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->container:Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;

    invoke-interface {v4, v3}, Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;->getItem(I)Lcom/htc/home/personalize/abstractresource/PrepareThread$Preparable;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-interface {v4, v5}, Lcom/htc/home/personalize/abstractresource/PrepareThread$Preparable;->prepare(Lcom/htc/home/personalize/abstractresource/Resource$Const;)V

    .line 61
    iget-object v4, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->container:Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;

    invoke-interface {v4, v3}, Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;->getItem(I)Lcom/htc/home/personalize/abstractresource/PrepareThread$Preparable;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-interface {v4, v5}, Lcom/htc/home/personalize/abstractresource/PrepareThread$Preparable;->isReady(Lcom/htc/home/personalize/abstractresource/Resource$Const;)Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v1

    .line 62
    if-nez v1, :cond_1

    .line 66
    :try_start_6
    sget-object v4, Lcom/htc/home/personalize/abstractresource/PrepareThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": failed to prepare, wait for a while. doze="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x1f4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " badPractice[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextStatus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->nextStatus:Lcom/htc/home/personalize/abstractresource/PrepareThread$ThreadStatus;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->container:Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;

    invoke-interface {v6, v3}, Lcom/htc/home/personalize/abstractresource/PrepareThread$Container;->getItem(I)Lcom/htc/home/personalize/abstractresource/PrepareThread$Preparable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/home/personalize/abstractresource/Logger;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 72
    :catch_3
    move-exception v4

    goto/16 :goto_0

    .line 93
    :cond_4
    iget-object v4, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    if-eqz v4, :cond_5

    .line 94
    iget-object v4, p0, Lcom/htc/home/personalize/abstractresource/PrepareThread;->uiHandler:Lcom/htc/home/personalize/olrespicker/UIHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/htc/home/personalize/olrespicker/UIHandler;->sendEmptyMessage(I)Z

    .line 96
    :cond_5
    sget-object v4, Lcom/htc/home/personalize/abstractresource/PrepareThread;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": stopping threadCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/htc/home/personalize/abstractresource/PrepareThread;->threadCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/home/personalize/abstractresource/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-class v5, Lcom/htc/home/personalize/abstractresource/PrepareThread;

    monitor-enter v5

    .line 98
    :try_start_7
    sget v4, Lcom/htc/home/personalize/abstractresource/PrepareThread;->threadCount:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/htc/home/personalize/abstractresource/PrepareThread;->threadCount:I

    .line 99
    monitor-exit v5

    .line 100
    return-void

    .line 99
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4
.end method

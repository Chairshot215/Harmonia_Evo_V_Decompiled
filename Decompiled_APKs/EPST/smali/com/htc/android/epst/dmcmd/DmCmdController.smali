.class public Lcom/htc/android/epst/dmcmd/DmCmdController;
.super Ljava/lang/Object;
.source "DmCmdController.java"


# static fields
.field private static mDispatchCmdController:Lcom/htc/android/epst/dmcmd/DmCmdController;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/epst/dmcmd/DmCmdController;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/htc/android/epst/dmcmd/DmCmdController;->mDispatchCmdController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/htc/android/epst/dmcmd/DmCmdController;

    invoke-direct {v0}, Lcom/htc/android/epst/dmcmd/DmCmdController;-><init>()V

    sput-object v0, Lcom/htc/android/epst/dmcmd/DmCmdController;->mDispatchCmdController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    .line 20
    :cond_0
    sget-object v0, Lcom/htc/android/epst/dmcmd/DmCmdController;->mDispatchCmdController:Lcom/htc/android/epst/dmcmd/DmCmdController;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/epst/internal/RecordList;->clear()V

    .line 90
    return-void
.end method

.method public declared-synchronized getGeneratedCmd(I)Ljava/lang/String;
    .locals 2
    .parameter "cmdId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    .line 80
    .local v0, base:Lcom/htc/android/epst/dmcmd/DmCmdBase;
    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;->generateCmdData()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 79
    .end local v0           #base:Lcom/htc/android/epst/dmcmd/DmCmdBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getGeneratedCmdList(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "cmdId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    .line 85
    .local v0, base:Lcom/htc/android/epst/dmcmd/DmCmdBase;
    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;->generateCmdDataList()Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 84
    .end local v0           #base:Lcom/htc/android/epst/dmcmd/DmCmdBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;
    .locals 1
    .parameter "id"

    .prologue
    .line 70
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(II)Lcom/htc/android/epst/dmcmd/DmCmdBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStruct(II)Lcom/htc/android/epst/dmcmd/DmCmdBase;
    .locals 3
    .parameter "id"
    .parameter "index"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v0

    .line 56
    .local v0, dm:Lcom/htc/android/epst/internal/Record;
    iget-object v1, v0, Lcom/htc/android/epst/internal/Record;->request:Lcom/htc/android/epst/internal/StructBase;

    check-cast v1, Lcom/htc/android/epst/dmcmd/DmCmdBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 55
    .end local v0           #dm:Lcom/htc/android/epst/internal/Record;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getStruct(ILjava/lang/String;)Lcom/htc/android/epst/dmcmd/DmCmdBase;
    .locals 2
    .parameter "id"
    .parameter "index"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 61
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(II)Lcom/htc/android/epst/dmcmd/DmCmdBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 60
    .end local v0           #i:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "purecmd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    monitor-enter p0

    const/4 v0, 0x0

    .line 32
    .local v0, handler:Lcom/htc/android/epst/dmcmd/DmCmdBase;
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0, p2}, Lcom/htc/android/epst/dmcmd/DmCmdBase;->setCmd(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;->read()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 40
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .end local v1           #id:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized writeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "nvItemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    monitor-enter p0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/epst/dmcmd/DmCmdBase;

    move-result-object v0

    .line 50
    .local v0, base:Lcom/htc/android/epst/dmcmd/DmCmdBase;
    invoke-virtual {v0, p2}, Lcom/htc/android/epst/dmcmd/DmCmdBase;->setCmd(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/htc/android/epst/dmcmd/DmCmdBase;->write()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 49
    .end local v0           #base:Lcom/htc/android/epst/dmcmd/DmCmdBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

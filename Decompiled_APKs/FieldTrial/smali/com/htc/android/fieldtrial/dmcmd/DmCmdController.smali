.class public Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
.super Ljava/lang/Object;
.source "DmCmdController.java"


# static fields
.field private static mDispatchCmdController:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;


# instance fields
.field private mDefinition:Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;-><init>()V

    iput-object v0, p0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->mDefinition:Lcom/htc/android/fieldtrial/dmcmd/DmCmdDefine;

    .line 14
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->mDispatchCmdController:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;-><init>()V

    sput-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->mDispatchCmdController:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    .line 19
    :cond_0
    sget-object v0, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->mDispatchCmdController:Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/RecordList;->getSingleton()Lcom/htc/android/fieldtrial/internal/RecordList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/RecordList;->clear()V

    .line 74
    return-void
.end method

.method public declared-synchronized getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
    .locals 1
    .parameter "id"

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(II)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
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

.method public declared-synchronized getStruct(II)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
    .locals 3
    .parameter "id"
    .parameter "index"

    .prologue
    .line 54
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/RecordList;->getSingleton()Lcom/htc/android/fieldtrial/internal/RecordList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/htc/android/fieldtrial/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v0

    .line 55
    .local v0, dm:Lcom/htc/android/fieldtrial/internal/Record;
    iget-object v1, v0, Lcom/htc/android/fieldtrial/internal/Record;->request:Lcom/htc/android/fieldtrial/internal/StructBase;

    check-cast v1, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 54
    .end local v0           #dm:Lcom/htc/android/fieldtrial/internal/Record;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getStruct(ILjava/lang/String;)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
    .locals 2
    .parameter "id"
    .parameter "index"

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 60
    .local v0, i:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(II)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 59
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
    .line 29
    monitor-enter p0

    const/4 v0, 0x0

    .line 31
    .local v0, handler:Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 32
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdController;->getStruct(I)Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p2}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;->setCmd(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/dmcmd/DmCmdBase;->read()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 39
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .end local v1           #id:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized resetAllRecordState()V
    .locals 5

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/RecordList;->getSingleton()Lcom/htc/android/fieldtrial/internal/RecordList;

    move-result-object v2

    .line 44
    .local v2, list:Lcom/htc/android/fieldtrial/internal/RecordList;
    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/internal/RecordList;->length()I

    move-result v1

    .line 45
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 46
    invoke-virtual {v2, v0}, Lcom/htc/android/fieldtrial/internal/RecordList;->get(I)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v3

    .line 47
    .local v3, rc:Lcom/htc/android/fieldtrial/internal/Record;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/android/fieldtrial/internal/Record;->isSend:Z

    .line 48
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/android/fieldtrial/internal/Record;->isResponse:Z

    .line 49
    const/4 v4, 0x3

    iput v4, v3, Lcom/htc/android/fieldtrial/internal/Record;->failedstate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    .end local v3           #rc:Lcom/htc/android/fieldtrial/internal/Record;
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:Lcom/htc/android/fieldtrial/internal/RecordList;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

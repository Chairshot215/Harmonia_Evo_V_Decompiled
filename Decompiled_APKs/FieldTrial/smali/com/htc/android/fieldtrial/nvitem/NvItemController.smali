.class public Lcom/htc/android/fieldtrial/nvitem/NvItemController;
.super Ljava/lang/Object;
.source "NvItemController.java"


# static fields
.field private static mNewInstance:Lcom/htc/android/fieldtrial/nvitem/NvItemController;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/fieldtrial/nvitem/NvItemController;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->mNewInstance:Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    invoke-direct {v0}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;-><init>()V

    sput-object v0, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->mNewInstance:Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    .line 24
    :cond_0
    sget-object v0, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->mNewInstance:Lcom/htc/android/fieldtrial/nvitem/NvItemController;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 98
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/RecordList;->getSingleton()Lcom/htc/android/fieldtrial/internal/RecordList;

    move-result-object v0

    .line 99
    .local v0, list:Lcom/htc/android/fieldtrial/internal/RecordList;
    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/internal/RecordList;->clear()V

    .line 100
    return-void
.end method

.method public declared-synchronized getGeneratedCmd(I)Ljava/lang/String;
    .locals 3
    .parameter "nvItemId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;

    move-result-object v0

    .line 93
    .local v0, base:Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;->generateCmdData()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 94
    .local v1, ret:Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 92
    .end local v0           #base:Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    .end local v1           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getStruct(I)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    .locals 1
    .parameter "nvItemId"

    .prologue
    .line 82
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
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

.method public declared-synchronized getStruct(II)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    .locals 2
    .parameter "nvItemId"
    .parameter "index"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/RecordList;->getSingleton()Lcom/htc/android/fieldtrial/internal/RecordList;

    move-result-object v0

    .line 68
    .local v0, list:Lcom/htc/android/fieldtrial/internal/RecordList;
    const/16 v1, 0x26

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/android/fieldtrial/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/fieldtrial/internal/Record;->response:Lcom/htc/android/fieldtrial/internal/StructBase;

    check-cast v1, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 67
    .end local v0           #list:Lcom/htc/android/fieldtrial/internal/RecordList;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getStruct(ILjava/lang/String;)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    .locals 2
    .parameter "nvItemId"
    .parameter "index"

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 73
    .local v0, intIndex:I
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 72
    .end local v0           #intIndex:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "nvItemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 39
    monitor-enter p0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;

    move-result-object v0

    .line 40
    .local v0, base:Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {v0, p2}, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;->setCmd(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;->read()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .end local v0           #base:Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resetAllRecordState()V
    .locals 5

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/fieldtrial/internal/RecordList;->getSingleton()Lcom/htc/android/fieldtrial/internal/RecordList;

    move-result-object v2

    .line 104
    .local v2, list:Lcom/htc/android/fieldtrial/internal/RecordList;
    invoke-virtual {v2}, Lcom/htc/android/fieldtrial/internal/RecordList;->length()I

    move-result v1

    .line 105
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 106
    invoke-virtual {v2, v0}, Lcom/htc/android/fieldtrial/internal/RecordList;->get(I)Lcom/htc/android/fieldtrial/internal/Record;

    move-result-object v3

    .line 107
    .local v3, rc:Lcom/htc/android/fieldtrial/internal/Record;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/android/fieldtrial/internal/Record;->isSend:Z

    .line 108
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/android/fieldtrial/internal/Record;->isResponse:Z

    .line 109
    const/4 v4, 0x3

    iput v4, v3, Lcom/htc/android/fieldtrial/internal/Record;->failedstate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    .end local v3           #rc:Lcom/htc/android/fieldtrial/internal/Record;
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:Lcom/htc/android/fieldtrial/internal/RecordList;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
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
    .line 57
    monitor-enter p0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/fieldtrial/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/fieldtrial/nvitem/NvItemBase;

    move-result-object v0

    .line 58
    .local v0, base:Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p2}, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;->setCmd(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0}, Lcom/htc/android/fieldtrial/nvitem/NvItemBase;->write()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 63
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .end local v0           #base:Lcom/htc/android/fieldtrial/nvitem/NvItemBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

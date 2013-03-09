.class public Lcom/htc/android/epst/nvitem/NvItemController;
.super Ljava/lang/Object;
.source "NvItemController.java"


# static fields
.field private static mNewInstance:Lcom/htc/android/epst/nvitem/NvItemController;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "NvItemController"

    iput-object v0, p0, Lcom/htc/android/epst/nvitem/NvItemController;->LOG_TAG:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getSingleton()Lcom/htc/android/epst/nvitem/NvItemController;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/android/epst/nvitem/NvItemController;->mNewInstance:Lcom/htc/android/epst/nvitem/NvItemController;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/htc/android/epst/nvitem/NvItemController;

    invoke-direct {v0}, Lcom/htc/android/epst/nvitem/NvItemController;-><init>()V

    sput-object v0, Lcom/htc/android/epst/nvitem/NvItemController;->mNewInstance:Lcom/htc/android/epst/nvitem/NvItemController;

    .line 25
    :cond_0
    sget-object v0, Lcom/htc/android/epst/nvitem/NvItemController;->mNewInstance:Lcom/htc/android/epst/nvitem/NvItemController;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 99
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v0

    .line 100
    .local v0, list:Lcom/htc/android/epst/internal/RecordList;
    invoke-virtual {v0}, Lcom/htc/android/epst/internal/RecordList;->clear()V

    .line 101
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
    .line 93
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    .line 94
    .local v0, base:Lcom/htc/android/epst/nvitem/NvItemBase;
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/NvItemBase;->generateCmdData()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 95
    .local v1, ret:Ljava/lang/String;
    monitor-exit p0

    return-object v1

    .line 93
    .end local v0           #base:Lcom/htc/android/epst/nvitem/NvItemBase;
    .end local v1           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;
    .locals 1
    .parameter "nvItemId"

    .prologue
    .line 83
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;
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

.method public declared-synchronized getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;
    .locals 2
    .parameter "nvItemId"
    .parameter "index"

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v0

    .line 69
    .local v0, list:Lcom/htc/android/epst/internal/RecordList;
    const/16 v1, 0x26

    invoke-virtual {v0, v1, p1, p2}, Lcom/htc/android/epst/internal/RecordList;->getByIdandIndex(III)Lcom/htc/android/epst/internal/Record;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/epst/internal/Record;->response:Lcom/htc/android/epst/internal/StructBase;

    check-cast v1, Lcom/htc/android/epst/nvitem/NvItemBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 68
    .end local v0           #list:Lcom/htc/android/epst/internal/RecordList;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getStruct(ILjava/lang/String;)Lcom/htc/android/epst/nvitem/NvItemBase;
    .locals 2
    .parameter "nvItemId"
    .parameter "index"

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, intIndex:I
    invoke-virtual {p0, p1, v0}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(II)Lcom/htc/android/epst/nvitem/NvItemBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 73
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
    .line 40
    monitor-enter p0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    .line 41
    .local v0, base:Lcom/htc/android/epst/nvitem/NvItemBase;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p2}, Lcom/htc/android/epst/nvitem/NvItemBase;->setCmd(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/NvItemBase;->read()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .end local v0           #base:Lcom/htc/android/epst/nvitem/NvItemBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resetAllRecordState()V
    .locals 5

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/htc/android/epst/internal/RecordList;->getSingleton()Lcom/htc/android/epst/internal/RecordList;

    move-result-object v2

    .line 105
    .local v2, list:Lcom/htc/android/epst/internal/RecordList;
    invoke-virtual {v2}, Lcom/htc/android/epst/internal/RecordList;->length()I

    move-result v1

    .line 106
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 107
    invoke-virtual {v2, v0}, Lcom/htc/android/epst/internal/RecordList;->get(I)Lcom/htc/android/epst/internal/Record;

    move-result-object v3

    .line 108
    .local v3, rc:Lcom/htc/android/epst/internal/Record;
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/android/epst/internal/Record;->isSend:Z

    .line 109
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/htc/android/epst/internal/Record;->isResponse:Z

    .line 110
    const/4 v4, 0x3

    iput v4, v3, Lcom/htc/android/epst/internal/Record;->failedstate:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v3           #rc:Lcom/htc/android/epst/internal/Record;
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:Lcom/htc/android/epst/internal/RecordList;
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
    .line 58
    monitor-enter p0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {p1, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/android/epst/nvitem/NvItemController;->getStruct(I)Lcom/htc/android/epst/nvitem/NvItemBase;

    move-result-object v0

    .line 59
    .local v0, base:Lcom/htc/android/epst/nvitem/NvItemBase;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0, p2}, Lcom/htc/android/epst/nvitem/NvItemBase;->setCmd(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/htc/android/epst/nvitem/NvItemBase;->write()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .end local v0           #base:Lcom/htc/android/epst/nvitem/NvItemBase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

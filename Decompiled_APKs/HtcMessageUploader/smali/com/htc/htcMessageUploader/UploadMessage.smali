.class Lcom/htc/htcMessageUploader/UploadMessage;
.super Ljava/lang/Object;
.source "UploadMessageReceiver.java"


# instance fields
.field private APPUPDATE_MSG_PREFIX:Ljava/lang/String;

.field private IDVAPPUPDATE_MSG_PREFIX:Ljava/lang/String;

.field bAppUpdateMsg:Z

.field bIAppUpdateMsg:Z

.field public imei:Ljava/lang/String;

.field public model:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field private strAppUpdateMsg:Ljava/lang/String;

.field public tag1:Ljava/lang/String;

.field public tag2:Ljava/lang/String;

.field public timestamp:J

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "#APPUPDATE#"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->APPUPDATE_MSG_PREFIX:Ljava/lang/String;

    .line 73
    const-string v0, "#IDVAPPUPDATE#"

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->IDVAPPUPDATE_MSG_PREFIX:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->imei:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->version:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->model:Ljava/lang/String;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->timestamp:J

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->status:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->tag2:Ljava/lang/String;

    .line 84
    iput-boolean v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bAppUpdateMsg:Z

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->strAppUpdateMsg:Ljava/lang/String;

    .line 86
    iput-boolean v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bIAppUpdateMsg:Z

    .line 87
    return-void
.end method


# virtual methods
.method public enableAppUpdateMsg()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bAppUpdateMsg:Z

    .line 92
    return-void
.end method

.method public isAppUpdateMsg()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bAppUpdateMsg:Z

    return v0
.end method

.method public isIndividualAPUMsg()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bIAppUpdateMsg:Z

    return v0
.end method

.method public readRecord(Ljava/lang/String;)Z
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x6

    const/4 v3, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v2, 0x1

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htcMessageUploader/UploadMessage;->APPUPDATE_MSG_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-le v4, v7, :cond_1

    .line 128
    iput-boolean v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bAppUpdateMsg:Z

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/htcMessageUploader/UploadMessage;->IDVAPPUPDATE_MSG_PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-le v3, v7, :cond_0

    .line 130
    iput-boolean v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bIAppUpdateMsg:Z

    .line 131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/htcMessageUploader/UploadMessage;->strAppUpdateMsg:Ljava/lang/String;

    .line 132
    const-string v3, "htcMessageUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get appupdate extra message. Msg:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/htcMessageUploader/UploadMessage;->strAppUpdateMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 163
    :goto_0
    return v1

    .line 136
    :cond_1
    const/4 v1, 0x0

    .line 138
    .local v1, result:Z
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, data:[Ljava/lang/String;
    array-length v4, v0

    if-ge v4, v6, :cond_2

    .line 141
    const-string v2, "htcMessageUploader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Record items = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 142
    goto :goto_0

    .line 144
    :cond_2
    aget-object v3, v0, v3

    iput-object v3, p0, Lcom/htc/htcMessageUploader/UploadMessage;->imei:Ljava/lang/String;

    .line 145
    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->version:Ljava/lang/String;

    .line 146
    const/4 v2, 0x2

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->model:Ljava/lang/String;

    .line 147
    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->timestamp:J

    .line 148
    const/4 v2, 0x4

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->status:Ljava/lang/String;

    .line 150
    array-length v2, v0

    if-le v2, v6, :cond_3

    .line 151
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    .line 156
    :goto_1
    array-length v2, v0

    if-le v2, v8, :cond_4

    .line 157
    aget-object v2, v0, v8

    iput-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->tag2:Ljava/lang/String;

    .line 162
    :goto_2
    const/4 v1, 0x1

    .line 163
    goto :goto_0

    .line 153
    :cond_3
    const-string v2, "htcMessageUploader"

    const-string v3, "There is no TAG1 in queued data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    goto :goto_1

    .line 159
    :cond_4
    const-string v2, "htcMessageUploader"

    const-string v3, "There is no TAG2 in queued data"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->tag2:Ljava/lang/String;

    goto :goto_2
.end method

.method public setAppUpdateMsgContent(Ljava/lang/String;)V
    .locals 2
    .parameter "pContent"

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->APPUPDATE_MSG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->strAppUpdateMsg:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setIndividualAPU()V
    .locals 2

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bIAppUpdateMsg:Z

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->IDVAPPUPDATE_MSG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->strAppUpdateMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->strAppUpdateMsg:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toRecord()Ljava/lang/String;
    .locals 3

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->bAppUpdateMsg:Z

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "htcMessageUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Return message for appupdate:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/htcMessageUploader/UploadMessage;->strAppUpdateMsg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/htc/htcMessageUploader/UploadMessage;->strAppUpdateMsg:Ljava/lang/String;

    .line 122
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->imei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->tag1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htcMessageUploader/UploadMessage;->tag2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

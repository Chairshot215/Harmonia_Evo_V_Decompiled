.class public Lcom/android/dmportread/CurrentBox;
.super Ljava/lang/Object;
.source "CurrentBox.java"


# static fields
.field public static final DM_DELETED:S = 0x1s

.field public static final DM_DRAFTS:S = 0x2s

.field public static final DM_INBOX:S = 0x3s

.field public static final DM_OUTBOX:S = 0x4s

.field public static final DM_READ:S = 0x1s

.field public static final DM_READ_ALL:S = 0xas

.field public static final DM_SENT:S = 0x5s

.field public static final DM_TYPE_ALL:S = 0xas

.field public static final DM_UNREAD:S = 0x2s

.field private static final tag:Ljava/lang/String; = "CurBox"


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/TempSms;",
            ">;"
        }
    .end annotation
.end field

.field private mRead:S

.field private mType:S


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;SS)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "read"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/TempSms;",
            ">;SS)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, allMsgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/TempSms;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/dmportread/CurrentBox;->mList:Ljava/util/ArrayList;

    .line 37
    iput-short p2, p0, Lcom/android/dmportread/CurrentBox;->mType:S

    .line 38
    iput-short p3, p0, Lcom/android/dmportread/CurrentBox;->mRead:S

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/dmportread/CurrentBox;->refreshList(Ljava/util/ArrayList;)V

    .line 40
    return-void
.end method

.method private isValidRead(S)Z
    .locals 3
    .parameter "read"

    .prologue
    const/4 v0, 0x1

    .line 262
    iget-short v1, p0, Lcom/android/dmportread/CurrentBox;->mRead:S

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 265
    :cond_1
    iget-short v1, p0, Lcom/android/dmportread/CurrentBox;->mRead:S

    if-ne v1, v0, :cond_2

    if-eq p1, v0, :cond_0

    .line 267
    :cond_2
    iget-short v1, p0, Lcom/android/dmportread/CurrentBox;->mRead:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-eqz p1, :cond_0

    .line 270
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidType(I)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 208
    iget-short v2, p0, Lcom/android/dmportread/CurrentBox;->mType:S

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 238
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    const/4 v0, 0x0

    .line 213
    .local v0, result:Z
    iget-short v2, p0, Lcom/android/dmportread/CurrentBox;->mType:S

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 227
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :pswitch_1
    if-ne p1, v1, :cond_0

    .line 216
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :pswitch_2
    const/4 v1, 0x6

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 222
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :pswitch_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static notDMMsgType(S)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 100
    packed-switch p0, :pswitch_data_0

    .line 114
    :pswitch_0
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static notDMReadType(S)Z
    .locals 2
    .parameter "read"

    .prologue
    const/4 v0, 0x1

    .line 87
    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-ne p0, v1, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    :cond_1
    return v0
.end method


# virtual methods
.method public createNewMsg()Lcom/android/dmportread/TempSms;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 171
    .local v0, msg:Lcom/android/dmportread/TempSms;
    iget-short v1, p0, Lcom/android/dmportread/CurrentBox;->mType:S

    packed-switch v1, :pswitch_data_0

    .line 185
    new-instance v1, Lcom/android/dmportread/DMServiceException;

    const-string v2, "Unable to create new msg for this type"

    invoke-direct {v1, v2}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :pswitch_0
    new-instance v0, Lcom/android/dmportread/TempSms;

    .end local v0           #msg:Lcom/android/dmportread/TempSms;
    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/dmportread/TempSms;-><init>(I)V

    .line 188
    .restart local v0       #msg:Lcom/android/dmportread/TempSms;
    :goto_0
    return-object v0

    .line 176
    :pswitch_1
    new-instance v0, Lcom/android/dmportread/TempSms;

    .end local v0           #msg:Lcom/android/dmportread/TempSms;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dmportread/TempSms;-><init>(I)V

    .line 177
    .restart local v0       #msg:Lcom/android/dmportread/TempSms;
    goto :goto_0

    .line 179
    :pswitch_2
    new-instance v0, Lcom/android/dmportread/TempSms;

    .end local v0           #msg:Lcom/android/dmportread/TempSms;
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/dmportread/TempSms;-><init>(I)V

    .line 180
    .restart local v0       #msg:Lcom/android/dmportread/TempSms;
    goto :goto_0

    .line 182
    :pswitch_3
    new-instance v0, Lcom/android/dmportread/TempSms;

    .end local v0           #msg:Lcom/android/dmportread/TempSms;
    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/dmportread/TempSms;-><init>(I)V

    .line 183
    .restart local v0       #msg:Lcom/android/dmportread/TempSms;
    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getMsg(I)Lcom/android/dmportread/TempSms;
    .locals 1
    .parameter "pos"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/dmportread/CurrentBox;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 148
    :cond_0
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/dmportread/CurrentBox;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dmportread/TempSms;

    goto :goto_0
.end method

.method public getRead()S
    .locals 1

    .prologue
    .line 196
    iget-short v0, p0, Lcom/android/dmportread/CurrentBox;->mRead:S

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/dmportread/CurrentBox;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getType()S
    .locals 1

    .prologue
    .line 192
    iget-short v0, p0, Lcom/android/dmportread/CurrentBox;->mType:S

    return v0
.end method

.method public refreshList(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/TempSms;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 54
    .local p1, allMsgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/TempSms;>;"
    if-nez p1, :cond_0

    .line 55
    new-instance v2, Lcom/android/dmportread/DMServiceException;

    const-string v3, "allMsgs is null"

    invoke-direct {v2, v3}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/dmportread/CurrentBox;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, msg:Lcom/android/dmportread/TempSms;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 61
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #msg:Lcom/android/dmportread/TempSms;
    check-cast v1, Lcom/android/dmportread/TempSms;

    .line 63
    .restart local v1       #msg:Lcom/android/dmportread/TempSms;
    if-gez v0, :cond_1

    iget-wide v3, v1, Lcom/android/dmportread/TempSms;->_id:J

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/dmportread/TempSms;

    iget-wide v5, v2, Lcom/android/dmportread/TempSms;->_id:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_1

    .line 64
    const-string v2, "DMCmdSvs"

    const-string v3, "reversed order"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/dmportread/TempSms;->getType()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/dmportread/CurrentBox;->isValidType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/android/dmportread/TempSms;->getRead()S

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/dmportread/CurrentBox;->isValidRead(S)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    iget-object v2, p0, Lcom/android/dmportread/CurrentBox;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_3
    return-void
.end method

.method public removeMsg(I)V
    .locals 4
    .parameter "pos"

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/dmportread/CurrentBox;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v1, "CurBox"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing an Out-of-Bound Msg at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateBox(Ljava/util/ArrayList;SS)V
    .locals 2
    .parameter
    .parameter "type"
    .parameter "read"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/dmportread/TempSms;",
            ">;SS)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dmportread/DMServiceException;
        }
    .end annotation

    .prologue
    .line 130
    .local p1, allMsgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/dmportread/TempSms;>;"
    invoke-static {p3}, Lcom/android/dmportread/CurrentBox;->notDMReadType(S)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/android/dmportread/CurrentBox;->notDMMsgType(S)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    new-instance v0, Lcom/android/dmportread/DMServiceException;

    const-string v1, "Invalid DM read type or invalid DM message type"

    invoke-direct {v0, v1}, Lcom/android/dmportread/DMServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    iget-short v0, p0, Lcom/android/dmportread/CurrentBox;->mType:S

    if-ne p2, v0, :cond_2

    iget-short v0, p0, Lcom/android/dmportread/CurrentBox;->mRead:S

    if-eq p3, v0, :cond_3

    .line 135
    :cond_2
    iput-short p2, p0, Lcom/android/dmportread/CurrentBox;->mType:S

    .line 136
    iput-short p3, p0, Lcom/android/dmportread/CurrentBox;->mRead:S

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/dmportread/CurrentBox;->refreshList(Ljava/util/ArrayList;)V

    .line 139
    :cond_3
    return-void
.end method

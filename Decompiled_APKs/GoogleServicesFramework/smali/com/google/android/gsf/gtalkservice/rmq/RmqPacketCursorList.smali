.class public Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;
.super Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;
.source "RmqPacketCursorList.java"


# instance fields
.field private mAccountidColumnIndex:I

.field private final mCursor:Landroid/database/Cursor;

.field private mDataColumnIndex:I

.field private mPacketIdColumnIndex:I

.field private mProtobufTagIndex:I

.field private mRmqIdColumnIndex:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketList;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    .line 23
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    const-string v1, "data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mDataColumnIndex:I

    .line 24
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    const-string v1, "type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mProtobufTagIndex:I

    .line 25
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    const-string v1, "rmq_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mRmqIdColumnIndex:I

    .line 26
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    const-string v1, "packet_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mPacketIdColumnIndex:I

    .line 27
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    const-string v1, "account"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mAccountidColumnIndex:I

    .line 28
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_0
    return-void
.end method

.method public getPacketAt(I)Lorg/jivesoftware/smack/packet/Packet;
    .locals 10
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    if-nez v8, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-object v3

    .line 42
    :cond_1
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 43
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mRmqIdColumnIndex:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 44
    .local v5, rmqId:J
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mProtobufTagIndex:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 45
    .local v7, tag:I
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mDataColumnIndex:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 46
    .local v2, data:[B
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mPacketIdColumnIndex:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, packetId:Ljava/lang/String;
    iget-object v8, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    iget v9, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mAccountidColumnIndex:I

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 49
    .local v0, accountId:J
    if-eqz v2, :cond_0

    .line 53
    new-instance v3, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;

    int-to-byte v8, v7

    invoke-direct {v3, v5, v6, v8, v2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;-><init>(JB[B)V

    .line 54
    .local v3, packet:Lorg/jivesoftware/smack/packet/Packet;
    invoke-virtual {v3, v0, v1}, Lorg/jivesoftware/smack/packet/Packet;->setAccountId(J)V

    .line 55
    invoke-virtual {v3, v4}, Lorg/jivesoftware/smack/packet/Packet;->setPacketID(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacketCursorList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

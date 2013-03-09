.class public Lcom/android/mms/transport/ProgressCallbackEntity;
.super Lorg/apache/http/entity/ByteArrayEntity;
.source "ProgressCallbackEntity.java"


# static fields
.field private static final DEFAULT_PIECE_SIZE:I = 0x1000


# instance fields
.field private final mContent:[B

.field private final mContext:Landroid/content/Context;

.field private final mToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J[B)V
    .locals 0
    .parameter "context"
    .parameter "token"
    .parameter "b"

    .prologue
    .line 35
    invoke-direct {p0, p4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 37
    iput-object p1, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContent:[B

    .line 39
    iput-wide p2, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mToken:J

    .line 40
    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x2

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Output stream may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 50
    .local v0, completed:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mToken:J

    const/4 v7, -0x1

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V

    .line 53
    const/4 v2, 0x0

    .local v2, pos:I
    iget-object v4, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContent:[B

    array-length v3, v4

    .line 54
    .local v3, totalLen:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 55
    sub-int v1, v3, v2

    .line 56
    .local v1, len:I
    const/16 v4, 0x1000

    if-le v1, v4, :cond_1

    .line 57
    const/16 v1, 0x1000

    .line 59
    :cond_1
    iget-object v4, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContent:[B

    invoke-virtual {p1, v4, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 60
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 62
    add-int/2addr v2, v1

    .line 64
    iget-object v4, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mToken:J

    mul-int/lit8 v7, v2, 0x64

    div-int/2addr v7, v3

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 72
    .end local v1           #len:I
    .end local v2           #pos:I
    .end local v3           #totalLen:I
    :catchall_0
    move-exception v4

    if-nez v0, :cond_2

    .line 73
    iget-object v5, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    iget-wide v6, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mToken:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V

    :cond_2
    throw v4

    .line 68
    .restart local v2       #pos:I
    .restart local v3       #totalLen:I
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mToken:J

    const/16 v7, 0x64

    invoke-static {v4, v5, v6, v7}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    const/4 v0, 0x1

    .line 72
    if-nez v0, :cond_4

    .line 73
    iget-object v4, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/mms/transport/ProgressCallbackEntity;->mToken:J

    invoke-static {v4, v5, v6, v8}, Lcom/android/mms/transport/ProgressBroadcaster;->broadcast(Landroid/content/Context;JI)V

    .line 77
    :cond_4
    return-void
.end method

.class public Lcom/android/mms/wsp/WspRequest;
.super Ljava/lang/Object;
.source "WspRequest.java"


# static fields
.field public static final METHOD_GET:I = 0x40

.field public static final METHOD_POST:I = 0x60

.field public static final STATE_DONE:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_RUNNING:I = 0x1

.field static final STATUS_CONNECTING:I = -0x4

.field static final STATUS_ERROR:I = -0x1

.field static final STATUS_FINISH_READDATA:I = -0x9

.field static final STATUS_FINISH_RECEIVEDATA:I = -0x8

.field static final STATUS_QUERYIP:I = -0x3

.field static final STATUS_RECEIVINGDATA:I = -0x7

.field static final STATUS_RECEIVINGHEADER:I = -0x6

.field static final STATUS_SENDING:I = -0x5

.field static final STATUS_WAITING:I = -0x2


# instance fields
.field private isCanceled:Z

.field private mBytesReceived:I

.field private mBytesSent:I

.field private final mContentType:Ljava/lang/String;

.field private final mEventHandler:Lcom/android/mms/wsp/EventHandler;

.field private final mGateway:Ljava/lang/String;

.field private final mHeaders:Lcom/android/mms/wsp/Headers;

.field private final mMethod:I

.field private final mMethodData:[B

.field private final mPort:I

.field private mRequestId:I

.field private mState:I

.field private mStatus:I

.field private final mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/android/mms/wsp/Headers;ILjava/lang/String;[BLjava/lang/String;Lcom/android/mms/wsp/EventHandler;)V
    .locals 2
    .parameter "gateway"
    .parameter "port"
    .parameter "headers"
    .parameter "method"
    .parameter "uri"
    .parameter "methodData"
    .parameter "contentType"
    .parameter "eventHandler"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/mms/wsp/WspRequest;->mStatus:I

    .line 117
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/wsp/WspRequest;->mState:I

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null gateway"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-nez p5, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null uri"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/android/mms/wsp/WspRequest;->mGateway:Ljava/lang/String;

    .line 55
    iput p2, p0, Lcom/android/mms/wsp/WspRequest;->mPort:I

    .line 56
    iput-object p3, p0, Lcom/android/mms/wsp/WspRequest;->mHeaders:Lcom/android/mms/wsp/Headers;

    .line 57
    iput p4, p0, Lcom/android/mms/wsp/WspRequest;->mMethod:I

    .line 58
    iput-object p5, p0, Lcom/android/mms/wsp/WspRequest;->mUri:Ljava/lang/String;

    .line 59
    iput-object p6, p0, Lcom/android/mms/wsp/WspRequest;->mMethodData:[B

    .line 60
    iput-object p7, p0, Lcom/android/mms/wsp/WspRequest;->mContentType:Ljava/lang/String;

    .line 61
    iput-object p8, p0, Lcom/android/mms/wsp/WspRequest;->mEventHandler:Lcom/android/mms/wsp/EventHandler;

    .line 62
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 1

    .prologue
    .line 204
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/mms/wsp/WspRequest;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesReceived()I
    .locals 1

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/wsp/WspRequest;->mBytesReceived:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBytesSent()I
    .locals 1

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/wsp/WspRequest;->mBytesSent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/mms/wsp/WspRequest;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method getEventHandler()Lcom/android/mms/wsp/EventHandler;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/mms/wsp/WspRequest;->mEventHandler:Lcom/android/mms/wsp/EventHandler;

    return-object v0
.end method

.method getGateway()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/mms/wsp/WspRequest;->mGateway:Ljava/lang/String;

    return-object v0
.end method

.method getHeaders()Lcom/android/mms/wsp/Headers;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/wsp/WspRequest;->mHeaders:Lcom/android/mms/wsp/Headers;

    return-object v0
.end method

.method getMethod()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/mms/wsp/WspRequest;->mMethod:I

    return v0
.end method

.method getMethodData()[B
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mms/wsp/WspRequest;->mMethodData:[B

    return-object v0
.end method

.method getPort()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/android/mms/wsp/WspRequest;->mPort:I

    return v0
.end method

.method getRequestId()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/mms/wsp/WspRequest;->mRequestId:I

    return v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/mms/wsp/WspRequest;->mState:I

    return v0
.end method

.method getStatus()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/android/mms/wsp/WspRequest;->mStatus:I

    return v0
.end method

.method getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/mms/wsp/WspRequest;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method declared-synchronized isCanceled()Z
    .locals 1

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/wsp/WspRequest;->isCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBytesReceived(I)V
    .locals 1
    .parameter "bytesReceived"

    .prologue
    .line 188
    monitor-enter p0

    if-ltz p1, :cond_0

    .line 189
    :try_start_0
    iput p1, p0, Lcom/android/mms/wsp/WspRequest;->mBytesReceived:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setBytesSent(I)V
    .locals 1
    .parameter "bytesSent"

    .prologue
    .line 178
    monitor-enter p0

    if-ltz p1, :cond_0

    .line 179
    :try_start_0
    iput p1, p0, Lcom/android/mms/wsp/WspRequest;->mBytesSent:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setRequestId(I)V
    .locals 0
    .parameter "requestId"

    .prologue
    .line 144
    iput p1, p0, Lcom/android/mms/wsp/WspRequest;->mRequestId:I

    .line 145
    return-void
.end method

.method setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 198
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 199
    iput p1, p0, Lcom/android/mms/wsp/WspRequest;->mState:I

    .line 201
    :cond_0
    return-void
.end method

.method setStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 152
    const/16 v0, -0x9

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    if-gt p1, v0, :cond_0

    .line 153
    iput p1, p0, Lcom/android/mms/wsp/WspRequest;->mStatus:I

    .line 155
    :cond_0
    return-void
.end method

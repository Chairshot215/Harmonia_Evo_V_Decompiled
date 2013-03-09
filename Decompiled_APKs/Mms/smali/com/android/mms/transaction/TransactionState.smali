.class public Lcom/android/mms/transaction/TransactionState;
.super Ljava/lang/Object;
.source "TransactionState.java"


# static fields
.field public static final DELETED:I = 0x3

.field public static final FAILED:I = 0x2

.field public static final INITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x1


# instance fields
.field private mApplicationID:[B

.field private mContentUri:Landroid/net/Uri;

.field private mError:Lcom/android/mms/transaction/TransactionError;

.field private mReplyToApplicationID:[B

.field private mSchedule:J

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/TransactionState;->mState:I

    .line 58
    iput-object v1, p0, Lcom/android/mms/transaction/TransactionState;->mContentUri:Landroid/net/Uri;

    .line 61
    iput-object v1, p0, Lcom/android/mms/transaction/TransactionState;->mApplicationID:[B

    .line 62
    iput-object v1, p0, Lcom/android/mms/transaction/TransactionState;->mReplyToApplicationID:[B

    .line 64
    return-void
.end method


# virtual methods
.method public declared-synchronized getApplicationID()[B
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionState;->mApplicationID:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionState;->mContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getError()Lcom/android/mms/transaction/TransactionError;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionState;->mError:Lcom/android/mms/transaction/TransactionError;

    return-object v0
.end method

.method public declared-synchronized getReplyToApplicationID()[B
    .locals 1

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionState;->mReplyToApplicationID:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSchedule()J
    .locals 2

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/android/mms/transaction/TransactionState;->mSchedule:J

    return-wide v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/mms/transaction/TransactionState;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setApplicationID([B)V
    .locals 1
    .parameter "appId"

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionState;->mApplicationID:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setContentUri(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionState;->mContentUri:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setError(Lcom/android/mms/transaction/TransactionError;)V
    .locals 1
    .parameter "error"

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionState;->mError:Lcom/android/mms/transaction/TransactionError;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setReplyToApplicationID([B)V
    .locals 1
    .parameter "appId"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionState;->mReplyToApplicationID:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSchedule(J)V
    .locals 1
    .parameter "schedule"

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/android/mms/transaction/TransactionState;->mSchedule:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 83
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_0
    :try_start_1
    iput p1, p0, Lcom/android/mms/transaction/TransactionState;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    monitor-exit p0

    return-void
.end method

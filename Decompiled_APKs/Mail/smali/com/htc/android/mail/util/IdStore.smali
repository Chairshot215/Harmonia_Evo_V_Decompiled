.class public Lcom/htc/android/mail/util/IdStore;
.super Ljava/lang/Object;
.source "IdStore.java"


# instance fields
.field private mIds:Lcom/htc/android/mail/util/SparseLongBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-direct {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/util/IdStore;->mIds:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 34
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/util/IdStore;->mIds:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    monitor-exit p0

    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 14
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/util/IdStore;->mIds:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0, p1, p2}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->delete(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSeq()Ljava/lang/String;
    .locals 5

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/htc/android/mail/util/IdStore;->mIds:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v3}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I

    move-result v2

    .line 23
    .local v2, size:I
    if-eqz v2, :cond_1

    .line 24
    new-array v1, v2, [J

    .line 25
    .local v1, ids:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 26
    iget-object v3, p0, Lcom/htc/android/mail/util/IdStore;->mIds:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v3, v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->keyAt(I)J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {v1}, Lcom/htc/android/mail/MailCommon;->getLongSequence([J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 30
    .end local v0           #i:I
    .end local v1           #ids:[J
    :goto_1
    monitor-exit p0

    return-object v3

    :cond_1
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 22
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized put(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 10
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/util/IdStore;->mIds:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->put(JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    return-void

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    .line 18
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/util/IdStore;->mIds:Lcom/htc/android/mail/util/SparseLongBooleanArray;

    invoke-virtual {v0}, Lcom/htc/android/mail/util/SparseLongBooleanArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

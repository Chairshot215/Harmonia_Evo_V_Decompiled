.class public abstract Lcom/htc/android/mail/database/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 46
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 626
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mClosed:Z

    .line 629
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 146
    iput v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 147
    iput v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 150
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 2

    .prologue
    .line 434
    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 436
    monitor-exit v1

    .line 437
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected checkPosition()V
    .locals 3

    .prologue
    .line 572
    const/4 v0, -0x1

    iget v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    .line 573
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 575
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mClosed:Z

    .line 110
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 111
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->deactivateInternal()V

    .line 112
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/database/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, result:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 133
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 134
    .local v0, data:[C
    if-eqz v0, :cond_0

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 135
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 139
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 141
    .end local v0           #data:[C
    :cond_1
    return-void

    .line 137
    .restart local v0       #data:[C
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->deactivateInternal()V

    .line 82
    return-void
.end method

.method public deactivateInternal()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 93
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 0
    .parameter "position"
    .parameter "window"

    .prologue
    .line 197
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 579
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 580
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 582
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 2
    .parameter "column"

    .prologue
    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 9
    .parameter "columnName"

    .prologue
    const/4 v5, -0x1

    .line 284
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 285
    .local v4, periodIndex:I
    if-eq v4, v5, :cond_0

    .line 286
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 287
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 288
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 291
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, columnNames:[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 293
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Return Null from getColumnNames() in class:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    move v2, v5

    .line 309
    :cond_1
    :goto_0
    return v2

    .line 297
    :cond_2
    array-length v3, v0

    .line 298
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 299
    aget-object v6, v0, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    .line 309
    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/database/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, index:I
    if-gez v0, :cond_0

    .line 315
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 317
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method protected getDataSetObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 559
    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 560
    .local v0, updates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUpdates()Z
    .locals 2

    .prologue
    .line 424
    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 272
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 3
    .parameter "columnIndex"

    .prologue
    .line 541
    iget v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 543
    .local v0, updates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const/4 v1, 0x1

    .line 547
    .end local v0           #updates:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v0

    .line 265
    .local v0, cnt:I
    iget v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 240
    iget v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 4
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 158
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getCount()I

    move-result v0

    .line 160
    .local v0, count:I
    if-lt p1, v0, :cond_1

    .line 161
    iput v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 187
    :cond_0
    :goto_0
    return v1

    .line 166
    :cond_1
    if-gez p1, :cond_2

    .line 167
    iput v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 172
    :cond_2
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    if-ne p1, v2, :cond_3

    .line 173
    const/4 v1, 0x1

    goto :goto_0

    .line 176
    :cond_3
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    invoke-virtual {p0, v2, p1}, Lcom/htc/android/mail/database/AbstractCursor;->onMove(II)Z

    move-result v1

    .line 178
    .local v1, result:Z
    if-nez v1, :cond_4

    .line 179
    iput v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    goto :goto_0

    .line 181
    :cond_4
    iput p1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    .line 182
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v2, v3, :cond_0

    .line 183
    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/database/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/database/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected notifyDataSetChange()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 464
    return-void
.end method

.method protected onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    .line 490
    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 492
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 493
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 495
    :cond_0
    monitor-exit v1

    .line 496
    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 449
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 477
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    iput-boolean v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 101
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 527
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5
    .parameter "cr"
    .parameter "notifyUri"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_0
    iput-object p2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 508
    iput-object p1, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 509
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 512
    :cond_0
    new-instance v0, Lcom/htc/android/mail/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/database/AbstractCursor$SelfContentObserver;-><init>(Lcom/htc/android/mail/database/AbstractCursor;)V

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 513
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mSelfObserverRegistered:Z

    .line 515
    monitor-exit v1

    .line 516
    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 2

    .prologue
    .line 444
    iget v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 453
    iget-boolean v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 456
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 481
    return-void
.end method

.method public update(ILjava/lang/Object;)Z
    .locals 5
    .parameter "columnIndex"
    .parameter "obj"

    .prologue
    .line 393
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->supportsUpdates()Z

    move-result v2

    if-nez v2, :cond_0

    .line 394
    const/4 v2, 0x0

    .line 413
    :goto_0
    return v2

    .line 399
    :cond_0
    new-instance v1, Ljava/lang/Long;

    iget v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, Lcom/htc/android/mail/database/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 400
    .local v1, rowid:Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 401
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "null rowid. mRowIdColumnIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/android/mail/database/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_1
    iget-object v3, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v3

    .line 405
    :try_start_0
    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 406
    .local v0, row:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_2

    .line 407
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #row:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 408
    .restart local v0       #row:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/htc/android/mail/database/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/database/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    monitor-exit v3

    .line 413
    const/4 v2, 0x1

    goto :goto_0

    .line 411
    .end local v0           #row:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 329
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 377
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 369
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 353
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 361
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 345
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 337
    invoke-virtual {p0, p1, p2}, Lcom/htc/android/mail/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/htc/android/mail/database/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

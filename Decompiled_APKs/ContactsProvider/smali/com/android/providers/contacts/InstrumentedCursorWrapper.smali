.class public Lcom/android/providers/contacts/InstrumentedCursorWrapper;
.super Lcom/android/providers/contacts/CrossProcessCursorWrapper;
.source "InstrumentedCursorWrapper.java"


# static fields
.field private static mActiveCursors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/InstrumentedCursorWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreationTime:J

.field private mTag:Ljava/lang/String;

.field private mTimeToQuery:J

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mActiveCursors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "uri"
    .parameter "tag"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mCreationTime:J

    .line 62
    iput-object p2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mUri:Landroid/net/Uri;

    .line 63
    iput-object p3, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTag:Ljava/lang/String;

    .line 64
    sget-object v0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mActiveCursors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method private logQueryTime()V
    .locals 4

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTimeToQuery:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mCreationTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTimeToQuery:J

    .line 129
    iget-object v0, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTimeToQuery:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms to query URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->close()V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mCreationTime:J

    sub-long v0, v2, v4

    .line 120
    .local v0, timeToClose:J
    iget-object v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms to close for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTimeToQuery:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms since query complete)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v2, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mActiveCursors:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mActiveCursors:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cursors still open"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->getCount()I

    move-result v0

    .line 70
    .local v0, count:I
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->logQueryTime()V

    .line 71
    return v0
.end method

.method public move(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->move(I)Z

    move-result v0

    .line 91
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->logQueryTime()V

    .line 92
    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToFirst()Z

    move-result v0

    .line 77
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->logQueryTime()V

    .line 78
    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToLast()Z

    move-result v0

    .line 84
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->logQueryTime()V

    .line 85
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToNext()Z

    move-result v0

    .line 105
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->logQueryTime()V

    .line 106
    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToPosition(I)Z

    move-result v0

    .line 98
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->logQueryTime()V

    .line 99
    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToPrevious()Z

    move-result v0

    .line 112
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->logQueryTime()V

    .line 113
    return v0
.end method

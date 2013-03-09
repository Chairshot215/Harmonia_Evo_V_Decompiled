.class public abstract Lcom/htc/android/mail/database/AbstractMailCursor;
.super Lcom/htc/android/mail/database/AbstractCursor;
.source "AbstractMailCursor.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field protected mCountDeleted:I

.field protected mCursor:Landroid/database/Cursor;

.field protected mIdToPosMap:Lcom/htc/android/mail/util/SparseLongArray;

.field private mObserver:Landroid/database/DataSetObserver;

.field protected mOffsetToNewList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRegisterObserver:Z

.field protected mShowSender:Z


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/htc/android/mail/database/AbstractMailCursor;-><init>(Landroid/database/Cursor;Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Z)V
    .locals 3
    .parameter "cursor"
    .parameter "registerObserver"

    .prologue
    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lcom/htc/android/mail/database/AbstractCursor;-><init>()V

    .line 15
    const-string v0, "AbstractMailCursor"

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mIdToPosMap:Lcom/htc/android/mail/util/SparseLongArray;

    .line 26
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mOffsetToNewList:Ljava/util/LinkedList;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCountDeleted:I

    .line 28
    iput-boolean v1, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mShowSender:Z

    .line 29
    iput-boolean v1, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mRegisterObserver:Z

    .line 44
    new-instance v0, Lcom/htc/android/mail/database/AbstractMailCursor$1;

    invoke-direct {v0, p0}, Lcom/htc/android/mail/database/AbstractMailCursor$1;-><init>(Lcom/htc/android/mail/database/AbstractMailCursor;)V

    iput-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 36
    iput-object p1, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    .line 37
    iput-boolean p2, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mRegisterObserver:Z

    .line 38
    const-string v0, "AbstractMailCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AbstractMailCursor mRegisterObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mRegisterObserver:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 40
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_0
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 138
    :cond_0
    return-void
.end method

.method public abstract delete(J)V
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public abstract prepareIdToPosMap()V
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 173
    :cond_0
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public abstract setMessageStatusDelete(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
.end method

.method public abstract setMessageStatusRead(Lcom/htc/android/mail/AbsRequestController$MessageStatus;)V
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/htc/android/mail/database/AbstractMailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 180
    :cond_0
    return-void
.end method

.method public updateMailMessage()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

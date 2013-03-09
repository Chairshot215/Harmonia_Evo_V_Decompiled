.class public Lcom/android/mms/util/FakeCursorWrapper;
.super Ljava/lang/Object;
.source "FakeCursorWrapper.java"

# interfaces
.implements Landroid/database/Cursor;


# static fields
.field private static CURSOR_LOADING:Ljava/lang/String;


# instance fields
.field private mBasedPos:I

.field private mColumnName:[Ljava/lang/String;

.field private mCurrentPos:I

.field private mCursor:Landroid/database/Cursor;

.field private mEndPos:I

.field private mMaxCount:I

.field private mQueryHandler:Landroid/os/Handler;

.field private mStartPos:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    const/4 v0, -0x1

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    .line 53
    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mBasedPos:I

    .line 54
    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    .line 55
    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mMaxCount:I

    .line 59
    new-instance v0, Lcom/android/mms/util/MmsAsyncWorkHandler;

    invoke-direct {v0}, Lcom/android/mms/util/MmsAsyncWorkHandler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mQueryHandler:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 65
    invoke-virtual {p0, p1}, Lcom/android/mms/util/FakeCursorWrapper;->createFakeCursor(Landroid/database/Cursor;)V

    .line 67
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 0
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 219
    return-void
.end method

.method public createFakeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 70
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mMaxCount:I

    .line 71
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mBasedPos:I

    .line 72
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mBasedPos:I

    add-int/lit8 v0, v0, -0x32

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mBasedPos:I

    add-int/lit8 v0, v0, -0x32

    :goto_0
    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    .line 73
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mBasedPos:I

    add-int/lit8 v0, v0, 0x32

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mMaxCount:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mBasedPos:I

    add-int/lit8 v0, v0, 0x32

    :goto_1
    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    .line 75
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/MessageUtils;->cloneCursorByPosition(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 79
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mColumnName:[Ljava/lang/String;

    .line 81
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mBasedPos:I

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    .line 87
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mMaxCount:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 123
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"

    .prologue
    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mColumnName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mColumnName:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    .end local v0           #i:I
    :goto_1
    return v0

    .line 138
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 2
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/android/mms/util/FakeCursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 149
    .local v0, index:I
    if-gez v0, :cond_0

    .line 150
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 151
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mColumnName:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mColumnName:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 160
    :cond_0
    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mColumnName:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mMaxCount:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 169
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-le v0, v1, :cond_1

    .line 170
    :cond_0
    const-wide/16 v0, 0x0

    .line 171
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 4
    .parameter "columnIndex"

    .prologue
    .line 183
    iget v2, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v3, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v3, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-le v2, v3, :cond_1

    .line 184
    :cond_0
    const/4 v1, 0x0

    .line 193
    :goto_0
    return v1

    .line 186
    :cond_1
    const/4 v1, 0x0

    .line 188
    .local v1, value:I
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 197
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-le v0, v1, :cond_1

    .line 198
    :cond_0
    const-wide/16 v0, 0x0

    .line 200
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2
    .parameter "columnIndex"

    .prologue
    .line 209
    sget-object v0, Lcom/android/mms/util/FakeCursorWrapper;->CURSOR_LOADING:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090167

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/util/FakeCursorWrapper;->CURSOR_LOADING:Ljava/lang/String;

    .line 212
    :cond_0
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-le v0, v1, :cond_2

    .line 213
    :cond_1
    sget-object v0, Lcom/android/mms/util/FakeCursorWrapper;->CURSOR_LOADING:Ljava/lang/String;

    .line 214
    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public hasUpdates()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 2

    .prologue
    .line 237
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mBasedPos:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFromFirstPosition()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLast()Z
    .locals 2

    .prologue
    .line 246
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mMaxCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public isValidPos(I)Z
    .locals 1
    .parameter "pos"

    .prologue
    .line 109
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-le p1, v0, :cond_1

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public move(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    .line 262
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    .line 263
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-gt v0, v1, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v2, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 267
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public moveToLast()Z
    .locals 2

    .prologue
    .line 255
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mMaxCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    .line 256
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-gt v0, v1, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 258
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public moveToNext()Z
    .locals 3

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/mms/util/FakeCursorWrapper;->isLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    .line 285
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-gt v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v2, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 289
    :cond_0
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveToPosition(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 272
    iput p1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    .line 273
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-gt v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v2, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 278
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public moveToPrevious()Z
    .locals 3

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/mms/util/FakeCursorWrapper;->isFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 302
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    .line 304
    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mEndPos:I

    if-gt v0, v1, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/mms/util/FakeCursorWrapper;->mCurrentPos:I

    iget v2, p0, Lcom/android/mms/util/FakeCursorWrapper;->mStartPos:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 307
    :cond_0
    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 315
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 319
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "extras"

    .prologue
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 333
    return-void
.end method

.method public supportsUpdates()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 338
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0
    .parameter "observer"

    .prologue
    .line 342
    return-void
.end method

.method public updateBlob(I[B)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1
    .parameter "columnIndex"
    .parameter "value"

    .prologue
    .line 385
    const/4 v0, 0x0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

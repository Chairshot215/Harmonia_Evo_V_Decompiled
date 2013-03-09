.class public Lcom/android/providers/contacts/ReorderingCursorWrapper;
.super Landroid/database/AbstractCursor;
.source "ReorderingCursorWrapper.java"


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private final mPositionMap:[I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;[I)V
    .locals 2
    .parameter "cursor"
    .parameter "positionMap"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 37
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    array-length v1, p2

    if-eq v0, v1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cursor and position map have different sizes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    .line 42
    iput-object p2, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mPositionMap:[I

    .line 43
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 48
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 49
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .parameter "column"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/contacts/ReorderingCursorWrapper;->mPositionMap:[I

    aget v1, v1, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

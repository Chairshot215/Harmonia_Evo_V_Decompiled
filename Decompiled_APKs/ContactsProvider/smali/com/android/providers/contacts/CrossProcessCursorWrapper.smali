.class public Lcom/android/providers/contacts/CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "CrossProcessCursorWrapper.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# instance fields
.field private final mCrossProcessCursor:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    .line 36
    return-void
.end method

.method private getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 39
    instance-of v0, p1, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Landroid/database/CrossProcessCursor;

    .line 44
    .end local p1
    :goto_0
    return-object p1

    .line 41
    .restart local p1
    :cond_0
    instance-of v0, p1, Landroid/database/CursorWrapper;

    if-eqz v0, :cond_1

    .line 42
    check-cast p1, Landroid/database/CursorWrapper;

    .end local p1
    invoke-virtual {p1}, Landroid/database/CursorWrapper;->getWrappedCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->getCrossProcessCursor(Landroid/database/Cursor;)Landroid/database/CrossProcessCursor;

    move-result-object p1

    goto :goto_0

    .line 44
    .restart local p1
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 2
    .parameter "pos"
    .parameter "window"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 55
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wrapped cursor is not a cross-process cursor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    return-object v0

    .line 62
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wrapped cursor is not a cross-process cursor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    return v0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Wrapped cursor is not a cross-process cursor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

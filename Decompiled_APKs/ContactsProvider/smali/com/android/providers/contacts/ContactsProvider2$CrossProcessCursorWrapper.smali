.class public Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;
.super Landroid/database/CursorWrapper;
.source "ContactsProvider2.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactsProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CrossProcessCursorWrapper"
.end annotation


# instance fields
.field private mCrossProcessCursor:Landroid/database/CrossProcessCursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 10267
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 10265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    .line 10268
    instance-of v0, p1, Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 10269
    check-cast p1, Landroid/database/CrossProcessCursor;

    .end local p1
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    .line 10271
    :cond_0
    return-void
.end method


# virtual methods
.method public fillWindow(ILandroid/database/CursorWindow;)V
    .locals 1
    .parameter "pos"
    .parameter "winow"

    .prologue
    .line 10274
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 10275
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->fillWindow(ILandroid/database/CursorWindow;)V

    .line 10277
    :cond_0
    return-void
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .locals 1

    .prologue
    .line 10280
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 10281
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0}, Landroid/database/CrossProcessCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    .line 10284
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(II)Z
    .locals 1
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 10289
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    if-eqz v0, :cond_0

    .line 10290
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsProvider2$CrossProcessCursorWrapper;->mCrossProcessCursor:Landroid/database/CrossProcessCursor;

    invoke-interface {v0, p1, p2}, Landroid/database/CrossProcessCursor;->onMove(II)Z

    move-result v0

    .line 10293
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

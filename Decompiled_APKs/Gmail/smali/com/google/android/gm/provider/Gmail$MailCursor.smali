.class public Lcom/google/android/gm/provider/Gmail$MailCursor;
.super Landroid/database/ContentObserver;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MailCursor"
.end annotation


# instance fields
.field protected mAccount:Ljava/lang/String;

.field protected mCursor:Landroid/database/Cursor;

.field private final mObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gm/provider/Gmail$MailCursorObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateValues:Landroid/content/ContentValues;


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "handler"
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 1997
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1998
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mObservers:Ljava/util/Set;

    .line 1999
    iput-object p3, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    .line 2000
    iput-object p2, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mAccount:Ljava/lang/String;

    .line 2001
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2002
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkCursor()V
    .locals 2

    .prologue
    .line 2218
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 2219
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot read from an insertion cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2222
    :cond_0
    return-void
.end method

.method protected checkThread()V
    .locals 0

    .prologue
    .line 2023
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 2139
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->release()V

    .line 2140
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2143
    :cond_0
    return-void
.end method

.method public final count()I
    .locals 1

    .prologue
    .line 2058
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2059
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 2061
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final deactivate()V
    .locals 1

    .prologue
    .line 2122
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2123
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 2125
    :cond_0
    return-void
.end method

.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 2204
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Lcom/google/android/gm/provider/Gmail$CursorError;
    .locals 3

    .prologue
    .line 2161
    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2162
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "error"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2163
    .local v1, stringError:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail$CursorError;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$CursorError;

    move-result-object v2

    return-object v2
.end method

.method public getStatus()Lcom/google/android/gm/provider/Gmail$CursorStatus;
    .locals 3

    .prologue
    .line 2155
    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2156
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2157
    .local v1, stringStatus:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/provider/Gmail$CursorStatus;->valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$CursorStatus;

    move-result-object v2

    return-object v2
.end method

.method protected getStringInColumn(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->checkCursor()V

    .line 2229
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/gm/provider/Gmail;->toNonnullString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/gm/provider/Gmail;->access$1100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUpdateValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mUpdateValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 2034
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mUpdateValues:Landroid/content/ContentValues;

    .line 2036
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mUpdateValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

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
    .locals 1

    .prologue
    .line 2079
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final moveTo(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 2097
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->checkCursor()V

    .line 2098
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->checkThread()V

    .line 2099
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 2100
    .local v0, moved:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->onCursorPositionChanged()V

    .line 2101
    :cond_0
    return v0
.end method

.method public final next()Z
    .locals 2

    .prologue
    .line 2113
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->checkCursor()V

    .line 2114
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->checkThread()V

    .line 2115
    iget-object v1, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 2116
    .local v0, moved:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MailCursor;->onCursorPositionChanged()V

    .line 2117
    :cond_0
    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 2212
    iget-object v2, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mObservers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/provider/Gmail$MailCursorObserver;

    .line 2213
    .local v1, o:Lcom/google/android/gm/provider/Gmail$MailCursorObserver;
    invoke-interface {v1, p0}, Lcom/google/android/gm/provider/Gmail$MailCursorObserver;->onCursorChanged(Lcom/google/android/gm/provider/Gmail$MailCursor;)V

    goto :goto_0

    .line 2215
    .end local v1           #o:Lcom/google/android/gm/provider/Gmail$MailCursorObserver;
    :cond_0
    return-void
.end method

.method protected onCursorPositionChanged()V
    .locals 1

    .prologue
    .line 2047
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mUpdateValues:Landroid/content/ContentValues;

    .line 2048
    return-void
.end method

.method public final position()I
    .locals 1

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 2073
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final release()V
    .locals 1

    .prologue
    .line 2132
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2134
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 2136
    :cond_0
    return-void
.end method

.method public requery()V
    .locals 1

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/google/android/gm/provider/Gmail$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 2152
    return-void
.end method

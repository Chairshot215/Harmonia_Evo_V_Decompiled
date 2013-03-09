.class Lcom/google/android/talk/GmailProviderWrapper$MailCursor;
.super Landroid/database/ContentObserver;
.source "GmailProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GmailProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MailCursor"
.end annotation


# instance fields
.field protected final mAccount:Ljava/lang/String;

.field protected final mCursor:Landroid/database/Cursor;

.field private final mObservers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/talk/GmailProviderWrapper$MailCursorObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateValues:Landroid/content/ContentValues;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 1
    .parameter "account"
    .parameter "cursor"

    .prologue
    .line 388
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mObservers:Ljava/util/Set;

    .line 390
    iput-object p2, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    .line 391
    iput-object p1, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mAccount:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 393
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkCursor()V
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot read from an insertion cursor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 565
    :cond_0
    return-void
.end method

.method protected checkThread()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public final count()I
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 547
    const/4 v0, 0x0

    return v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method protected getStringInColumn(I)Ljava/lang/String;
    .locals 1
    .parameter "columnIndex"

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->checkCursor()V

    .line 572
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/google/android/talk/GmailProviderWrapper;->toNonnullString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/talk/GmailProviderWrapper;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUpdateValues()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mUpdateValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mUpdateValues:Landroid/content/ContentValues;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mUpdateValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method public final moveTo(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 475
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->checkCursor()V

    .line 476
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->checkThread()V

    .line 477
    iget-object v1, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    .line 478
    .local v0, moved:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->onCursorPositionChanged()V

    .line 479
    :cond_0
    return v0
.end method

.method public final next()Z
    .locals 2

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->checkCursor()V

    .line 492
    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->checkThread()V

    .line 493
    iget-object v1, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 494
    .local v0, moved:Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->onCursorPositionChanged()V

    .line 495
    :cond_0
    return v0
.end method

.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 555
    iget-object v2, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mObservers:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/GmailProviderWrapper$MailCursorObserver;

    .line 556
    .local v1, o:Lcom/google/android/talk/GmailProviderWrapper$MailCursorObserver;
    invoke-interface {v1, p0}, Lcom/google/android/talk/GmailProviderWrapper$MailCursorObserver;->onCursorChanged(Lcom/google/android/talk/GmailProviderWrapper$MailCursor;)V

    goto :goto_0

    .line 558
    .end local v1           #o:Lcom/google/android/talk/GmailProviderWrapper$MailCursorObserver;
    :cond_0
    return-void
.end method

.method protected onCursorPositionChanged()V
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mUpdateValues:Landroid/content/ContentValues;

    .line 435
    return-void
.end method

.method public final position()I
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 460
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public final registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/talk/GmailProviderWrapper$MailCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 511
    return-void
.end method

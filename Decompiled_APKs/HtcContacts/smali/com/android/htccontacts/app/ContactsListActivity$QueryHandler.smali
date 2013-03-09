.class public Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactsListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/ContactsListActivity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoadingJoinSuggestions:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1448
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1445
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->mLoadingJoinSuggestions:Z

    .line 1449
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/htccontacts/app/ContactsListActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1450
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 9
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/16 v1, 0x3e8

    const/16 v5, 0x64

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x3e9

    .line 1458
    iget-object v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/app/ContactsListActivity;

    .line 1460
    .local v8, activity:Lcom/android/htccontacts/app/ContactsListActivity;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1461
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1467
    :goto_0
    if-eq p1, v1, :cond_1

    if-eq p1, v2, :cond_1

    const/16 v0, 0x3ea

    if-ne p1, v0, :cond_3

    :cond_1
    if-eqz p3, :cond_3

    .line 1469
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1470
    iget-boolean v0, p0, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->mLoadingJoinSuggestions:Z

    if-eqz v0, :cond_5

    .line 1471
    iput-boolean v3, p0, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->mLoadingJoinSuggestions:Z

    .line 1472
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1477
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 1478
    const/4 v2, 0x0

    iget-object v0, v8, Lcom/android/htccontacts/app/ContactsListActivity;->mQuery:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactFilterUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id != "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v5, v8, Lcom/android/htccontacts/app/ContactsListActivity;->mQueryAggregateId:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    sget-object v0, Lcom/android/htccontacts/app/ContactsListActivity;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/htccontacts/app/ContactsListActivity;->getSortOrder([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    :cond_3
    :goto_1
    return-void

    .line 1464
    :cond_4
    iput-boolean v3, v8, Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z

    goto :goto_0

    .line 1485
    :cond_5
    if-ne v2, p1, :cond_8

    .line 1486
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v5, :cond_6

    .line 1487
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1488
    iput-boolean v4, v8, Lcom/android/htccontacts/app/ContactsListActivity;->mHasFirstQueryCompleted:Z

    .line 1497
    :cond_6
    :goto_2
    invoke-virtual {v8, p3}, Lcom/android/htccontacts/app/ContactsListActivity;->setContactsItemListAdapterCursor(Landroid/database/Cursor;)V

    .line 1498
    if-eqz p3, :cond_7

    .line 1499
    invoke-virtual {v8, p3}, Lcom/android/htccontacts/app/ContactsListActivity;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V

    .line 1512
    :cond_7
    if-ne v2, p1, :cond_3

    .line 1514
    iget v0, v8, Lcom/android/htccontacts/app/ContactsListActivity;->mMode:I

    const v1, 0x8000004

    if-ne v0, v1, :cond_9

    .line 1515
    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity;->startQuery()V

    goto :goto_1

    .line 1493
    :cond_8
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1494
    iput-boolean v4, v8, Lcom/android/htccontacts/app/ContactsListActivity;->mHasFirstQueryCompleted:Z

    goto :goto_2

    .line 1517
    :cond_9
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lt v0, v5, :cond_3

    .line 1518
    invoke-virtual {v8}, Lcom/android/htccontacts/app/ContactsListActivity;->startQuery()V

    goto :goto_1

    .line 1534
    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public setLoadingJoinSuggestions(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1453
    iput-boolean p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$QueryHandler;->mLoadingJoinSuggestions:Z

    .line 1454
    return-void
.end method

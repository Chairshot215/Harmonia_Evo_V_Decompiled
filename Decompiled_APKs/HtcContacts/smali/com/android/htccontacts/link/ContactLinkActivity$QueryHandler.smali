.class public Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ContactLinkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/link/ContactLinkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "QueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/link/ContactLinkActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/htccontacts/link/ContactLinkActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    .line 1420
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 1421
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p2, Lcom/android/htccontacts/link/ContactLinkActivity;

    .end local p2
    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 1422
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 1426
    const-string v1, "ContactLinkActivity"

    const-string v2, "-----------onQueryComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    if-eqz p3, :cond_0

    .line 1428
    const-string v1, "ContactLinkActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-----------cursor:count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/link/ContactLinkActivity;

    .line 1431
    .local v0, activity:Lcom/android/htccontacts/link/ContactLinkActivity;
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1432
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 1434
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->isClearSuggestion:Z
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1800(Lcom/android/htccontacts/link/ContactLinkActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1435
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveSuggestContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1000(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    invoke-static {v1, v2, p3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1900(Lcom/android/htccontacts/link/ContactLinkActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 1439
    :goto_0
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2000(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2000(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1441
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;
    invoke-static {v1, v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2002(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/LinkSuggestListAdapter;)Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    .line 1443
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    new-instance v2, Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$900(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v0, p3, v3}, Lcom/android/htccontacts/link/LinkSuggestListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_suggest:Lcom/android/htccontacts/link/LinkSuggestListAdapter;
    invoke-static {v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2002(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/LinkSuggestListAdapter;)Lcom/android/htccontacts/link/LinkSuggestListAdapter;

    .line 1445
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->setAdapter()V

    .line 1471
    :cond_2
    :goto_1
    return-void

    .line 1437
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAddSuggestContactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$900(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    invoke-static {v1, v2, p3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1900(Lcom/android/htccontacts/link/ContactLinkActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    goto :goto_0

    .line 1447
    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 1449
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2100(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    invoke-static {v1, v2, p3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1900(Lcom/android/htccontacts/link/ContactLinkActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 1450
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mPickLinkRawCtactIds:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2200(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v2

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->syncOnCursor(Ljava/util/ArrayList;Landroid/database/Cursor;)V
    invoke-static {v1, v2, p3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$1900(Lcom/android/htccontacts/link/ContactLinkActivity;Ljava/util/ArrayList;Landroid/database/Cursor;)V

    .line 1452
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2300(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/LinkContactListAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1453
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2300(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/LinkContactListAdapter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/link/LinkContactListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1454
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;
    invoke-static {v1, v4}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2302(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/LinkContactListAdapter;)Lcom/android/htccontacts/link/LinkContactListAdapter;

    .line 1460
    :cond_5
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    new-instance v2, Lcom/android/htccontacts/link/LinkContactListAdapter;

    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mRemoveLinkRawCtactIds:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2100(Lcom/android/htccontacts/link/ContactLinkActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v0, p3, v3}, Lcom/android/htccontacts/link/LinkContactListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/ArrayList;)V

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mAdapter_link:Lcom/android/htccontacts/link/LinkContactListAdapter;
    invoke-static {v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2302(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/LinkContactListAdapter;)Lcom/android/htccontacts/link/LinkContactListAdapter;

    .line 1461
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->setAdapter()V

    .line 1462
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #calls: Lcom/android/htccontacts/link/ContactLinkActivity;->setLinkRawContacts()V
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2400(Lcom/android/htccontacts/link/ContactLinkActivity;)V

    goto :goto_1

    .line 1466
    :cond_6
    if-eqz p3, :cond_2

    .line 1468
    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$QueryHandler;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mWorkerHandler:Lcom/android/htccontacts/BackgroundWorkerHandler;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$2500(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/BackgroundWorkerHandler;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/htccontacts/BackgroundWorkerHandler;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

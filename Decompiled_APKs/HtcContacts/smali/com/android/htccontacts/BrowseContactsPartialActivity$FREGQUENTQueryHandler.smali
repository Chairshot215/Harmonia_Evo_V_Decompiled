.class public Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "BrowseContactsPartialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsPartialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FREGQUENTQueryHandler"
.end annotation


# instance fields
.field protected final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/BrowseContactsPartialActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 603
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 604
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/htccontacts/BrowseContactsPartialActivity;

    .end local p1
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 605
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 609
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsPartialActivity$FREGQUENTQueryHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/BrowseContactsPartialActivity;

    .line 611
    .local v0, activity:Lcom/android/htccontacts/BrowseContactsPartialActivity;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 612
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 618
    :goto_0
    const/16 v1, 0x7da

    if-ne p1, v1, :cond_2

    if-eqz p3, :cond_2

    .line 619
    if-nez v0, :cond_1

    invoke-virtual {v0}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 620
    :cond_1
    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/app/ContactsListActivity;->mHasFirstQueryCompleted:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->access$202(Lcom/android/htccontacts/BrowseContactsPartialActivity;Z)Z

    .line 622
    invoke-virtual {v0, p3}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->setContactsItemListAdapterCursorForFrequentContact(Landroid/database/Cursor;)V

    .line 623
    if-eqz p3, :cond_2

    .line 624
    #calls: Lcom/android/htccontacts/BrowseContactsPartialActivity;->onQueryAndAdapterFinish(Landroid/database/Cursor;)V
    invoke-static {v0, p3}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->access$300(Lcom/android/htccontacts/BrowseContactsPartialActivity;Landroid/database/Cursor;)V

    .line 631
    :cond_2
    :goto_1
    return-void

    .line 615
    :cond_3
    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/app/ContactsListActivity;->mIsDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/BrowseContactsPartialActivity;->access$102(Lcom/android/htccontacts/BrowseContactsPartialActivity;Z)Z

    goto :goto_0

    .line 627
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

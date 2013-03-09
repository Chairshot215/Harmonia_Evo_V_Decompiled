.class Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;
.super Landroid/os/AsyncTask;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyProfileAsyncQuery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;",
        ">;"
    }
.end annotation


# instance fields
.field mMyContactId:J

.field mProfileLookupUri:Landroid/net/Uri;

.field mRefListActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/BaseListActivity;",
            ">;"
        }
    .end annotation
.end field

.field mRefMyProfileView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Ljava/lang/ref/WeakReference;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter "myProfileView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/app/BaseListActivity;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1718
    .local p2, refListActivity:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/app/BaseListActivity;>;"
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1715
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mMyContactId:J

    .line 1716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mProfileLookupUri:Landroid/net/Uri;

    .line 1719
    iput-object p2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    .line 1720
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mRefMyProfileView:Ljava/lang/ref/WeakReference;

    .line 1721
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;
    .locals 11
    .parameter "params"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    .line 1725
    new-instance v8, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;

    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    invoke-direct {v8, v1, v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;-><init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Lcom/android/htccontacts/BrowseContactsAllActivity2$1;)V

    .line 1726
    .local v8, myProfileData:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 1810
    :cond_0
    :goto_0
    return-object v8

    .line 1730
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/app/BaseListActivity;

    .line 1731
    .local v7, listActivity:Lcom/android/htccontacts/app/BaseListActivity;
    if-eqz v7, :cond_0

    .line 1788
    invoke-virtual {v7}, Lcom/android/htccontacts/app/BaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1789
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/htccontacts/util/Constants;->PROJECTION_CONTACT:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1790
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1791
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1792
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mMyContactId:J

    .line 1794
    const-string v1, "display_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->displayName:Ljava/lang/String;

    .line 1795
    const-string v1, "photo_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v8, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->photoId:J

    .line 1796
    const-string v1, "lookup"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->lookup:Ljava/lang/String;

    .line 1798
    iget-wide v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mMyContactId:J

    cmp-long v1, v9, v1

    if-gez v1, :cond_2

    .line 1799
    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->isAvailable:Z

    .line 1802
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1803
    const/4 v6, 0x0

    .line 1805
    :cond_3
    iget-wide v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mMyContactId:J

    cmp-long v1, v9, v1

    if-gez v1, :cond_0

    .line 1806
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mMyContactId:J

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mProfileLookupUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1710
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->doInBackground([Ljava/lang/Void;)Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;)V
    .locals 10
    .parameter "result"

    .prologue
    .line 1815
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    if-nez v6, :cond_1

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1818
    :cond_1
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/app/BaseListActivity;

    .line 1819
    .local v2, listActivity:Lcom/android/htccontacts/app/BaseListActivity;
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->mRefMyProfileView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 1820
    .local v3, myContactView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 1821
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->get2LineText()Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;

    move-result-object v5

    .line 1822
    .local v5, textWidget:Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;
    invoke-virtual {v3}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->getQuickContactBadge()Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-result-object v1

    .line 1823
    .local v1, badgeWidget:Lcom/htc/widget/HtcListItemQuickContactBadge;
    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v0

    .line 1824
    .local v0, badge:Lcom/htc/widget/QuickContactBadge;
    iget-object v6, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->displayName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1825
    const v6, 0x7f0a0024

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(I)V

    .line 1830
    :goto_1
    const/4 v4, 0x0

    .line 1831
    .local v4, photo:Landroid/graphics/Bitmap;
    const-wide/16 v6, 0x0

    iget-wide v8, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->photoId:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 1832
    iget-wide v6, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->photoId:J

    invoke-static {v6, v7}, Lcom/android/htccontacts/util/PhotoUtils;->loadThumbnail(J)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1834
    :cond_2
    if-nez v4, :cond_4

    .line 1835
    const v6, 0x2080846

    invoke-virtual {v0, v6}, Lcom/htc/widget/QuickContactBadge;->setImageResourceWithoutRelayout(I)V

    .line 1840
    :goto_2
    iget-object v6, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->this$1:Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;

    iget-boolean v7, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->isAvailable:Z

    #setter for: Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->mIsAvailableMyContact:Z
    invoke-static {v6, v7}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;->access$2702(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter;Z)Z

    goto :goto_0

    .line 1828
    .end local v4           #photo:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v6, p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/widget/HtcListItem2LineTextIcon;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_1

    .line 1838
    .restart local v4       #photo:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v0, v4}, Lcom/htc/widget/QuickContactBadge;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1710
    check-cast p1, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfileAsyncQuery;->onPostExecute(Lcom/android/htccontacts/BrowseContactsAllActivity2$MyProfileAndContactsListAdapter$MyProfile;)V

    return-void
.end method

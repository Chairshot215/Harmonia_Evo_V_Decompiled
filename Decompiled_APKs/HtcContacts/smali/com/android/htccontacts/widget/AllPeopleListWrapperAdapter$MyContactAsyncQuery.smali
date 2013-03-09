.class public Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;
.super Landroid/os/AsyncTask;
.source "AllPeopleListWrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyContactAsyncQuery"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;",
        ">;"
    }
.end annotation


# static fields
.field static mMyContactId:J

.field static mMyContactRawId:J


# instance fields
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

.field mRefMyContactView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 114
    sput-wide v0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactRawId:J

    .line 115
    sput-wide v0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "myContactView"
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
    .line 117
    .local p1, refListActivity:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/htccontacts/app/BaseListActivity;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mRefMyContactView:Ljava/lang/ref/WeakReference;

    .line 120
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;
    .locals 12
    .parameter "params"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v4, 0x0

    .line 124
    new-instance v9, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;

    invoke-direct {v9, v4}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;-><init>(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$1;)V

    .line 125
    .local v9, myContactData:Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-object v9

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/app/BaseListActivity;

    .line 131
    .local v8, listActivity:Lcom/android/htccontacts/app/BaseListActivity;
    if-eqz v8, :cond_0

    .line 133
    sget-wide v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactRawId:J

    cmp-long v1, v1, v10

    if-eqz v1, :cond_2

    sget-wide v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_3

    .line 134
    :cond_2
    invoke-virtual {v8}, Lcom/android/htccontacts/app/BaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v6

    .line 135
    .local v6, bundle:Landroid/os/Bundle;
    const-string v1, "_id"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactRawId:J

    .line 136
    const-string v1, "contact_id"

    invoke-virtual {v6, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    sput-wide v1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    .line 139
    .end local v6           #bundle:Landroid/os/Bundle;
    :cond_3
    invoke-virtual {v8}, Lcom/android/htccontacts/app/BaseListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 141
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "photo_id"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "lookup"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v10, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mMyContactId:J

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 147
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 149
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 150
    const-string v1, "display_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->displayName:Ljava/lang/String;

    .line 151
    const-string v1, "photo_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v9, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->photoId:J

    .line 152
    const-string v1, "lookup"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->lookup:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->doInBackground([Ljava/lang/Void;)Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;)V
    .locals 9
    .parameter "result"

    .prologue
    .line 165
    iget-object v5, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mRefListActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/app/BaseListActivity;

    .line 169
    .local v0, listActivity:Lcom/android/htccontacts/app/BaseListActivity;
    iget-object v5, p0, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->mRefMyContactView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 170
    .local v1, myContactView:Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 171
    const v5, 0x2020010

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 172
    .local v4, primaryTextView:Landroid/widget/TextView;
    const v5, 0x202004c

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 173
    .local v3, photoView:Landroid/widget/ImageView;
    iget-object v5, p1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->displayName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 174
    const v5, 0x7f0a0024

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :goto_1
    const/4 v2, 0x0

    .line 180
    .local v2, photo:Landroid/graphics/Bitmap;
    const-wide/16 v5, 0x0

    iget-wide v7, p1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->photoId:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 181
    iget-wide v5, p1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->photoId:J

    invoke-static {v5, v6}, Lcom/android/htccontacts/util/PhotoUtils;->loadThumbnail(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 183
    :cond_2
    if-nez v2, :cond_4

    .line 184
    const v5, 0x2080846

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    goto :goto_0

    .line 177
    .end local v2           #photo:Landroid/graphics/Bitmap;
    :cond_3
    iget-object v5, p1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 187
    .restart local v2       #photo:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmapWithoutRelayout(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    check-cast p1, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactAsyncQuery;->onPostExecute(Lcom/android/htccontacts/widget/AllPeopleListWrapperAdapter$MyContactData;)V

    return-void
.end method

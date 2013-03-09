.class final Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;
.super Lcom/android/htccontacts/util/WeakAsyncTask;
.source "AttachImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/AttachImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AttachImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/util/WeakAsyncTask",
        "<",
        "Lcom/android/htccontacts/AttachImage$TaskData;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        "Lcom/android/htccontacts/AttachImage;",
        ">;"
    }
.end annotation


# instance fields
.field mData:Lcom/android/htccontacts/AttachImage$TaskData;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/AttachImage;)V
    .locals 0
    .parameter "target"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/android/htccontacts/util/WeakAsyncTask;-><init>(Ljava/lang/Object;)V

    .line 335
    return-void
.end method


# virtual methods
.method protected varargs doInBackground(Lcom/android/htccontacts/AttachImage;[Lcom/android/htccontacts/AttachImage$TaskData;)Ljava/lang/Boolean;
    .locals 6
    .parameter "target"
    .parameter "params"

    .prologue
    .line 339
    const/4 v4, 0x0

    aget-object v2, p2, v4

    .line 340
    .local v2, data:Lcom/android/htccontacts/AttachImage$TaskData;
    iput-object v2, p0, Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;->mData:Lcom/android/htccontacts/AttachImage$TaskData;

    .line 341
    iget-wide v0, v2, Lcom/android/htccontacts/AttachImage$TaskData;->contactId:J

    .line 342
    .local v0, contactId:J
    iget-object v3, v2, Lcom/android/htccontacts/AttachImage$TaskData;->bitmap:Landroid/graphics/Bitmap;

    .line 343
    .local v3, photo:Landroid/graphics/Bitmap;
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    if-eqz v3, :cond_0

    .line 344
    invoke-static {p1, v3, v0, v1}, Lcom/android/htccontacts/util/LinkUtils;->replaceContactPhotoForContact(Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    .line 346
    iget-object v4, p0, Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;->mData:Lcom/android/htccontacts/AttachImage$TaskData;

    iget-wide v4, v4, Lcom/android/htccontacts/AttachImage$TaskData;->contactId:J

    invoke-static {p1, v4, v5}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    .line 349
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 350
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 352
    :cond_1
    const/4 v3, 0x0

    .line 353
    iget-object v4, p0, Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;->mData:Lcom/android/htccontacts/AttachImage$TaskData;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/htccontacts/AttachImage$TaskData;->bitmap:Landroid/graphics/Bitmap;

    .line 354
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    check-cast p1, Lcom/android/htccontacts/AttachImage;

    .end local p1
    check-cast p2, [Lcom/android/htccontacts/AttachImage$TaskData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;->doInBackground(Lcom/android/htccontacts/AttachImage;[Lcom/android/htccontacts/AttachImage$TaskData;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/htccontacts/AttachImage;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "target"
    .parameter "result"

    .prologue
    .line 359
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/util/WeakAsyncTask;->onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 361
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 330
    check-cast p1, Lcom/android/htccontacts/AttachImage;

    .end local p1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;->onPostExecute(Lcom/android/htccontacts/AttachImage;Ljava/lang/Boolean;)V

    return-void
.end method

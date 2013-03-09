.class Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;
.super Landroid/content/AsyncTaskLoader;
.source "MyContactLayerCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field activityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 409
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;->activityRef:Ljava/lang/ref/WeakReference;

    .line 410
    invoke-static {}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MyContactLayerCarouselActivty"

    const-string v1, "MyLoader constractor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;->activityRef:Ljava/lang/ref/WeakReference;

    .line 412
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/net/Uri;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 416
    const/4 v10, 0x0

    .line 418
    .local v10, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;

    .line 419
    .local v6, activity:Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v11, v10

    .line 440
    .end local v10           #uri:Landroid/net/Uri;
    .local v11, uri:Landroid/net/Uri;
    :goto_0
    return-object v11

    .line 423
    .end local v11           #uri:Landroid/net/Uri;
    .restart local v10       #uri:Landroid/net/Uri;
    :cond_1
    const-wide/16 v8, -0x1

    .line 424
    .local v8, myProfileContactId:J
    invoke-virtual {v6}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/htccontacts/util/Constants;->PROJECTION_CONTACT:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 425
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 426
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 427
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 428
    invoke-static {}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->access$400()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MyContactLayerCarouselActivty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyLoader loadInBackground myProfileContactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 431
    const/4 v7, 0x0

    .line 434
    :cond_3
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_4

    .line 435
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 436
    invoke-static {}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity;->access$400()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MyContactLayerCarouselActivty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MyLoader loadInBackground uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v11, v10

    .line 440
    .end local v10           #uri:Landroid/net/Uri;
    .restart local v11       #uri:Landroid/net/Uri;
    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;->loadInBackground()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 455
    invoke-virtual {p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;->onStopLoading()V

    .line 456
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;->forceLoad()V

    .line 446
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/htccontacts/mycontact/MyContactLayerCarouselActivity$MyLoader;->cancelLoad()Z

    .line 451
    return-void
.end method

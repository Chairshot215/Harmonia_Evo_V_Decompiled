.class public final Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;
.super Ljava/lang/Object;
.source "HtcContactsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/provider/HtcContactsContract$Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MyContactCard"
.end annotation


# static fields
.field public static final MY_CONTACT_ACCOUNT_NAME:Ljava/lang/String; = "HTC"

.field public static final MY_CONTACT_ACCOUNT_TYPE:Ljava/lang/String; = "DeviceOnly"

.field public static final MY_CONTACT_SOURCE_ID:Ljava/lang/String; = "HTC_01"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIdIfHasData(Landroid/content/ContentResolver;)J
    .locals 12
    .parameter "resolver"

    .prologue
    const/4 v4, 0x0

    .line 670
    const-wide/16 v10, 0x0

    .line 671
    .local v10, myContactId:J
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;->getMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v6

    .line 672
    .local v6, bundleId:Landroid/os/Bundle;
    if-eqz v6, :cond_1

    const-string v0, "_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 673
    const-string v0, "_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 674
    .local v8, lMyRawContactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v8

    if-gez v0, :cond_1

    .line 675
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_contact_id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 680
    .local v7, cursorData:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 681
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 682
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 683
    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 688
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 693
    .end local v7           #cursorData:Landroid/database/Cursor;
    .end local v8           #lMyRawContactId:J
    :cond_1
    return-wide v10

    .line 686
    .restart local v7       #cursorData:Landroid/database/Cursor;
    .restart local v8       #lMyRawContactId:J
    :cond_2
    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_0
.end method

.method public static getMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .locals 15
    .parameter "resolver"

    .prologue
    .line 569
    if-nez p0, :cond_1

    const/4 v8, 0x0

    .line 597
    :cond_0
    :goto_0
    return-object v8

    .line 571
    :cond_1
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 572
    .local v8, bundleIds:Landroid/os/Bundle;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "contact_id"

    aput-object v1, v2, v0

    .line 576
    .local v2, COLUMNS:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 577
    .local v7, _ID:I
    const/4 v6, 0x1

    .line 578
    .local v6, CONTACT_ID:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 579
    .local v14, selection:Ljava/lang/StringBuilder;
    const-string v0, "account_name=? AND account_type=? AND sourceid=?"

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "HTC"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "DeviceOnly"

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-string v1, "HTC_01"

    aput-object v1, v4, v0

    .line 583
    .local v4, selectionArgs:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 584
    .local v9, cursorRawContact:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 585
    const/4 v0, 0x1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 587
    .local v12, lMyRawContactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 588
    .local v10, lMyContactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v0, v12

    if-gez v0, :cond_2

    const-wide/16 v0, 0x0

    cmp-long v0, v0, v10

    if-gez v0, :cond_2

    .line 589
    const-string v0, "_id"

    invoke-virtual {v8, v0, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 590
    const-string v0, "contact_id"

    invoke-virtual {v8, v0, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 593
    .end local v10           #lMyContactId:J
    .end local v12           #lMyRawContactId:J
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 594
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static final getPhoto()Landroid/graphics/Bitmap;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final getPhoto(Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "resolver"

    .prologue
    const-wide/16 v12, 0x0

    const/4 v4, 0x0

    .line 608
    const-wide/16 v10, 0x0

    .line 610
    .local v10, photoId:J
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;->getMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v6

    .line 611
    .local v6, bundleMyContactIds:Landroid/os/Bundle;
    if-eqz v6, :cond_1

    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    const-string v0, "contact_id"

    invoke-virtual {v6, v0, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 613
    .local v8, lMyContactId:J
    cmp-long v0, v12, v8

    if-gez v0, :cond_1

    .line 614
    sget-object v1, Lcom/htc/provider/HtcContactsContract$Contacts;->SIMPLE_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "photo_id"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contacts._id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 620
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 622
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    const-string v0, "photo_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 628
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 634
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #lMyContactId:J
    :cond_1
    cmp-long v0, v12, v10

    if-gez v0, :cond_2

    .line 635
    invoke-static {v10, v11, v4}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 639
    :cond_2
    return-object v4

    .line 628
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #lMyContactId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final getViewIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 543
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 544
    .local v0, viewIntent:Landroid/content/Intent;
    const-string v1, "com.android.htccontacts"

    const-string v2, "com.android.htccontacts.HtcViewMyContactCardActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    return-object v0
.end method

.method public static getViewOrEditIntent(Landroid/content/ContentResolver;)Landroid/content/Intent;
    .locals 6
    .parameter "resolver"

    .prologue
    .line 650
    invoke-static {p0}, Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;->getIdIfHasData(Landroid/content/ContentResolver;)J

    move-result-wide v1

    .line 651
    .local v1, id:J
    const/4 v3, 0x0

    .line 652
    .local v3, resultIntent:Landroid/content/Intent;
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    .line 653
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 655
    .local v0, editUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #resultIntent:Landroid/content/Intent;
    const-string v4, "android.intent.action.EDIT"

    invoke-direct {v3, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 659
    .end local v0           #editUri:Landroid/net/Uri;
    .restart local v3       #resultIntent:Landroid/content/Intent;
    :goto_0
    return-object v3

    .line 657
    :cond_0
    invoke-static {}, Lcom/htc/provider/HtcContactsContract$Contacts$MyContactCard;->getViewIntent()Landroid/content/Intent;

    move-result-object v3

    goto :goto_0
.end method

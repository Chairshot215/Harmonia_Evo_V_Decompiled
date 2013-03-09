.class public Lcom/android/htccontacts/AttachImage;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "AttachImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/AttachImage$1;,
        Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;,
        Lcom/android/htccontacts/AttachImage$TaskData;
    }
.end annotation


# static fields
.field private static final RAW_CONTACT_URIS_KEY:Ljava/lang/String; = "raw_contact_uris"

.field private static final REQUEST_CROP_PHOTO:I = 0x2

.field private static final REQUEST_PICK_CONTACT:I = 0x1


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mRawContactIds:[Ljava/lang/Long;

.field private mlContactId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 64
    return-void
.end method

.method private insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "values"
    .parameter "rawContactDataUri"
    .parameter "assertAccount"

    .prologue
    const/4 v7, 0x0

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p3, :cond_0

    .line 259
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=? AND account_type IN (?,?)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v7

    const/4 v5, 0x1

    const-string v6, "com.google"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "com.android.exchange"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_0
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem querying raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 276
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 278
    .local v0, e:Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_1

    .line 279
    invoke-direct {p0, p1, p2, v7}, Lcom/android/htccontacts/AttachImage;->updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 281
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem inserting photo into raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static toClassArray([J)[Ljava/lang/Long;
    .locals 4
    .parameter "in"

    .prologue
    .line 110
    if-nez p0, :cond_1

    .line 111
    const/4 v1, 0x0

    .line 117
    :cond_0
    return-object v1

    .line 113
    :cond_1
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/Long;

    .line 114
    .local v1, out:[Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 115
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static toPrimativeArray([Ljava/lang/Long;)[J
    .locals 4
    .parameter "in"

    .prologue
    .line 99
    if-nez p0, :cond_1

    .line 100
    const/4 v1, 0x0

    .line 106
    :cond_0
    return-object v1

    .line 102
    :cond_1
    array-length v2, p0

    new-array v1, v2, [J

    .line 103
    .local v1, out:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 104
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updatePhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V
    .locals 8
    .parameter "values"
    .parameter "rawContactDataUri"
    .parameter "allowInsert"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 292
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string v2, "mimetype"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 298
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "mimetype=?"

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    :try_start_0
    iget-object v2, p0, Lcom/android/htccontacts/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem querying raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 311
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 312
    .local v0, e:Landroid/content/OperationApplicationException;
    if-eqz p3, :cond_0

    .line 314
    invoke-direct {p0, p1, p2, v6}, Lcom/android/htccontacts/AttachImage;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 316
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Problem inserting photo raw_contacts/data"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected handleSearch()Z
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 29
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "result"

    .prologue
    .line 122
    const/16 v25, -0x1

    move/from16 v0, p2

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    .line 123
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/AttachImage;->finish()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    const/16 v25, 0x1

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/AttachImage;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 133
    .local v16, myIntent:Landroid/content/Intent;
    new-instance v13, Landroid/content/Intent;

    const-string v25, "com.htc.album.action.CROP"

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v13, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v13, intent:Landroid/content/Intent;
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/AttachImage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 138
    .local v18, pm:Landroid/content/pm/PackageManager;
    const-string v25, "mimeType"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_2

    .line 139
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    const-string v26, "mimeType"

    move-object/from16 v0, v16

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    :cond_2
    const/4 v15, 0x0

    .line 143
    .local v15, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 144
    if-eqz v15, :cond_3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_5

    .line 145
    :cond_3
    const-string v25, "com.android.camera.action.CROP"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v25

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/high16 v25, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .line 148
    if-eqz v15, :cond_4

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_5

    .line 149
    :cond_4
    const-string v25, "AttachImage"

    const-string v26, "No activity support cropping image !!!"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/AttachImage;->finish()V

    goto/16 :goto_0

    .line 155
    :cond_5
    const-string v25, "crop"

    const-string v26, "true"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v25, "aspectX"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    const-string v25, "aspectY"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v25, "outputX"

    sget v26, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v25, "outputY"

    sget v26, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 160
    const-string v25, "return-data"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v13, v1}, Lcom/android/htccontacts/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 165
    .local v8, dataUri:Landroid/net/Uri;
    if-nez v8, :cond_6

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/AttachImage;->finish()V

    goto/16 :goto_0

    .line 169
    :cond_6
    const-wide/16 v5, -0x1

    .line 171
    .local v5, contactId:J
    :try_start_0
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v5

    .line 177
    :goto_1
    const-wide/16 v25, 0x0

    cmp-long v25, v5, v25

    if-gez v25, :cond_7

    .line 178
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/AttachImage;->finish()V

    goto/16 :goto_0

    .line 172
    :catch_0
    move-exception v9

    .line 173
    .local v9, e:Ljava/lang/NumberFormatException;
    const-string v25, "AttachImage"

    const-string v26, "onActivityResult"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 174
    .end local v9           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v9

    .line 175
    .local v9, e:Ljava/lang/UnsupportedOperationException;
    const-string v25, "AttachImage"

    const-string v26, "onActivityResult"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 181
    .end local v9           #e:Ljava/lang/UnsupportedOperationException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v5, v6}, Lcom/android/htccontacts/util/ContactsUtils;->queryForAllRawContactIds(Landroid/content/ContentResolver;J)Ljava/util/ArrayList;

    move-result-object v21

    .line 183
    .local v21, rawContactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Long;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Ljava/lang/Long;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_9

    .line 187
    :cond_8
    const v25, 0x7f0a0055

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Toast;->show()V

    .line 190
    :cond_9
    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/htccontacts/AttachImage;->mlContactId:J

    goto/16 :goto_0

    .line 192
    .end local v5           #contactId:J
    .end local v8           #dataUri:Landroid/net/Uri;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v15           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16           #myIntent:Landroid/content/Intent;
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    .end local v21           #rawContactIdsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_a
    const/16 v25, 0x2

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 194
    .local v10, extras:Landroid/os/Bundle;
    if-eqz v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    move-object/from16 v25, v0

    if-eqz v25, :cond_d

    .line 195
    const-string v25, "data"

    move-object/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    .line 196
    .local v17, photo:Landroid/graphics/Bitmap;
    if-eqz v17, :cond_d

    .line 199
    const-wide/16 v25, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/AttachImage;->mlContactId:J

    move-wide/from16 v27, v0

    cmp-long v25, v25, v27

    if-gez v25, :cond_b

    .line 202
    new-instance v7, Lcom/android/htccontacts/AttachImage$TaskData;

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Lcom/android/htccontacts/AttachImage$TaskData;-><init>(Lcom/android/htccontacts/AttachImage$1;)V

    .line 203
    .local v7, data:Lcom/android/htccontacts/AttachImage$TaskData;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/AttachImage;->mlContactId:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    iput-wide v0, v7, Lcom/android/htccontacts/AttachImage$TaskData;->contactId:J

    .line 204
    move-object/from16 v0, v17

    iput-object v0, v7, Lcom/android/htccontacts/AttachImage$TaskData;->bitmap:Landroid/graphics/Bitmap;

    .line 205
    new-instance v25, Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;-><init>(Lcom/android/htccontacts/AttachImage;)V

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Lcom/android/htccontacts/AttachImage$TaskData;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v7, v26, v27

    invoke-virtual/range {v25 .. v26}, Lcom/android/htccontacts/AttachImage$AttachImageAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/AttachImage;->finish()V

    goto/16 :goto_0

    .line 211
    .end local v7           #data:Lcom/android/htccontacts/AttachImage$TaskData;
    :cond_b
    new-instance v24, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 212
    .local v24, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v25, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v26, 0x4b

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 214
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 217
    .local v12, imageValues:Landroid/content/ContentValues;
    :try_start_1
    const-string v25, "data15"

    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 218
    const-string v25, "is_super_primary"

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 220
    invoke-virtual/range {v24 .. v24}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 227
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .local v4, arr$:[Ljava/lang/Long;
    array-length v14, v4

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_3
    if-ge v11, v14, :cond_c

    aget-object v20, v4, v11

    .line 230
    .local v20, rawContactId:Ljava/lang/Long;
    const/16 v23, 0x0

    .line 232
    .local v23, shouldUpdate:Z
    sget-object v25, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    invoke-static/range {v25 .. v27}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    .line 234
    .local v22, rawContactUri:Landroid/net/Uri;
    const-string v25, "data"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 236
    .local v19, rawContactDataUri:Landroid/net/Uri;
    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v25

    invoke-direct {v0, v12, v1, v2}, Lcom/android/htccontacts/AttachImage;->insertPhoto(Landroid/content/ContentValues;Landroid/net/Uri;Z)V

    .line 227
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 221
    .end local v4           #arr$:[Ljava/lang/Long;
    .end local v11           #i$:I
    .end local v14           #len$:I
    .end local v19           #rawContactDataUri:Landroid/net/Uri;
    .end local v20           #rawContactId:Ljava/lang/Long;
    .end local v22           #rawContactUri:Landroid/net/Uri;
    .end local v23           #shouldUpdate:Z
    :catch_2
    move-exception v9

    .line 223
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 238
    .end local v9           #e:Ljava/io/IOException;
    .restart local v4       #arr$:[Ljava/lang/Long;
    .restart local v11       #i$:I
    .restart local v14       #len$:I
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/htccontacts/AttachImage;->mlContactId:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    .line 241
    .end local v4           #arr$:[Ljava/lang/Long;
    .end local v11           #i$:I
    .end local v12           #imageValues:Landroid/content/ContentValues;
    .end local v14           #len$:I
    .end local v17           #photo:Landroid/graphics/Bitmap;
    .end local v24           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/AttachImage;->finish()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    if-eqz p1, :cond_0

    .line 77
    const-string v1, "raw_contact_uris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    invoke-static {v1}, Lcom/android/htccontacts/AttachImage;->toClassArray([J)[Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    .line 86
    :goto_0
    invoke-virtual {p0}, Lcom/android/htccontacts/AttachImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/htccontacts/AttachImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    return-void

    .line 79
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    const-string v1, "filter_account_mode"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/AttachImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 94
    const-string v0, "raw_contact_uris"

    iget-object v1, p0, Lcom/android/htccontacts/AttachImage;->mRawContactIds:[Ljava/lang/Long;

    invoke-static {v1}, Lcom/android/htccontacts/AttachImage;->toPrimativeArray([Ljava/lang/Long;)[J

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 96
    :cond_0
    return-void
.end method

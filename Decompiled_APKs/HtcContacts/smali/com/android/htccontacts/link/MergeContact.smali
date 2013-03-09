.class public Lcom/android/htccontacts/link/MergeContact;
.super Ljava/lang/Object;
.source "MergeContact.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MergeContact"


# instance fields
.field private isNameModify:J

.field private isPhotoModify:J

.field private isPhotoRemove:Z

.field private mContactId:J

.field private mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoId:J

.field private mRemovePhotoId:J

.field private mRemovePhotoIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private originalName:Ljava/lang/String;

.field private originalNameRawId:J

.field private originalPhoto:Landroid/graphics/Bitmap;

.field private originalPhotoId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;JJ)V
    .locals 2
    .parameter "context"
    .parameter "contact_id"
    .parameter "name"
    .parameter "name_id"
    .parameter "photo_id"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    .line 46
    iput-wide p2, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    .line 47
    iput-object p4, p0, Lcom/android/htccontacts/link/MergeContact;->mName:Ljava/lang/String;

    .line 48
    iput-wide p5, p0, Lcom/android/htccontacts/link/MergeContact;->isNameModify:J

    .line 49
    iput-wide p7, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mRemovePhotoId:J

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    .line 54
    invoke-static {p7, p8}, Lcom/android/htccontacts/util/PhotoUtils;->loadThumbnail(J)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    .line 56
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalName:Ljava/lang/String;

    .line 57
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isNameModify:J

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalNameRawId:J

    .line 58
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalPhotoId:J

    .line 59
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalPhoto:Landroid/graphics/Bitmap;

    .line 60
    return-void
.end method


# virtual methods
.method public getContactId()J
    .locals 2

    .prologue
    .line 63
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    return-wide v0
.end method

.method public getContactPhotoId()J
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    return-wide v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentNameRawId()J
    .locals 2

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isNameModify:J

    return-wide v0
.end method

.method public getCurrentPhotoRawId()J
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    return-wide v0
.end method

.method public isDisplayInfoModify()Z
    .locals 4

    .prologue
    .line 164
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhotoExisted()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycleBitmap()V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 374
    :cond_1
    return-void
.end method

.method public rollBackName()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mName:Ljava/lang/String;

    .line 128
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalNameRawId:J

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isNameModify:J

    .line 129
    return-void
.end method

.method public rollBackPhoto()V
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalPhotoId:J

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    .line 137
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->originalPhoto:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    .line 138
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    .line 140
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mRemovePhotoId:J

    .line 141
    return-void
.end method

.method public updateContactId(J)V
    .locals 0
    .parameter "newId"

    .prologue
    .line 67
    iput-wide p1, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    .line 68
    return-void
.end method

.method public updateDBForEditMyContactPhoto(Ljava/util/ArrayList;ZLjava/util/ArrayList;Landroid/graphics/Bitmap;J)V
    .locals 18
    .parameter
    .parameter "hasNonSocialnetworkPhoto"
    .parameter
    .parameter "nonSocialnetworkPhoto"
    .parameter "myContactRawId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Landroid/graphics/Bitmap;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, valuesDeltaPhoto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "data"

    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 208
    .local v14, profileDataUri:Landroid/net/Uri;
    if-eqz p2, :cond_5

    .line 209
    if-eqz p4, :cond_2

    .line 211
    const/4 v12, 0x0

    .local v12, j:I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_6

    .line 212
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 213
    .local v17, vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v1, "data7"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 214
    .local v10, LType:Ljava/lang/Long;
    if-eqz v10, :cond_0

    const-wide/16 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 215
    :cond_0
    const-string v1, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 218
    .local v2, lPhotoId:J
    new-instance v16, Landroid/content/ContentValues;

    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 220
    .local v16, values:Landroid/content/ContentValues;
    const-string v1, "data15"

    sget v4, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_90:I

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/htc/util/contacts/PhotoUtils;->getBitmapByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 221
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v15, updateString:Ljava/lang/StringBuilder;
    const-string v1, "_id = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 225
    .local v11, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 226
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 227
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    .line 211
    .end local v2           #lPhotoId:J
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v15           #updateString:Ljava/lang/StringBuilder;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 235
    .end local v10           #LType:Ljava/lang/Long;
    .end local v12           #j:I
    .end local v17           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_2
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_6

    .line 236
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 237
    .restart local v17       #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v1, "data7"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 238
    .restart local v10       #LType:Ljava/lang/Long;
    if-eqz v10, :cond_3

    const-wide/16 v4, 0x0

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    .line 239
    :cond_3
    const-string v1, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 242
    .restart local v2       #lPhotoId:J
    new-instance v16, Landroid/content/ContentValues;

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 243
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v1, "data15"

    sget v4, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_90:I

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/htc/util/contacts/PhotoUtils;->getBitmapByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 244
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .restart local v15       #updateString:Ljava/lang/StringBuilder;
    const-string v1, "_id = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 247
    invoke-static {v14}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v11

    .line 248
    .restart local v11       #builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v11, v1, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 249
    invoke-virtual {v11}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    .line 235
    .end local v2           #lPhotoId:J
    .end local v11           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v15           #updateString:Ljava/lang/StringBuilder;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 257
    .end local v10           #LType:Ljava/lang/Long;
    .end local v12           #j:I
    .end local v17           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_5
    if-eqz p4, :cond_8

    .line 268
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 269
    .restart local v16       #values:Landroid/content/ContentValues;
    const-string v1, "raw_contact_id"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v1, "mimetype"

    const-string v4, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v1, "data15"

    sget v4, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_90:I

    move-object/from16 v0, p4

    invoke-static {v0, v4}, Lcom/htc/util/contacts/PhotoUtils;->getBitmapByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v16

    invoke-virtual {v1, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v13

    .line 274
    .local v13, photoUri:Landroid/net/Uri;
    if-eqz v13, :cond_6

    .line 275
    invoke-static {v13}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 277
    .restart local v2       #lPhotoId:J
    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-gez v1, :cond_6

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object/from16 v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    .line 288
    .end local v2           #lPhotoId:J
    .end local v13           #photoUri:Landroid/net/Uri;
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_6
    :goto_2
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_7

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    .line 292
    :cond_7
    return-void

    .line 284
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    const-wide/16 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object/from16 v9, p1

    invoke-static/range {v4 .. v9}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    goto :goto_2
.end method

.method public updateDBForEditPhoto(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v1, 0x0

    .line 300
    const/4 v0, 0x1

    iget-boolean v3, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    if-ne v0, v3, :cond_1

    .line 302
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    if-nez v0, :cond_0

    .line 304
    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_5

    .line 305
    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_3

    .line 306
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    goto :goto_0

    .line 314
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 315
    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/util/LinkUtils;->replaceContactPhotoForContact(Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    goto :goto_0

    .line 323
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    goto :goto_0

    .line 327
    :cond_5
    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    cmp-long v0, v1, v3

    if-gez v0, :cond_7

    .line 328
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    .line 330
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    goto :goto_0

    .line 333
    :cond_6
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    goto :goto_0

    .line 336
    :cond_7
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    .line 338
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/util/LinkUtils;->replaceContactPhotoForContact(Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    goto :goto_0

    .line 341
    :cond_8
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateDBForName(Ljava/util/ArrayList;Z)V
    .locals 6
    .parameter
    .parameter "isSplit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_0

    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isNameModify:J

    iget-wide v2, p0, Lcom/android/htccontacts/link/MergeContact;->originalNameRawId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htccontacts/link/MergeContact;->mName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/htccontacts/link/MergeContact;->isNameModify:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;JLjava/util/ArrayList;)V

    .line 171
    :cond_1
    return-void
.end method

.method public updateDBForPhoto(Ljava/util/ArrayList;Z)V
    .locals 8
    .parameter
    .parameter "isSplit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, mOperations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-wide/16 v1, 0x0

    .line 174
    iget-boolean v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mRemovePhotoId:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 178
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mRemovePhotoId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 179
    .local v7, deleteUri:Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    .line 181
    .local v6, builder:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v6}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v6           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v7           #deleteUri:Landroid/net/Uri;
    :cond_0
    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_3

    .line 186
    if-eqz p2, :cond_1

    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    .line 198
    :cond_2
    :goto_0
    return-void

    .line 189
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    iget-wide v2, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/htccontacts/util/LinkUtils;->replaceContactPhotoForContact(Landroid/content/Context;Landroid/graphics/Bitmap;J)V

    goto :goto_0

    .line 192
    :cond_4
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/htccontacts/util/LinkUtils;->updateContactPhoto(Landroid/content/Context;JJLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public updateEditPhoto(JLandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "photoId"
    .parameter "photo"

    .prologue
    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    .line 113
    iput-wide p1, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    .line 114
    iput-object p3, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    .line 116
    return-void
.end method

.method public updateEditPhotoNull(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, photoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    .line 119
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    .line 120
    iput-object p1, p0, Lcom/android/htccontacts/link/MergeContact;->mRemovePhotoIds:Ljava/util/ArrayList;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    .line 123
    return-void
.end method

.method public updateName(Ljava/lang/String;J)V
    .locals 0
    .parameter "newName"
    .parameter "raw_id"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/htccontacts/link/MergeContact;->mName:Ljava/lang/String;

    .line 72
    iput-wide p2, p0, Lcom/android/htccontacts/link/MergeContact;->isNameModify:J

    .line 73
    return-void
.end method

.method public updatePhotoAfterContactMerge()V
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 350
    sget-object v0, Lcom/android/htccontacts/link/ContactLinkActivity;->mCreateIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "photo_id"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v7, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 355
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 356
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 358
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    .line 359
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContactId:J

    iget-object v2, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/htccontacts/util/PhotoUtils;->loadContactThumbnail(JLandroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    .line 362
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public updatePhotoByRawContact(J)V
    .locals 4
    .parameter "raw_id"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/htccontacts/util/PhotoUtils;->getRawContactThumbnailId(JLandroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    .line 90
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 91
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    invoke-static {v0, v1}, Lcom/android/htccontacts/util/PhotoUtils;->loadThumbnail(J)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    .line 94
    :goto_0
    iput-wide p1, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    .line 95
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public updatePhotoNewBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "bitmap"

    .prologue
    const-wide/16 v2, 0x0

    .line 77
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 78
    iget-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    iput-wide v0, p0, Lcom/android/htccontacts/link/MergeContact;->mRemovePhotoId:J

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    .line 81
    iput-wide v2, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    .line 82
    iput-wide v2, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    .line 85
    return-void
.end method

.method public updatePhotoNull(J)V
    .locals 3
    .parameter "photo_id"

    .prologue
    const-wide/16 v1, 0x0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoRemove:Z

    .line 100
    iput-wide v1, p0, Lcom/android/htccontacts/link/MergeContact;->isPhotoModify:J

    .line 101
    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    .line 102
    iput-wide p1, p0, Lcom/android/htccontacts/link/MergeContact;->mRemovePhotoId:J

    .line 104
    :cond_0
    iput-wide v1, p0, Lcom/android/htccontacts/link/MergeContact;->mPhotoId:J

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    .line 106
    return-void
.end method

.method public updateUI(ZZ)V
    .locals 3
    .parameter "NameEditable"
    .parameter "PhotoEditable"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/htccontacts/link/MergeContact;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/htccontacts/link/MergeContact;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/htccontacts/link/MergeContact;->mPhoto:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/htccontacts/util/LinkUtils;->updateLinkContactTitle(Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)V

    .line 161
    return-void
.end method

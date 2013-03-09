.class public Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "PhotoPeopleCursorAdapter.java"

# interfaces
.implements Lcom/htc/widget/HtcAbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$1;,
        Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;,
        Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final FETCH_IMAGE_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PhotoPeopleCursorAdapter"


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mHandler:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;

.field protected mIdxPhotoId:I

.field protected mIdxPhotoUrl:I

.field private mItemsMissingImages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoLoader:Lcom/android/htccontacts/ContactPhotoManager;

.field private mPhotoLoaderEnabled:Z

.field private mPhotoUtils:Lcom/android/htccontacts/util/PhotoUtils;

.field private mScrollState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
    .locals 2
    .parameter "context"
    .parameter "layout"
    .parameter "c"
    .parameter "autoRequery"

    .prologue
    const v0, 0x7fffffff

    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 59
    iput v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    .line 60
    iput v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoUrl:I

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoaderEnabled:Z

    .line 144
    new-instance v0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;-><init>(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mHandler:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    .line 146
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 139
    const v0, 0x209000b

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    return-object v0
.end method

.method private getLong(Landroid/database/Cursor;I)J
    .locals 2
    .parameter "cursor"
    .parameter "idx"

    .prologue
    .line 304
    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 308
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private getPhotoAndUpdate(JLjava/util/HashMap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 337
    .local p3, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    const/4 v0, 0x0

    .line 338
    .local v0, photo:Landroid/graphics/Bitmap;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 339
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 340
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #photo:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 341
    .restart local v0       #photo:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 342
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    :cond_0
    return-object v0
.end method

.method private getPhotoAndUpdate(Ljava/lang/String;Ljava/util/HashMap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;>;"
    const/4 v0, 0x0

    .line 324
    .local v0, photo:Landroid/graphics/Bitmap;
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 325
    .local v1, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v1, :cond_0

    .line 326
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #photo:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 327
    .restart local v0       #photo:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 328
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_0
    return-object v0
.end method

.method private getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 1
    .parameter "cursor"
    .parameter "idx"

    .prologue
    .line 313
    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 315
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processMissingImageItems(Lcom/htc/widget/HtcAbsListView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 199
    .local v1, iv:Landroid/widget/ImageView;
    invoke-direct {p0, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 201
    .end local v1           #iv:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private sendFetchImageMessage(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 427
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 428
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 429
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 430
    iget-object v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mHandler:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method

.method private setDefaultGroupPhoto(Landroid/widget/ImageView;Z)V
    .locals 1
    .parameter "photoView"
    .parameter "isGroup"

    .prologue
    .line 420
    if-eqz p2, :cond_0

    .line 421
    const v0, 0x2080251

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    .line 423
    :cond_0
    return-void
.end method

.method private setDefaultPhoto(Landroid/widget/ImageView;Z)V
    .locals 2
    .parameter "photoView"
    .parameter "isSIM"

    .prologue
    .line 400
    if-eqz p2, :cond_1

    .line 401
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoUtils:Lcom/android/htccontacts/util/PhotoUtils;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoUtils:Lcom/android/htccontacts/util/PhotoUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/htccontacts/util/PhotoUtils;->setPhotoDrawableByType(Landroid/widget/ImageView;I)V

    .line 416
    :goto_0
    return-void

    .line 405
    :cond_0
    const v0, 0x208025a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    goto :goto_0

    .line 409
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoUtils:Lcom/android/htccontacts/util/PhotoUtils;

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoUtils:Lcom/android/htccontacts/util/PhotoUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/htccontacts/util/PhotoUtils;->setPhotoDrawableByType(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 413
    :cond_2
    const v0, 0x2080846

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResourceWithoutRelayout(I)V

    goto :goto_0
.end method


# virtual methods
.method protected bindPhoto(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "cursor"
    .parameter "photoView"
    .parameter "accountType"

    .prologue
    .line 213
    iget-boolean v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoaderEnabled:Z

    if-eqz v1, :cond_3

    .line 214
    const-string v1, "com.anddroid.contacts.sim"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->setDefaultPhoto(Landroid/widget/ImageView;Z)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    const-wide/16 v3, 0x0

    .line 218
    .local v3, photoId:J
    iget v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    if-ltz v1, :cond_2

    .line 219
    iget v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    invoke-direct {p0, p2, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getLong(Landroid/database/Cursor;I)J

    move-result-wide v3

    .line 221
    :cond_2
    const-string v1, "PhotoPeopleCursorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindPhoto call loadPhoto photoView: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", photoId: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoader:Lcom/android/htccontacts/ContactPhotoManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/htccontacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;JZZ)V

    goto :goto_0

    .line 231
    .end local v3           #photoId:J
    :cond_3
    const-string v1, "com.anddroid.contacts.sim"

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 232
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->setDefaultPhoto(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 234
    :cond_4
    const-wide/16 v3, 0x0

    .line 235
    .restart local v3       #photoId:J
    iget v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    if-ltz v1, :cond_5

    .line 236
    iget v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoId:I

    invoke-direct {p0, p2, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getLong(Landroid/database/Cursor;I)J

    move-result-wide v3

    .line 238
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 239
    .local v12, position:I
    const/4 v11, 0x0

    .line 240
    .local v11, photoUrl:Ljava/lang/String;
    iget v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoUrl:I

    if-ltz v1, :cond_6

    .line 241
    iget v1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mIdxPhotoUrl:I

    invoke-direct {p0, p2, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v11

    .line 243
    :cond_6
    invoke-virtual/range {p3 .. p3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    .line 244
    .local v10, oldInfo:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    new-instance v8, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    invoke-direct {v8, v12, v3, v4, v11}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;-><init>(IJLjava/lang/String;)V

    .line 245
    .local v8, info:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 247
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_7

    .line 248
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->setDefaultPhoto(Landroid/widget/ImageView;Z)V

    goto/16 :goto_0

    .line 261
    :cond_7
    if-nez v10, :cond_8

    const/4 v9, 0x0

    .line 262
    .local v9, oldBitmap:Landroid/graphics/Bitmap;
    :goto_1
    const/4 v1, 0x0

    invoke-static {v3, v4, v1}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 266
    .local v7, bitmap:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_9

    .line 268
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 269
    iput-object v7, v8, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 276
    :goto_2
    if-eqz v9, :cond_0

    .line 277
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 261
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    .end local v9           #oldBitmap:Landroid/graphics/Bitmap;
    :cond_8
    iget-object v9, v10, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;->bitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 272
    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    .restart local v9       #oldBitmap:Landroid/graphics/Bitmap;
    :cond_9
    const-string v1, "PhotoPeopleCursorAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindPhoto. find no thumbnail for: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-direct {p0, v0, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->setDefaultPhoto(Landroid/widget/ImageView;Z)V

    goto :goto_2
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 166
    return-void
.end method

.method public clearImageFetching()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mHandler:Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$ImageFetchHandler;->clearImageFecthing()V

    .line 205
    return-void
.end method

.method protected configurePhotoLoader()V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoader:Lcom/android/htccontacts/ContactPhotoManager;

    if-nez v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/htccontacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoader:Lcom/android/htccontacts/ContactPhotoManager;

    .line 509
    :cond_0
    return-void
.end method

.method public isPhotoLoaderEnabled()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoaderEnabled:Z

    return v0
.end method

.method public onScroll(Lcom/htc/widget/HtcAbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 175
    return-void
.end method

.method public onScrollStateChanged(Lcom/htc/widget/HtcAbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    const/4 v1, 0x2

    .line 178
    iput p2, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mScrollState:I

    .line 180
    iget-boolean v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoaderEnabled:Z

    if-eqz v0, :cond_2

    .line 181
    if-ne p2, v1, :cond_1

    .line 182
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoader:Lcom/android/htccontacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhotoManager;->pause()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->isPhotoLoaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoader:Lcom/android/htccontacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhotoManager;->resume()V

    goto :goto_0

    .line 189
    :cond_2
    if-ne p2, v1, :cond_3

    .line 191
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->clearImageFetching()V

    goto :goto_0

    .line 193
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->processMissingImageItems(Lcom/htc/widget/HtcAbsListView;)V

    goto :goto_0
.end method

.method public refreshCache()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoader:Lcom/android/htccontacts/ContactPhotoManager;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoader:Lcom/android/htccontacts/ContactPhotoManager;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactPhotoManager;->refreshCache()V

    .line 497
    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mActivityRef:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method protected setPhoto(Landroid/database/Cursor;ILandroid/widget/ImageView;Z)V
    .locals 7
    .parameter "cursor"
    .parameter "contactIdx"
    .parameter "photoView"
    .parameter "isSIM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 360
    const-wide/16 v0, 0x0

    .line 361
    .local v0, contactId:J
    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 362
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 364
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 365
    .local v3, position:I
    new-instance v5, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;

    invoke-direct {v5, v3, v0, v1}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter$PhotoInfo;-><init>(IJ)V

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 367
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-gtz v5, :cond_2

    .line 369
    invoke-direct {p0, p3, p4}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->setDefaultPhoto(Landroid/widget/ImageView;Z)V

    .line 397
    :cond_1
    :goto_0
    return-void

    .line 371
    :cond_2
    const/4 v2, 0x0

    .line 373
    .local v2, photo:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 374
    .local v4, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v4, :cond_3

    .line 375
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #photo:Landroid/graphics/Bitmap;
    check-cast v2, Landroid/graphics/Bitmap;

    .line 376
    .restart local v2       #photo:Landroid/graphics/Bitmap;
    if-nez v2, :cond_3

    .line 377
    iget-object v5, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mBitmapCache:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_3
    if-eqz v2, :cond_4

    .line 383
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 386
    :cond_4
    invoke-direct {p0, p3, p4}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->setDefaultPhoto(Landroid/widget/ImageView;Z)V

    .line 389
    iget-object v5, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mItemsMissingImages:Ljava/util/HashSet;

    invoke-virtual {v5, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 391
    iget v5, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mScrollState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    .line 393
    invoke-direct {p0, p3}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->sendFetchImageMessage(Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public setPhotoLoaderEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoLoaderEnabled:Z

    .line 513
    invoke-virtual {p0}, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->configurePhotoLoader()V

    .line 514
    return-void
.end method

.method protected setPhotoUtils(Lcom/android/htccontacts/util/PhotoUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mPhotoUtils:Lcom/android/htccontacts/util/PhotoUtils;

    .line 153
    return-void
.end method

.method public setScrollState(I)V
    .locals 0
    .parameter "scrollState"

    .prologue
    .line 169
    iput p1, p0, Lcom/android/htccontacts/widget/PhotoPeopleCursorAdapter;->mScrollState:I

    .line 170
    return-void
.end method

.method protected updateIndex(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 149
    return-void
.end method

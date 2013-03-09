.class Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;
.super Ljava/lang/Object;
.source "ContactsUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/ContactsUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HandleSocialNetworkLargePhotoHelper"
.end annotation


# static fields
.field private static final CONTACTSUTITLITY_HTTP_DEFAULT_AGENT:Ljava/lang/String; = "ContactsUtility/1.00"

.field private static final MSG_CHECK_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO:I = 0x38

.field static final MSG_CHECK_DOWNLOAD_SET:I = 0x33

.field static final MSG_CHECK_DOWNLOAD_SET_END:I = 0x37

.field private static final MSG_DOWNLOAD_INSERT:I = 0x35

.field private static final MSG_DOWNLOAD_ORIGINAL_FACEBOOK_LARGE_PHOTO:I = 0x39

.field private static final MSG_DOWNLOAD_UPDATE:I = 0x34

.field static final MSG_END_HANDLER:I = 0x32

.field static final MSG_END_HANDLER_DELAY:I = 0x2710

.field private static final MSG_FAVORITE_CHANGE:I = 0x36

.field private static final MSG_FAVORITE_CHANGE_DELAY:I = 0x1388

.field static MessageHandler:Landroid/os/Handler;

.field private static mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field static mObjectLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2030
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2031
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2032
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    .line 2033
    sput-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2016
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;JLjava/lang/String;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 2016
    invoke-static/range {p0 .. p6}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic access$100(JLandroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2016
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Landroid/net/http/AndroidHttpClient;
    .locals 1

    .prologue
    .line 2016
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2016
    invoke-static {p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->broadcastFavoriteChangeIntent(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic access$500(JLjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 2016
    invoke-static {p0, p1, p2, p3}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 2016
    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .prologue
    .line 2016
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->endHandler()V

    return-void
.end method

.method private static broadcastFavoriteChangeIntent(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "lContactId"

    .prologue
    .line 2390
    const-wide/16 v2, 0x0

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    if-nez p0, :cond_1

    .line 2406
    :cond_0
    :goto_0
    return-void

    .line 2391
    :cond_1
    const-string v2, "ContactsUtility"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastFavoriteChangeIntent lContactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2392
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2393
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2394
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v4, 0x32

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2396
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 2397
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x36

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2398
    long-to-int v2, p1

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2399
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2400
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2402
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2403
    .local v1, msgEnd:Landroid/os/Message;
    const/16 v2, 0x32

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2404
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2405
    monitor-exit v3

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "context"

    .prologue
    .line 2447
    const-string v0, "ContactsUtility"

    const-string v1, "doDownloadOriginalFacebookLargePhoto"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 2485
    :cond_0
    :goto_0
    return-void

    .line 2449
    :cond_1
    const-string v0, "com.facebook.auth.login"

    const-string v1, "SupportContact"

    new-instance v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;

    invoke-direct {v2, p3, p0, p1, p2}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$2;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-static {p3, v0, v1, v2}, Lcom/htc/opensense/social/SocialServiceManager;->connectTo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/opensense/social/SocialServiceManager$ConnectionListener;)Z

    goto :goto_0
.end method

.method private static doDownloadOriginalFacebookLargePhoto(JLjava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 16
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "context"
    .parameter "largeAvatarUrl"

    .prologue
    .line 2487
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2553
    :cond_0
    :goto_0
    return-void

    .line 2489
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "raw_contact_id = ? AND mimetype = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v6

    const/4 v6, 0x1

    const-string v15, "vnd.android.cursor.item/photo"

    aput-object v15, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2495
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 2496
    :cond_2
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2497
    const-string v1, "_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2498
    .local v12, photoDataId:J
    const-string v1, "data9"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2499
    .local v11, oldLargeUrl:Ljava/lang/String;
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadOriginalFacebookLargePhoto photoDataId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2500
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadOriginalFacebookLargePhoto oldLargeUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    const/4 v10, 0x0

    .line 2503
    .local v10, needDownload:Z
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_3

    .line 2504
    const-wide/16 v1, -0x1

    cmp-long v1, v1, v12

    if-nez v1, :cond_5

    .line 2505
    const/4 v10, 0x1

    .line 2510
    :cond_3
    :goto_2
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadOriginalFacebookLargePhoto needDownload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    if-eqz v10, :cond_2

    .line 2512
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->getFromRemote4(Ljava/lang/String;Landroid/net/http/AndroidHttpClient;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2513
    .local v7, bmPhoto:Landroid/graphics/Bitmap;
    if-nez v7, :cond_4

    .line 2514
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! largeAvatarUrl: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! use default photo!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    sget v1, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lcom/htc/util/contacts/ContactsUtility;->getDefaultPeoplePhoto(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2517
    if-nez v7, :cond_4

    .line 2518
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto getFromRemote3 NULL! use default photo! still NULL!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    :cond_4
    if-eqz v7, :cond_2

    .line 2522
    sget v1, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    sget v2, Lcom/htc/util/contacts/PhotoUtils;->FULL_ICON_SIZE:I

    invoke-static {v7, v1, v2}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2523
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadOriginalFacebookLargePhoto getScaledCenterCropBitmap bmPhoto W H:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    #calls: Lcom/htc/util/contacts/ContactsUtility;->getPhotoByteArray(Landroid/graphics/Bitmap;)[B
    invoke-static {v7}, Lcom/htc/util/contacts/ContactsUtility;->access$800(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    .line 2525
    .local v8, byteArrayPhoto:[B
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 2526
    const/4 v7, 0x0

    .line 2527
    if-eqz v8, :cond_2

    .line 2528
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto null != byteArrayPhoto"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2530
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_2

    .line 2531
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 2532
    .local v14, valuesDataPhoto:Landroid/content/ContentValues;
    const-string v1, "data15"

    invoke-virtual {v14, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 2533
    const-string v1, "data8"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2534
    const-string v1, "data9"

    move-object/from16 v0, p4

    invoke-virtual {v14, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const-wide/16 v1, -0x1

    cmp-long v1, v1, v12

    if-nez v1, :cond_6

    .line 2537
    const-string v1, "ContactsUtility"

    const-string v2, "doDownloadOriginalFacebookLargePhoto insert large photo data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    const-string v1, "raw_contact_id"

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2539
    const-string v1, "mimetype"

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v14, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 2506
    .end local v7           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v8           #byteArrayPhoto:[B
    .end local v14           #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_5
    const-wide/16 v1, 0x0

    cmp-long v1, v1, v12

    if-gez v1, :cond_3

    move-object/from16 v0, p4

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2507
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2541
    .restart local v7       #bmPhoto:Landroid/graphics/Bitmap;
    .restart local v8       #byteArrayPhoto:[B
    .restart local v14       #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_6
    const-wide/16 v1, 0x0

    cmp-long v1, v1, v12

    if-gez v1, :cond_2

    move-object/from16 v0, p4

    invoke-static {v0, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2542
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doDownloadOriginalFacebookLargePhoto update large photo data photoDataId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v14, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2550
    .end local v7           #bmPhoto:Landroid/graphics/Bitmap;
    .end local v8           #byteArrayPhoto:[B
    .end local v10           #needDownload:Z
    .end local v11           #oldLargeUrl:Ljava/lang/String;
    .end local v12           #photoDataId:J
    .end local v14           #valuesDataPhoto:Landroid/content/ContentValues;
    :cond_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2551
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method private static downloadOriginalFacebookLargePhoto(JLandroid/content/Context;)V
    .locals 15
    .parameter "contactId"
    .parameter "context"

    .prologue
    .line 2409
    const-wide/16 v1, 0x0

    cmp-long v1, v1, p0

    if-gez v1, :cond_0

    if-nez p2, :cond_1

    .line 2445
    :cond_0
    :goto_0
    return-void

    .line 2410
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "sourceid"

    aput-object v5, v3, v4

    const-string v4, "contact_id = ? AND account_type = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v5, v6

    const/4 v6, 0x1

    const-string v14, "com.facebook.auth.login"

    aput-object v14, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2416
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 2417
    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2418
    const-string v1, "_id"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2419
    .local v11, rawContactId:J
    const-string v1, "sourceid"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2420
    .local v13, sourceId:Ljava/lang/String;
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadOriginalFacebookLargePhoto rawContactId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    const-string v1, "ContactsUtility"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloadOriginalFacebookLargePhoto sourceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2422
    const-wide/16 v1, 0x0

    cmp-long v1, v1, v11

    if-gez v1, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2423
    sget-object v2, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2424
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2425
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v3, 0x32

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2427
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .line 2428
    .local v9, msg:Landroid/os/Message;
    const/16 v1, 0x38

    iput v1, v9, Landroid/os/Message;->what:I

    .line 2429
    move-object/from16 v0, p2

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2430
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2431
    .local v7, bundle:Landroid/os/Bundle;
    const-string v1, "_id"

    invoke-virtual {v7, v1, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2432
    const-string v1, "sourceid"

    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2433
    invoke-virtual {v9, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2434
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2436
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v10

    .line 2437
    .local v10, msgEnd:Landroid/os/Message;
    const/16 v1, 0x32

    iput v1, v10, Landroid/os/Message;->what:I

    .line 2438
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v10, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2439
    monitor-exit v2

    goto/16 :goto_1

    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2442
    .end local v11           #rawContactId:J
    .end local v13           #sourceId:Ljava/lang/String;
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2443
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private static downloadSocialNetworkLargePhoto(Landroid/content/Context;JLjava/lang/String;ZJ)V
    .locals 7
    .parameter "context"
    .parameter "lRawContactId"
    .parameter "sLargeAvatarUrl"
    .parameter "bUpdate"
    .parameter "lDataId"

    .prologue
    .line 2361
    const-wide/16 v3, 0x0

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    if-nez p0, :cond_1

    .line 2387
    :cond_0
    :goto_0
    return-void

    .line 2362
    :cond_1
    const-string v3, "ContactsUtility"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadSocialNetworkLargePhoto lRawContactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    sget-object v4, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2364
    :try_start_0
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->startHandler()V

    .line 2365
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v5, 0x32

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2367
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 2368
    .local v1, msg:Landroid/os/Message;
    if-eqz p4, :cond_3

    .line 2369
    const/16 v3, 0x34

    iput v3, v1, Landroid/os/Message;->what:I

    .line 2373
    :goto_1
    iput-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2374
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2375
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "raw_contact_id"

    invoke-virtual {v0, v3, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2376
    const-string v3, "large_avatar_url"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    if-eqz p4, :cond_2

    const-wide/16 v5, -0x1

    cmp-long v3, v5, p5

    if-gez v3, :cond_2

    .line 2378
    const-string v3, "data_id"

    invoke-virtual {v0, v3, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2380
    :cond_2
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2381
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2383
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 2384
    .local v2, msgEnd:Landroid/os/Message;
    const/16 v3, 0x32

    iput v3, v2, Landroid/os/Message;->what:I

    .line 2385
    sget-object v3, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2386
    monitor-exit v4

    goto :goto_0

    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #msgEnd:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2371
    .restart local v1       #msg:Landroid/os/Message;
    :cond_3
    const/16 v3, 0x35

    :try_start_1
    iput v3, v1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static endHandler()V
    .locals 5

    .prologue
    .line 2051
    const-string v0, "ContactsUtility"

    const-string v1, "endHandler "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mObjectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2053
    :try_start_0
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2054
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x37

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x38

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x39

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2061
    :cond_0
    const-string v0, "ContactsUtility"

    const-string v2, "endHandler still has messages, send MSG_END_HANDLER again"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    const/16 v2, 0x32

    const-wide/16 v3, 0x2710

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2063
    monitor-exit v1

    .line 2077
    :goto_0
    return-void

    .line 2066
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2067
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2068
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2070
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    if-eqz v0, :cond_2

    .line 2071
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 2072
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 2074
    :cond_2
    const-string v0, "ContactsUtility"

    const-string v2, "endHandler done!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static newMessageHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 2089
    new-instance v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;

    sget-object v1, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper$1;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method static startHandler()V
    .locals 3

    .prologue
    .line 2041
    const-string v0, "ContactsUtility"

    const-string v1, "startHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2043
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mHandlerThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2044
    sget-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2045
    invoke-static {}, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->newMessageHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->MessageHandler:Landroid/os/Handler;

    .line 2046
    const-string v0, "ContactsUtility/1.00"

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    sput-object v0, Lcom/htc/util/contacts/ContactsUtility$HandleSocialNetworkLargePhotoHelper;->mAndroidHttpClient:Landroid/net/http/AndroidHttpClient;

    .line 2047
    const-string v0, "ContactsUtility"

    const-string v1, "startHandler done!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :cond_0
    return-void
.end method

.class public Lcom/android/mms/util/ContactInfoCache;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final CALLER_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final CALLER_ID_SELECTION:Ljava/lang/String; = "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

.field private static final CONTACT_ID_COLUMN:I = 0x3

.field private static final CONTACT_NAME_COLUMN:I = 0x2

.field private static final CONTACT_PRESENCE_COLUMN:I = 0x4

.field private static final CONTACT_STATUS_COLUMN:I = 0x5

.field private static final EMAIL_CONTACT_NAME_COLUMN:I = 0x3

.field private static final EMAIL_ID_COLUMN:I = 0x2

.field private static final EMAIL_NAME_COLUMN:I = 0x0

.field private static final EMAIL_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_SELECTION:Ljava/lang/String; = "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

.field private static final EMAIL_STATUS_COLUMN:I = 0x1

.field private static final EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final LOCAL_DEBUG:Z = false

.field private static final PHONES_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field private static final PHONE_LABEL_COLUMN:I = 0x1

.field private static final PHONE_NUMBER_COLUMN:I = 0x0

.field private static final REBUILD_DELAY:J = 0x1388L

.field private static final SEPARATOR:Ljava/lang/String; = ";"

.field private static final TAG:Ljava/lang/String; = "Mms/cache"

.field private static mContactInfoCacheObserver:Landroid/database/ContentObserver;

.field private static sInstance:Lcom/android/mms/util/ContactInfoCache;


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/mms/util/ContactInfoCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheRebuildLock:Ljava/lang/Object;

.field private mCacheRebuilder:Ljava/lang/Thread;

.field private mContactInfoSelectionArgs:[Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mEmailCacheInvalidated:Z

.field private mPhoneCacheInvalidated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 73
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 75
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v3

    const-string v1, "data3"

    aput-object v1, v0, v4

    const-string v1, "display_name"

    aput-object v1, v0, v5

    const-string v1, "contact_id"

    aput-object v1, v0, v6

    const-string v1, "contact_presence"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    .line 91
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 96
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "data4"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "display_name"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 111
    new-array v1, v3, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    .line 114
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    .line 118
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;

    .line 119
    iput-boolean v2, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z

    .line 188
    iput-object p1, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    .line 190
    new-instance v1, Lcom/android/mms/util/ContactInfoCache$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/mms/util/ContactInfoCache$1;-><init>(Lcom/android/mms/util/ContactInfoCache;Landroid/os/Handler;)V

    sput-object v1, Lcom/android/mms/util/ContactInfoCache;->mContactInfoCacheObserver:Landroid/database/ContentObserver;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/ContactInfoCache;->mContactInfoCacheObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/util/ContactInfoCache;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/util/ContactInfoCache;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/mms/util/ContactInfoCache;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/util/ContactInfoCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/util/ContactInfoCache;->startCacheRebuilder()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/util/ContactInfoCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/util/ContactInfoCache;->rebuildCache()V

    return-void
.end method

.method private getCallerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 487
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    iget-object p1, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 490
    .end local p1
    :cond_0
    return-object p1
.end method

.method private static getEmailDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayString"

    .prologue
    .line 494
    sget-object v1, Landroid/provider/Telephony$Mms;->QUOTED_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 495
    .local v0, match:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 499
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static getInstance()Lcom/android/mms/util/ContactInfoCache;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/android/mms/util/ContactInfoCache;->sInstance:Lcom/android/mms/util/ContactInfoCache;

    return-object v0
.end method

.method private getPresenceIconResourceId(I)I
    .locals 1
    .parameter "presence"

    .prologue
    .line 503
    if-eqz p1, :cond_0

    .line 504
    invoke-static {p1}, Landroid/provider/ContactsContract$Presence;->getPresenceIconResourceId(I)I

    move-result v0

    .line 507
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRebuildList(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 573
    .local p1, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 574
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 575
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 576
    if-eqz p2, :cond_0

    .line 577
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 580
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v1       #name:Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_0

    .line 581
    :try_start_1
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 585
    .end local v1           #name:Ljava/lang/String;
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 247
    new-instance v0, Lcom/android/mms/util/ContactInfoCache;

    invoke-direct {v0, p0}, Lcom/android/mms/util/ContactInfoCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/mms/util/ContactInfoCache;->sInstance:Lcom/android/mms/util/ContactInfoCache;

    .line 248
    return-void
.end method

.method private loadAvatar(Lcom/android/mms/util/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    .locals 9
    .parameter "entry"
    .parameter "cursor"

    .prologue
    .line 377
    iget-wide v5, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v6, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 383
    .local v3, contactUri:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 387
    .local v0, avatarDataStream:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 388
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 390
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 393
    .local v2, bd:Landroid/graphics/drawable/BitmapDrawable;
    iput-object v2, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    .line 395
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v4

    .line 397
    .local v4, e:Ljava/io/IOException;
    const/4 v5, 0x0

    iput-object v5, p1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->mAvatar:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 649
    const-string v0, "Mms/cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ContactInfoCache] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method private queryContactInfoByNumber(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .locals 8
    .parameter "number"

    .prologue
    .line 334
    new-instance v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    invoke-direct {v7, p0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;-><init>(Lcom/android/mms/util/ContactInfoCache;)V

    .line 335
    .local v7, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iput-object p1, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneNumber:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 341
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/util/ContactInfoCache;->CALLER_ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "PHONE_NUMBERS_EQUAL(data1,?) AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    iget-object v4, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 348
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 349
    const-string v0, "Mms/cache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryContactInfoByNumber("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") returned NULL cursor!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " contact uri used "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/ContactInfoCache;->PHONES_WITH_PRESENCE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :goto_0
    return-object v7

    .line 355
    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->phoneLabel:Ljava/lang/String;

    .line 357
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 358
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    .line 359
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/util/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 361
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceText:Ljava/lang/String;

    .line 367
    invoke-direct {p0, v7, v6}, Lcom/android/mms/util/ContactInfoCache;->loadAvatar(Lcom/android/mms/util/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private queryEmailDisplayName(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .locals 10
    .parameter "email"

    .prologue
    const/4 v1, 0x0

    .line 514
    new-instance v8, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    invoke-direct {v8, p0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;-><init>(Lcom/android/mms/util/ContactInfoCache;)V

    .line 516
    .local v8, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    aput-object p1, v0, v1

    .line 518
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/util/ContactInfoCache;->EMAIL_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/ContactInfoCache;->EMAIL_PROJECTION:[Ljava/lang/String;

    const-string v4, "data1=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    iget-object v5, p0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoSelectionArgs:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 525
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_3

    .line 527
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/util/ContactInfoCache;->getPresenceIconResourceId(I)I

    move-result v0

    iput v0, v8, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->presenceResId:I

    .line 530
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->person_id:J

    .line 532
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 533
    .local v9, name:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 536
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iput-object v9, v8, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    .line 538
    invoke-direct {p0, v8, v7}, Lcom/android/mms/util/ContactInfoCache;->loadAvatar(Lcom/android/mms/util/ContactInfoCache$CacheEntry;Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    .end local v9           #name:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_3
    return-object v8

    .line 548
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private rebuildCache()V
    .locals 10

    .prologue
    .line 601
    :cond_0
    const-wide/16 v8, 0x1388

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    const/4 v6, 0x0

    .line 606
    .local v6, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 607
    .local v1, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuildLock:Ljava/lang/Object;

    monitor-enter v9

    .line 610
    :try_start_1
    iget-boolean v8, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z

    if-nez v8, :cond_1

    .line 611
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    .line 612
    monitor-exit v9

    return-void

    .line 614
    :cond_1
    iget-boolean v8, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z

    if-eqz v8, :cond_2

    .line 615
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 616
    .end local v6           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v7, phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, p0, Lcom/android/mms/util/ContactInfoCache;->mPhoneCacheInvalidated:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object v6, v7

    .line 618
    .end local v7           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    iget-boolean v8, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z

    if-eqz v8, :cond_3

    .line 619
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 620
    .end local v1           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v2, emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    :try_start_4
    iput-boolean v8, p0, Lcom/android/mms/util/ContactInfoCache;->mEmailCacheInvalidated:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-object v1, v2

    .line 622
    .end local v2           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 625
    invoke-direct {p0, v6, v1}, Lcom/android/mms/util/ContactInfoCache;->getRebuildList(Ljava/util/List;Ljava/util/List;)V

    .line 627
    if-eqz v6, :cond_4

    .line 629
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 630
    .local v5, phone:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/mms/util/ContactInfoCache;->queryContactInfoByNumber(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v3

    .line 631
    .local v3, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v9, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v9

    .line 632
    :try_start_6
    iget-object v8, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v8

    .line 622
    .end local v3           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #phone:Ljava/lang/String;
    :catchall_1
    move-exception v8

    :goto_2
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v8

    .line 636
    :cond_4
    if-eqz v1, :cond_0

    .line 638
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 639
    .local v0, email:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/util/ContactInfoCache;->queryEmailDisplayName(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v3

    .line 640
    .restart local v3       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v9, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v9

    .line 641
    :try_start_8
    iget-object v8, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    monitor-exit v9

    goto :goto_3

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v8

    .line 602
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    goto :goto_0

    .line 622
    .restart local v1       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7       #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_3
    move-exception v8

    move-object v6, v7

    .end local v7           #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6       #phones:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .end local v1           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_4
    move-exception v8

    move-object v1, v2

    .end local v2           #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1       #emails:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method private startCacheRebuilder()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/util/ContactInfoCache$2;

    invoke-direct {v1, p0}, Lcom/android/mms/util/ContactInfoCache$2;-><init>(Lcom/android/mms/util/ContactInfoCache;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    .line 564
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mCacheRebuilder:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 566
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 259
    sget-object v0, Lcom/android/mms/util/ContactInfoCache;->mContactInfoCacheObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/util/ContactInfoCache;->mContactInfoCacheObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 262
    :cond_0
    return-void
.end method

.method public dump()V
    .locals 7

    .prologue
    .line 266
    iget-object v4, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 267
    :try_start_0
    const-string v3, "Mms/cache"

    const-string v5, "ContactInfoCache.dump"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v3, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 270
    .local v2, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 271
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_0

    .line 272
    const-string v3, "Mms/cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cacheEntry={"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 274
    .restart local v0       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #name:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v3, "Mms/cache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cacheEntry={null}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v2           #name:Ljava/lang/String;
    :cond_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    return-void
.end method

.method public getContactInfo(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .locals 1
    .parameter "numberOrEmail"

    .prologue
    .line 292
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/util/ContactInfoCache;->getContactInfo(Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public getContactInfo(Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .locals 1
    .parameter "numberOrEmail"
    .parameter "allowQuery"

    .prologue
    .line 284
    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForPhoneNumber(Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .locals 3
    .parameter "email"
    .parameter "allowQuery"

    .prologue
    .line 464
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 467
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_2

    .line 468
    :cond_0
    monitor-exit v2

    .line 478
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :goto_0
    return-object v0

    .line 470
    :cond_1
    if-nez p2, :cond_2

    .line 471
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 474
    invoke-direct {p0, p1}, Lcom/android/mms/util/ContactInfoCache;->queryEmailDisplayName(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 475
    .restart local v0       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 476
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    monitor-exit v2

    goto :goto_0

    .line 479
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getContactInfoForPhoneNumber(Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .locals 3
    .parameter "number"
    .parameter "allowQuery"

    .prologue
    .line 307
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 308
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 315
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->isStale()Z

    move-result v1

    if-nez v1, :cond_2

    .line 316
    :cond_0
    monitor-exit v2

    .line 326
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :goto_0
    return-object v0

    .line 318
    :cond_1
    if-nez p2, :cond_2

    .line 319
    const/4 v0, 0x0

    monitor-exit v2

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    invoke-direct {p0, p1}, Lcom/android/mms/util/ContactInfoCache;->queryContactInfoByNumber(Ljava/lang/String;)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 323
    .restart local v0       #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 324
    :try_start_2
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getContactName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "address"

    .prologue
    .line 410
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    const-string v5, ""

    .line 433
    :goto_0
    return-object v5

    .line 414
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .local v3, result:Ljava/lang/StringBuilder;
    const-string v5, ";"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 416
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 417
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isLocalNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 419
    iget-object v5, p0, Lcom/android/mms/util/ContactInfoCache;->mContext:Landroid/content/Context;

    const v6, 0x104011e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 420
    :cond_2
    invoke-static {v4}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 421
    invoke-virtual {p0, v4}, Lcom/android/mms/util/ContactInfoCache;->getDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 423
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/mms/util/ContactInfoCache;->getCallerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 428
    .end local v4           #value:Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 430
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 433
    :cond_5
    const-string v5, ""

    goto :goto_0
.end method

.method public getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "email"

    .prologue
    const/4 v3, 0x1

    .line 442
    sget-object v2, Landroid/provider/Telephony$Mms;->NAME_ADDR_EMAIL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 443
    .local v1, match:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/ContactInfoCache;->getEmailDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 453
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 448
    .restart local p1
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcom/android/mms/util/ContactInfoCache;->getContactInfoForEmailAddress(Ljava/lang/String;Z)Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    move-result-object v0

    .line 449
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 450
    iget-object p1, v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public invalidateCache()V
    .locals 5

    .prologue
    .line 223
    iget-object v4, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 224
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    .local v0, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/util/ContactInfoCache$CacheEntry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 226
    .local v1, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    const/4 v3, 0x1

    #setter for: Lcom/android/mms/util/ContactInfoCache$CacheEntry;->isStale:Z
    invoke-static {v1, v3}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->access$402(Lcom/android/mms/util/ContactInfoCache$CacheEntry;Z)Z

    goto :goto_0

    .line 228
    .end local v0           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/mms/util/ContactInfoCache$CacheEntry;>;"
    .end local v1           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    return-void
.end method

.method public invalidateContact(Ljava/lang/String;)V
    .locals 3
    .parameter "emailOrNumber"

    .prologue
    .line 235
    iget-object v2, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/util/ContactInfoCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/util/ContactInfoCache$CacheEntry;

    .line 237
    .local v0, entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    if-eqz v0, :cond_0

    .line 238
    const/4 v1, 0x1

    #setter for: Lcom/android/mms/util/ContactInfoCache$CacheEntry;->isStale:Z
    invoke-static {v0, v1}, Lcom/android/mms/util/ContactInfoCache$CacheEntry;->access$402(Lcom/android/mms/util/ContactInfoCache$CacheEntry;Z)Z

    .line 240
    :cond_0
    monitor-exit v2

    .line 241
    return-void

    .line 240
    .end local v0           #entry:Lcom/android/mms/util/ContactInfoCache$CacheEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

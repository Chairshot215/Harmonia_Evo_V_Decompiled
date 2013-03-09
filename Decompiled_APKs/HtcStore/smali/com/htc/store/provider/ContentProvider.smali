.class public Lcom/htc/store/provider/ContentProvider;
.super Landroid/content/ContentProvider;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/provider/ContentProvider$Trigger;,
        Lcom/htc/store/provider/ContentProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.store.provider.ContentProvider"

.field private static final CASE_CAROUSEL:I = 0x64

.field private static final CASE_CAROUSEL_BATCH_UPDATE:I = 0x6e

.field private static final CASE_CATEGORY:I = 0x190

.field private static final CASE_CATEGORY_BATCH_UPDATE:I = 0x19a

.field private static final CASE_CATEGORY_BATCH_UPDATE_FILL_PARENT_ID:I = 0x1a4

.field private static final CASE_CATEGORY_TTL:I = 0x2bc

.field private static final CASE_COMMENT:I = 0x258

.field private static final CASE_FEATURED:I = 0x12c

.field private static final CASE_GET_MORE_MAPPING:I = 0x4b0

.field private static final CASE_GET_MORE_TTL:I = 0x320

.field private static final CASE_IMAGE_CACHE_MAPPING:I = 0x578

.field private static final CASE_ITEM:I = 0x1f4

.field private static final CASE_ITEM_BATCH_UPDATE:I = 0x1fe

.field private static final CASE_ITEM_BATCH_UPDATE_FILL_CATEGORY_ID:I = 0x208

.field private static final CASE_ITEM_BATCH_UPDATE_FILL_DETAIL_IF_CATEGORY_AND_ONLINE_ACTION_TYPE_ON_CLICK_IS_UNKNOWN:I = 0x212

.field private static final CASE_ITEM_TTL:I = 0x2ee

.field private static final CASE_MYACTIVITY_BATCH_UPDATE:I = 0x38e

.field private static final CASE_MY_ACTIVITY:I = 0x384

.field private static final CASE_MY_ACTIVITY_BATCH_UPDATE_ORDERED_HISTORY:I = 0x398

.field private static final CASE_MY_ACTIVITY_BATCH_UPDATE_ORDERED_HISTORY_BY_CONTENT:I = 0x3a2

.field private static final CASE_PROMO:I = 0xc8

.field private static final CASE_SIMILARITY_STRUCTURE:I = 0x3e8

.field private static final CASE_SIMILARITY_STRUCTURE_BATCH_QUERY:I = 0x3f2

.field private static final CASE_SOUNDSET_STRUCTURE:I = 0x44c

.field private static final CASE_SOUNDSET_STRUCTURE_BATCH_QUERY:I = 0x456

.field private static final CASE_STP_INBOX:I = 0x514

.field public static final DATABASE_NAME:Ljava/lang/String; = "htcstore.db"

.field private static final DATABASE_VERSION:I = 0x2b

.field private static final TAG:Ljava/lang/String; = null

.field public static final URI_PATH_BATCH_QUERY:Ljava/lang/String; = "query"

.field public static final URI_PATH_BATCH_UPDATE:Ljava/lang/String; = "update"

.field public static final URI_PATH_ORDERED_HISTORY:Ljava/lang/String; = "orderedHistory"

.field public static final URI_PATH_ORDERED_HISTORY_BY_CONTENT:Ljava/lang/String; = "orderedHistoryByContent"

.field private static sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 35
    const-class v0, Lcom/htc/store/provider/ContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    .line 773
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 775
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "carousel"

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 776
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "carousel/update"

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 777
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "promo"

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 778
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "featured"

    const/16 v3, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 779
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "category"

    const/16 v3, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 780
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "category/update"

    const/16 v3, 0x19a

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 781
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "category/updateParentId"

    const/16 v3, 0x1a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 782
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "item"

    const/16 v3, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 783
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "item/update"

    const/16 v3, 0x1fe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 784
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "item/updateCategoryId"

    const/16 v3, 0x208

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 785
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "item/updateOnlineActionTypeOnClick"

    const/16 v3, 0x212

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 786
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "comment"

    const/16 v3, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 787
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "category_ttl"

    const/16 v3, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 788
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "item_ttl"

    const/16 v3, 0x2ee

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 789
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "get_more_ttl"

    const/16 v3, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 790
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "my_activity"

    const/16 v3, 0x384

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 791
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "my_activity/update"

    const/16 v3, 0x38e

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 792
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "my_activity/update/orderedHistory"

    const/16 v3, 0x398

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 794
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "my_activity/update/orderedHistoryByContent"

    const/16 v3, 0x3a2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 796
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "similarity_structure"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 797
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "similarity_structure/query"

    const/16 v3, 0x3f2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 798
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "soundset_structure"

    const/16 v3, 0x44c

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 799
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "soundset_structure/query"

    const/16 v3, 0x456

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 800
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "get_more_mapping"

    const/16 v3, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 801
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "STPInbox"

    const/16 v3, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 802
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.htc.store.provider.ContentProvider"

    const-string v2, "image_cache_mapping"

    const/16 v3, 0x578

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 803
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 805
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I
    .locals 10
    .parameter "table"
    .parameter "nullColumnHack"
    .parameter "valuesArray"

    .prologue
    .line 697
    const/4 v1, 0x0

    .line 698
    .local v1, count:I
    iget-object v6, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 700
    move-object v0, p3

    .local v0, arr$:[Landroid/content/ContentValues;
    :try_start_0
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 701
    .local v5, values:Landroid/content/ContentValues;
    iget-object v6, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6, p1, p2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 702
    add-int/lit8 v1, v1, 0x1

    .line 700
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    .end local v5           #values:Landroid/content/ContentValues;
    :cond_0
    iget-object v6, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    iget-object v6, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 711
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return v1

    .line 705
    :catch_0
    move-exception v2

    .line 706
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    sget-object v6, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-static {v6, v7}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    const/4 v1, 0x0

    .line 709
    iget-object v6, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
.end method

.method private getQuerySimilarityStructureString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 731
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "SELECT * FROM item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    const-string v1, " WHERE online_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const-string v1, " SELECT online_similar_item_id FROM similarity_structure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    const-string v1, " WHERE online_item_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v1, " GROUP BY online_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    sget-object v1, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getQuerySimilarityStructureString is "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getQuerySoundsetStructureString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "SELECT * FROM item"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    const-string v1, " WHERE online_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 719
    const-string v1, " SELECT online_audio_id FROM soundset_structure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    const-string v1, " WHERE online_soundset_id = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const-string v1, " GROUP BY online_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    sget-object v1, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "getSoundsetSql is "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 726
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 19
    .parameter "uri"
    .parameter "valuesArray"

    .prologue
    .line 206
    const/4 v4, 0x0

    .line 207
    .local v4, count:I
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    .line 461
    :goto_0
    if-lez v4, :cond_0

    .line 462
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 464
    :cond_0
    return v4

    .line 210
    :sswitch_0
    const-string v14, "carousel"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 211
    goto :goto_0

    .line 214
    :sswitch_1
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update carousel"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 217
    move-object/from16 v2, p2

    .local v2, arr$:[Landroid/content/ContentValues;
    :try_start_0
    array-length v7, v2

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v7, :cond_2

    aget-object v12, v2, v6

    .line 218
    .local v12, values:Landroid/content/ContentValues;
    const-string v14, "group_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 220
    const-string v14, "group_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 221
    .local v5, groupId:I
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, onlineId:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "group_id = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "online_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = ?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, where:Ljava/lang/String;
    const-string v14, "group_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 224
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "carousel"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 217
    .end local v5           #groupId:I
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 228
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 236
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_2
    const-string v14, "promo"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 237
    goto/16 :goto_0

    .line 240
    :sswitch_3
    const-string v14, "featured"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 241
    goto/16 :goto_0

    .line 244
    :sswitch_4
    const-string v14, "category"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 245
    goto/16 :goto_0

    .line 248
    :sswitch_5
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update category"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 251
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Landroid/content/ContentValues;
    :try_start_1
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v7, :cond_4

    aget-object v12, v2, v6

    .line 252
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v14, "parent_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 254
    const-string v14, "parent_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, parentId:Ljava/lang/String;
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 256
    .restart local v8       #onlineId:Ljava/lang/String;
    const-string v13, "parent_id = ? AND online_item_id = ?"

    .line 257
    .restart local v13       #where:Ljava/lang/String;
    const-string v14, "parent_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 258
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "category"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v10, v16, v17

    const/16 v17, 0x1

    aput-object v8, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 251
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v10           #parentId:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 262
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_1
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 270
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_6
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update category, fill parent Id"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 273
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Landroid/content/ContentValues;
    :try_start_2
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_3
    if-ge v6, v7, :cond_6

    aget-object v12, v2, v6

    .line 274
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 276
    .local v11, sb:Ljava/lang/StringBuilder;
    const-string v14, "("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "parent_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " IS NULL OR "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v14, "parent_id"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v15, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    const-string v14, "online_item_id"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = ?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 280
    .restart local v8       #onlineId:Ljava/lang/String;
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "category"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 273
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 284
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 287
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_2
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 292
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_7
    const-string v14, "item"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 293
    goto/16 :goto_0

    .line 296
    :sswitch_8
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update item"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 299
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Landroid/content/ContentValues;
    :try_start_3
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_4
    if-ge v6, v7, :cond_8

    aget-object v12, v2, v6

    .line 300
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v14, "category_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 302
    const-string v14, "category_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 303
    .local v3, categoryId:Ljava/lang/String;
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 304
    .restart local v8       #onlineId:Ljava/lang/String;
    const-string v13, "category_id = ? AND online_id = ?"

    .line 305
    .restart local v13       #where:Ljava/lang/String;
    const-string v14, "category_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 306
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "item"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    const/16 v17, 0x1

    aput-object v8, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 299
    .end local v3           #categoryId:Ljava/lang/String;
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 310
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 313
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_3
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 318
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_9
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update item, fill category Id"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 321
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Landroid/content/ContentValues;
    :try_start_4
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_5
    if-ge v6, v7, :cond_a

    aget-object v12, v2, v6

    .line 322
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 323
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    const-string v14, "("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "category_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " IS NULL OR "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v14, "category_id"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v15, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v14, "online_id"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = ?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 328
    .restart local v8       #onlineId:Ljava/lang/String;
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "item"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 321
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 332
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_4
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 340
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_a
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update item, fill detail part if the category id and online action type onclick is unknown"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 343
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Landroid/content/ContentValues;
    :try_start_5
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_6
    if-ge v6, v7, :cond_c

    aget-object v12, v2, v6

    .line 344
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 345
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .restart local v11       #sb:Ljava/lang/StringBuilder;
    const-string v14, "("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "category_id"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " IS NULL OR "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    const-string v14, "category_id"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-wide/16 v15, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    const-string v14, "online_action_type_on_click"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " AND "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const-string v14, "online_id"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " = ?"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 351
    .restart local v8       #onlineId:Ljava/lang/String;
    const-string v14, "online_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 352
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "item"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v8, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v12, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 343
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v11           #sb:Ljava/lang/StringBuilder;
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 355
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_5
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 363
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_b
    const-string v14, "comment"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 364
    goto/16 :goto_0

    .line 367
    :sswitch_c
    const-string v14, "category_ttl"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 368
    goto/16 :goto_0

    .line 371
    :sswitch_d
    const-string v14, "item_ttl"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 372
    goto/16 :goto_0

    .line 375
    :sswitch_e
    const-string v14, "get_more_ttl"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 376
    goto/16 :goto_0

    .line 379
    :sswitch_f
    const-string v14, "my_activity"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 380
    goto/16 :goto_0

    .line 383
    :sswitch_10
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update myActivity"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 386
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Landroid/content/ContentValues;
    :try_start_6
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_7
    if-ge v6, v7, :cond_e

    aget-object v12, v2, v6

    .line 387
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 388
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 389
    .restart local v8       #onlineId:Ljava/lang/String;
    const-string v13, "online_item_id = ?"

    .line 390
    .restart local v13       #where:Ljava/lang/String;
    const-string v14, "status"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "my_activity"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v8, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 386
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 394
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 397
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_6
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 402
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_11
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update orderedHistory items"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 405
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Landroid/content/ContentValues;
    :try_start_7
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_8
    if-ge v6, v7, :cond_12

    aget-object v12, v2, v6

    .line 406
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 407
    const-string v14, "item_package_name"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 408
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 409
    .restart local v8       #onlineId:Ljava/lang/String;
    const-string v14, "item_package_name"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 410
    .local v9, packageName:Ljava/lang/String;
    const-string v13, ""

    .line 411
    .restart local v13       #where:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_10

    .line 412
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "item_package_name = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 416
    :goto_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "my_activity"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 405
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :cond_f
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 414
    .restart local v8       #onlineId:Ljava/lang/String;
    .restart local v9       #packageName:Ljava/lang/String;
    .restart local v13       #where:Ljava/lang/String;
    :cond_10
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "online_item_id = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_9

    .line 418
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :cond_11
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 419
    .restart local v8       #onlineId:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "online_item_id = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 420
    .restart local v13       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "my_activity"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    goto :goto_a

    .line 424
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v12           #values:Landroid/content/ContentValues;
    .end local v13           #where:Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 427
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_7
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 432
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_12
    sget-object v14, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "Batch update orderedHistory items by content type"

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 435
    move-object/from16 v2, p2

    .restart local v2       #arr$:[Landroid/content/ContentValues;
    :try_start_8
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    :goto_b
    if-ge v6, v7, :cond_14

    aget-object v12, v2, v6

    .line 436
    .restart local v12       #values:Landroid/content/ContentValues;
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 437
    const-string v14, "online_item_id"

    invoke-virtual {v12, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 438
    .restart local v8       #onlineId:Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "online_item_id = \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 439
    .restart local v13       #where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v15, "my_activity"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v14, v15, v12, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    add-int/2addr v4, v14

    .line 435
    .end local v8           #onlineId:Ljava/lang/String;
    .end local v13           #where:Ljava/lang/String;
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 442
    .end local v12           #values:Landroid/content/ContentValues;
    :cond_14
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_8
    move-exception v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 450
    .end local v2           #arr$:[Landroid/content/ContentValues;
    :sswitch_13
    const-string v14, "similarity_structure"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 451
    goto/16 :goto_0

    .line 454
    :sswitch_14
    const-string v14, "soundset_structure"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    .line 455
    goto/16 :goto_0

    .line 458
    :sswitch_15
    const-string v14, "get_more_mapping"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/store/provider/ContentProvider;->doDefaultBulkInsert(Ljava/lang/String;Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v4

    goto/16 :goto_0

    .line 207
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x6e -> :sswitch_1
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_3
        0x190 -> :sswitch_4
        0x19a -> :sswitch_5
        0x1a4 -> :sswitch_6
        0x1f4 -> :sswitch_7
        0x1fe -> :sswitch_8
        0x208 -> :sswitch_9
        0x212 -> :sswitch_a
        0x258 -> :sswitch_b
        0x2bc -> :sswitch_c
        0x2ee -> :sswitch_d
        0x320 -> :sswitch_e
        0x384 -> :sswitch_f
        0x38e -> :sswitch_10
        0x398 -> :sswitch_11
        0x3a2 -> :sswitch_12
        0x3e8 -> :sswitch_13
        0x44c -> :sswitch_14
        0x4b0 -> :sswitch_15
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, count:I
    sget-object v1, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 610
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :sswitch_0
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "carousel"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 612
    :goto_0
    if-lez v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 615
    :cond_0
    return v0

    .line 554
    :sswitch_1
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "promo"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 555
    goto :goto_0

    .line 558
    :sswitch_2
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "featured"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 559
    goto :goto_0

    .line 562
    :sswitch_3
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 563
    goto :goto_0

    .line 566
    :sswitch_4
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "item"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 567
    goto :goto_0

    .line 570
    :sswitch_5
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "comment"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 571
    goto :goto_0

    .line 574
    :sswitch_6
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category_ttl"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 575
    goto :goto_0

    .line 578
    :sswitch_7
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "item_ttl"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 579
    goto :goto_0

    .line 582
    :sswitch_8
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "get_more_ttl"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 583
    goto :goto_0

    .line 586
    :sswitch_9
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "my_activity"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 587
    goto :goto_0

    .line 590
    :sswitch_a
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "similarity_structure"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 591
    goto :goto_0

    .line 594
    :sswitch_b
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "soundset_structure"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 595
    goto :goto_0

    .line 598
    :sswitch_c
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "get_more_mapping"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 599
    goto :goto_0

    .line 602
    :sswitch_d
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "STPInbox"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 603
    goto/16 :goto_0

    .line 606
    :sswitch_e
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "image_cache_mapping"

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 607
    goto/16 :goto_0

    .line 547
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
        0x2ee -> :sswitch_7
        0x320 -> :sswitch_8
        0x384 -> :sswitch_9
        0x3e8 -> :sswitch_a
        0x44c -> :sswitch_b
        0x4b0 -> :sswitch_c
        0x514 -> :sswitch_d
        0x578 -> :sswitch_e
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .parameter "uri"
    .parameter "values"

    .prologue
    const/4 v5, 0x0

    .line 469
    const-wide/16 v0, 0x0

    .line 470
    .local v0, rowId:J
    sget-object v3, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 533
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    :sswitch_0
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "carousel"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 535
    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 536
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 537
    .local v2, rowUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 538
    return-object v2

    .line 477
    .end local v2           #rowUri:Landroid/net/Uri;
    :sswitch_1
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "promo"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 478
    goto :goto_0

    .line 481
    :sswitch_2
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "featured"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 482
    goto :goto_0

    .line 485
    :sswitch_3
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "category"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 486
    goto :goto_0

    .line 489
    :sswitch_4
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "item"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 490
    goto :goto_0

    .line 493
    :sswitch_5
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "comment"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 494
    goto :goto_0

    .line 497
    :sswitch_6
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "category_ttl"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 498
    goto :goto_0

    .line 501
    :sswitch_7
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "item_ttl"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 502
    goto :goto_0

    .line 505
    :sswitch_8
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "get_more_ttl"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 506
    goto :goto_0

    .line 509
    :sswitch_9
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "my_activity"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 510
    goto :goto_0

    .line 513
    :sswitch_a
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "similarity_structure"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 514
    goto :goto_0

    .line 517
    :sswitch_b
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "soundset_structure"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 518
    goto :goto_0

    .line 521
    :sswitch_c
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "get_more_mapping"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 522
    goto/16 :goto_0

    .line 525
    :sswitch_d
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "STPInbox"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 526
    goto/16 :goto_0

    .line 529
    :sswitch_e
    iget-object v3, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "image_cache_mapping"

    invoke-virtual {v3, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 530
    goto/16 :goto_0

    .line 540
    :cond_0
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
        0x2ee -> :sswitch_7
        0x320 -> :sswitch_8
        0x384 -> :sswitch_9
        0x3e8 -> :sswitch_a
        0x44c -> :sswitch_b
        0x4b0 -> :sswitch_c
        0x514 -> :sswitch_d
        0x578 -> :sswitch_e
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 102
    sget-object v1, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "provider onCreate"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    new-instance v0, Lcom/htc/store/provider/ContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "htcstore.db"

    const/4 v4, 0x0

    const/16 v5, 0x2b

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/store/provider/ContentProvider$DatabaseHelper;-><init>(Lcom/htc/store/provider/ContentProvider;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 105
    .local v0, dbHelper:Lcom/htc/store/provider/ContentProvider$DatabaseHelper;
    :try_start_0
    invoke-virtual {v0}, Lcom/htc/store/provider/ContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    move v1, v7

    :goto_1
    return v1

    .line 106
    :catch_0
    move-exception v6

    .line 107
    .local v6, e:Ljava/lang/Exception;
    sget-object v1, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const-string v2, "Can not open database."

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :cond_0
    move v1, v8

    .line 109
    goto :goto_1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v5, 0x0

    .line 119
    const/4 v8, 0x0

    .line 120
    .local v8, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_1

    .line 121
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :sswitch_0
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "carousel"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 194
    :goto_0
    if-eqz v8, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v8, v0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 201
    :cond_0
    :goto_1
    return-object v8

    .line 128
    :sswitch_1
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "promo"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    goto :goto_0

    .line 132
    :sswitch_2
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "featured"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 133
    goto :goto_0

    .line 136
    :sswitch_3
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "category"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 137
    goto :goto_0

    .line 140
    :sswitch_4
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "item"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 141
    goto :goto_0

    .line 144
    :sswitch_5
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "comment"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 145
    goto :goto_0

    .line 148
    :sswitch_6
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "category_ttl"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 149
    goto :goto_0

    .line 152
    :sswitch_7
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "item_ttl"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 153
    goto :goto_0

    .line 156
    :sswitch_8
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "get_more_ttl"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 157
    goto :goto_0

    .line 160
    :sswitch_9
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "my_activity"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 161
    goto/16 :goto_0

    .line 164
    :sswitch_a
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "similarity_structure"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 165
    goto/16 :goto_0

    .line 168
    :sswitch_b
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/htc/store/provider/ContentProvider;->getQuerySimilarityStructureString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 169
    goto/16 :goto_0

    .line 172
    :sswitch_c
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "soundset_structure"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 173
    goto/16 :goto_0

    .line 176
    :sswitch_d
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Lcom/htc/store/provider/ContentProvider;->getQuerySoundsetStructureString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 177
    goto/16 :goto_0

    .line 180
    :sswitch_e
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "get_more_mapping"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 181
    goto/16 :goto_0

    .line 184
    :sswitch_f
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "STPInbox"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 185
    goto/16 :goto_0

    .line 188
    :sswitch_10
    iget-object v0, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "image_cache_mapping"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 189
    goto/16 :goto_0

    .line 199
    :cond_1
    sget-object v0, Lcom/htc/store/provider/ContentProvider;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "mDatabase is null"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 121
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
        0x2ee -> :sswitch_7
        0x320 -> :sswitch_8
        0x384 -> :sswitch_9
        0x3e8 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x44c -> :sswitch_c
        0x456 -> :sswitch_d
        0x4b0 -> :sswitch_e
        0x514 -> :sswitch_f
        0x578 -> :sswitch_10
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 621
    .local v0, count:I
    sget-object v1, Lcom/htc/store/provider/ContentProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 688
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 624
    :sswitch_0
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "carousel"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 690
    :goto_0
    if-lez v0, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/htc/store/provider/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 693
    :cond_0
    return v0

    .line 628
    :sswitch_1
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "promo"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 629
    goto :goto_0

    .line 632
    :sswitch_2
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "featured"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 633
    goto :goto_0

    .line 636
    :sswitch_3
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 637
    goto :goto_0

    .line 640
    :sswitch_4
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "item"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 641
    goto :goto_0

    .line 644
    :sswitch_5
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "comment"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 645
    goto :goto_0

    .line 648
    :sswitch_6
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "category_ttl"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 649
    goto :goto_0

    .line 652
    :sswitch_7
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "item_ttl"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 653
    goto :goto_0

    .line 656
    :sswitch_8
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "get_more_ttl"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 657
    goto :goto_0

    .line 660
    :sswitch_9
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "my_activity"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 661
    goto :goto_0

    .line 664
    :sswitch_a
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "similarity_structure"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 665
    goto :goto_0

    .line 668
    :sswitch_b
    const/4 v0, 0x1

    .line 669
    goto :goto_0

    .line 672
    :sswitch_c
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "soundset_structure"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 673
    goto :goto_0

    .line 676
    :sswitch_d
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "get_more_mapping"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 677
    goto :goto_0

    .line 680
    :sswitch_e
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "STPInbox"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 681
    goto/16 :goto_0

    .line 684
    :sswitch_f
    iget-object v1, p0, Lcom/htc/store/provider/ContentProvider;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "image_cache_mapping"

    invoke-virtual {v1, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 685
    goto/16 :goto_0

    .line 621
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_2
        0x190 -> :sswitch_3
        0x1f4 -> :sswitch_4
        0x258 -> :sswitch_5
        0x2bc -> :sswitch_6
        0x2ee -> :sswitch_7
        0x320 -> :sswitch_8
        0x384 -> :sswitch_9
        0x3e8 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x44c -> :sswitch_c
        0x4b0 -> :sswitch_d
        0x514 -> :sswitch_e
        0x578 -> :sswitch_f
    .end sparse-switch
.end method

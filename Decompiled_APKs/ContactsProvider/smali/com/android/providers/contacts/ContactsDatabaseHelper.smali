.class public Lcom/android/providers/contacts/ContactsDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContactsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactsDatabaseHelper$RawContactNameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$OrganizationQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$DataUsageStatColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$SearchIndexColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$DirectoryColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$AccountsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PropertiesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PhotoFilesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StreamItemPhotosColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StreamItemsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$ContactsStatusUpdatesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$StatusUpdatesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$AggregatedPresenceColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PresenceColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$SettingsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameLookupColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$AggregationExceptionColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$MimetypesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PackagesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NameLookupType;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$NameLookupColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PhoneLookupColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$ActivitiesColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$GroupsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$PhoneColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$GroupMembershipColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$ExtensionsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$DataColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$RawContactsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$ContactsColumns;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Clauses;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Views;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Joins;,
        Lcom/android/providers/contacts/ContactsDatabaseHelper$Tables;
    }
.end annotation


# static fields
.field protected static final DATABASE_NAME:Ljava/lang/String; = "contacts2.db"

.field private static final DATABASE_PRESENCE:Ljava/lang/String; = "presence_db"

.field static final DATABASE_VERSION:I = 0x271

.field private static final TAG:Ljava/lang/String; = "ContactsDatabaseHelper"

.field private static sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;


# instance fields
.field private mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

.field protected mCacheLock:Ljava/lang/Object;

.field private mCallLogUpdateByRawContactIdDeleted:Landroid/database/sqlite/SQLiteStatement;

.field private mCharArrayBuffer:Landroid/database/CharArrayBuffer;

.field private mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mCompiledStatementController:Lcom/android/providers/contacts/CompiledStatementController;

.field private mContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

.field private final mContext:Landroid/content/Context;

.field private final mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

.field private mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

.field protected mDataSuperPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

.field protected mDataSuperPrimaryCountByRawContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

.field private final mDatabaseOptimizationEnabled:Z

.field public mIsGBToICSUpgradHappen:Z

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdIm:J

.field private mMimeTypeIdNickname:J

.field private mMimeTypeIdOrganization:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdSip:J

.field private mMimeTypeIdStructuredName:J

.field private mMimeTypeIdStructuredPostal:J

.field private final mMimetypeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Lcom/android/providers/contacts/NameSplitter$Name;

.field private mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private final mPackageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoIdQueryByRawContactId:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mReopenDatabase:Z

.field private mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

.field private mSb:Ljava/lang/StringBuilder;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

.field private mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

.field private final mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

.field private mUnrestrictedPackages:[Ljava/lang/String;

.field mUpgradeNameLookup:Z

.field private mUseStrictPhoneNumberComparison:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 783
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 810
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 811
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8
    .parameter "context"
    .parameter "databaseName"
    .parameter "optimizationEnabled"

    .prologue
    const/4 v7, 0x0

    .line 817
    const/4 v3, 0x0

    const/16 v4, 0x271

    invoke-static {}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDatabaseErrorHandler()Landroid/database/DatabaseErrorHandler;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 118
    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUpgradeNameLookup:Z

    .line 723
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    .line 725
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    .line 781
    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 789
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCacheLock:Ljava/lang/Object;

    .line 792
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    .line 793
    new-instance v0, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct {v0}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    .line 794
    new-instance v0, Landroid/database/CharArrayBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/database/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    .line 821
    iput-boolean p3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    .line 822
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 824
    .local v6, resources:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    .line 825
    new-instance v0, Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-direct {v0}, Lcom/android/common/content/SyncStateContentProviderHelper;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    .line 826
    new-instance v0, Lcom/android/providers/contacts/CountryMonitor;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CountryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    .line 827
    const v0, 0x1110018

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    .line 832
    invoke-direct {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initAccessRightPackagesList()V

    .line 834
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 95
    invoke-direct/range {p0 .. p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    return-void
.end method

.method private appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "sb"
    .parameter "number"
    .parameter "numberE164"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4503
    const-string v5, "lookup.data_id=data._id AND data.raw_contact_id=raw_contacts._id"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4504
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    move v1, v3

    .line 4505
    .local v1, hasNumberE164:Z
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    move v0, v3

    .line 4506
    .local v0, hasNumber:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_4

    .line 4507
    :cond_0
    const-string v3, " AND ( "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4508
    if-eqz v1, :cond_1

    .line 4509
    const-string v3, " lookup.normalized_number = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4510
    invoke-static {p1, p3}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4512
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 4513
    const-string v3, " OR "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4515
    :cond_2
    if-eqz v0, :cond_3

    .line 4516
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4517
    .local v2, numberLen:I
    const-string v3, " lookup.len <= "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4518
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4519
    const-string v3, " AND substr("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4520
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4521
    const/16 v3, 0x2c

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4522
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4523
    const-string v3, " - lookup.len + 1) = lookup.normalized_number"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4529
    const-string v3, " OR ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4530
    const-string v3, " lookup.len > "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4531
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4532
    const-string v3, " AND substr(lookup.normalized_number,"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4533
    const-string v3, "lookup.len + 1 - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4534
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4535
    const-string v3, ") = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4536
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 4537
    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4539
    .end local v2           #numberLen:I
    :cond_3
    const/16 v3, 0x29

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4541
    :cond_4
    return-void

    .end local v0           #hasNumber:Z
    .end local v1           #hasNumberE164:Z
    :cond_5
    move v1, v4

    .line 4504
    goto :goto_0

    .restart local v1       #hasNumberE164:Z
    :cond_6
    move v0, v4

    .line 4505
    goto :goto_1
.end method

.method private appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .parameter "sb"
    .parameter "minMatch"
    .parameter "joinContacts"

    .prologue
    .line 4490
    const-string v0, "raw_contacts"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4491
    if-eqz p3, :cond_0

    .line 4492
    const-string v0, " JOIN view_contacts contacts_view ON (contacts_view._id = raw_contacts.contact_id)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4495
    :cond_0
    const-string v0, ", (SELECT data_id, normalized_number, length(normalized_number) as len  FROM phone_lookup  WHERE (phone_lookup.min_match = \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4498
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4499
    const-string v0, "\')) AS lookup, data"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4500
    return-void
.end method

.method private bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V
    .locals 2
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3784
    if-nez p3, :cond_0

    .line 3785
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3789
    :goto_0
    return-void

    .line 3787
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_0
.end method

.method private bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "stmt"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 3776
    if-nez p3, :cond_0

    .line 3777
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3781
    :goto_0
    return-void

    .line 3779
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contactIdColumn"
    .parameter "alias"

    .prologue
    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CASE WHEN photo_file_id IS NULL THEN (CASE WHEN photo_id IS NULL OR photo_id=0 THEN NULL ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|| \'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END) ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo_file_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "contactIdColumn"
    .parameter "alias"

    .prologue
    .line 1975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(CASE WHEN photo_id IS NULL OR photo_id=0 THEN NULL ELSE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/\'||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|| \'/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyLongValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 4
    .parameter "toValues"
    .parameter "toKey"
    .parameter "fromValues"
    .parameter "fromKey"

    .prologue
    .line 4594
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4596
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 4597
    .local v2, value:Ljava/lang/Object;
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 4598
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4599
    const-wide/16 v0, 0x1

    .line 4608
    .local v0, longValue:J
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4610
    .end local v0           #longValue:J
    :cond_0
    return-void

    .line 4601
    :cond_1
    const-wide/16 v0, 0x0

    .restart local v0       #longValue:J
    goto :goto_0

    .line 4603
    .end local v0           #longValue:J
    .restart local v2       #value:Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 4604
    check-cast v2, Ljava/lang/String;

    .end local v2           #value:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .restart local v0       #longValue:J
    goto :goto_0

    .line 4606
    .end local v0           #longValue:J
    .restart local v2       #value:Ljava/lang/Object;
    :cond_3
    check-cast v2, Ljava/lang/Number;

    .end local v2           #value:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .restart local v0       #longValue:J
    goto :goto_0
.end method

.method public static copyStringValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .parameter "toValues"
    .parameter "toKey"
    .parameter "fromValues"
    .parameter "fromKey"

    .prologue
    .line 4587
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4588
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4590
    :cond_0
    return-void
.end method

.method private createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1641
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1642
    const-string v0, "CREATE INDEX name_lookup_index ON name_lookup (normalized_name,name_type, raw_contact_id, data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1649
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key1_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1650
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (sort_key);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1654
    const-string v0, "DROP INDEX IF EXISTS raw_contact_sort_key2_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1655
    const-string v0, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (sort_key_alt);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1658
    return-void
.end method

.method private createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1486
    const-string v3, "DROP TRIGGER IF EXISTS raw_contacts_deleted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1487
    const-string v3, "CREATE TRIGGER raw_contacts_deleted    BEFORE DELETE ON raw_contacts BEGIN    DELETE FROM data     WHERE raw_contact_id=OLD._id;   DELETE FROM agg_exceptions     WHERE raw_contact_id1=OLD._id        OR raw_contact_id2=OLD._id;   DELETE FROM visible_contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   DELETE FROM default_directory     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   DELETE FROM contacts     WHERE _id=OLD.contact_id       AND (SELECT COUNT(*) FROM raw_contacts            WHERE contact_id=OLD.contact_id           )=1;   UPDATE calls SET name=NULL, numbertype=NULL, numberlabel=NULL, raw_contact_id=NULL     WHERE raw_contact_id=OLD.contact_id;   DELETE FROM suggestion    WHERE raw_contact_id1=OLD._id        OR raw_contact_id2=OLD._id; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1534
    const-string v3, "DROP TRIGGER IF EXISTS contacts_times_contacted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1535
    const-string v3, "DROP TRIGGER IF EXISTS raw_contacts_times_contacted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1542
    const-string v3, "DROP TRIGGER IF EXISTS raw_contacts_marked_deleted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1543
    const-string v3, "CREATE TRIGGER raw_contacts_marked_deleted    AFTER UPDATE ON raw_contacts BEGIN    UPDATE raw_contacts     SET version=OLD.version+1      WHERE _id=OLD._id       AND NEW.deleted!= OLD.deleted; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1553
    const-string v3, "DROP TRIGGER IF EXISTS data_updated;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1554
    const-string v3, "CREATE TRIGGER data_updated AFTER UPDATE ON data BEGIN    UPDATE data     SET data_version=OLD.data_version+1      WHERE _id=OLD._id;   UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1564
    const-string v3, "DROP TRIGGER IF EXISTS data_deleted;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1565
    const-string v3, "CREATE TRIGGER data_deleted BEFORE DELETE ON data BEGIN    UPDATE raw_contacts     SET version=version+1      WHERE _id=OLD.raw_contact_id;   DELETE FROM phone_lookup     WHERE data_id=OLD._id;   DELETE FROM status_updates     WHERE status_update_data_id=OLD._id;   DELETE FROM name_lookup     WHERE data_id=OLD._id; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1579
    const-string v3, "DROP TRIGGER IF EXISTS groups_updated1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1580
    const-string v3, "CREATE TRIGGER groups_updated1    AFTER UPDATE ON groups BEGIN    UPDATE groups     SET version=OLD.version+1     WHERE _id=OLD._id; END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1591
    const-string v2, " INSERT OR IGNORE INTO default_directory     SELECT contact_id     FROM raw_contacts     WHERE raw_contacts.account_name IS NULL      AND raw_contacts.account_type IS NULL; "

    .line 1597
    .local v2, insertContactsWithoutAccount:Ljava/lang/String;
    const-string v1, " INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     WHERE NOT EXISTS         (SELECT _id             FROM groups             WHERE raw_contacts.account_name = groups.account_name             AND raw_contacts.account_type = groups.account_type             AND auto_add != 0);"

    .line 1609
    .local v1, insertContactsWithAccountNoDefaultGroup:Ljava/lang/String;
    const-string v0, " INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     JOIN data           ON (raw_contacts._id=raw_contact_id)     WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/group_membership\')     AND EXISTS         (SELECT _id             FROM groups                 WHERE raw_contacts.account_name = groups.account_name                 AND raw_contacts.account_type = groups.account_type                 AND auto_add != 0);"

    .line 1629
    .local v0, insertContactsWithAccountDefaultGroup:Ljava/lang/String;
    const-string v3, "DROP TRIGGER IF EXISTS groups_auto_add_updated1;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1630
    const-string v3, "CREATE TRIGGER groups_auto_add_updated1    AFTER UPDATE OF auto_add ON groups BEGIN    DELETE FROM default_directory; INSERT OR IGNORE INTO default_directory     SELECT contact_id     FROM raw_contacts     WHERE raw_contacts.account_name IS NULL      AND raw_contacts.account_type IS NULL;  INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     WHERE NOT EXISTS         (SELECT _id             FROM groups             WHERE raw_contacts.account_name = groups.account_name             AND raw_contacts.account_type = groups.account_type             AND auto_add != 0); INSERT OR IGNORE INTO default_directory     SELECT contact_id         FROM raw_contacts     JOIN data           ON (raw_contacts._id=raw_contact_id)     WHERE mimetype_id=(SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/group_membership\')     AND EXISTS         (SELECT _id             FROM groups                 WHERE raw_contacts.account_name = groups.account_name                 AND raw_contacts.account_type = groups.account_type                 AND auto_add != 0); END"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1638
    return-void
.end method

.method private createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18
    .parameter "db"

    .prologue
    .line 1661
    const-string v15, "DROP VIEW IF EXISTS view_contacts;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1662
    const-string v15, "DROP VIEW IF EXISTS view_data;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1663
    const-string v15, "DROP VIEW IF EXISTS view_raw_contacts;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1664
    const-string v15, "DROP VIEW IF EXISTS view_raw_entities;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1665
    const-string v15, "DROP VIEW IF EXISTS view_entities;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1666
    const-string v15, "DROP VIEW IF EXISTS view_data_usage_stat;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1667
    const-string v15, "DROP VIEW IF EXISTS view_stream_items;"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1669
    const-string v6, "is_primary, is_super_primary, data_version, data.package_id,package AS res_package,data.mimetype_id,mimetype AS mimetype, is_read_only, data1, data2, data3, data4, data5, data6, data7, data8, data9, data10, data11, data12, data13, data14, data15, data_sync1, data_sync2, data_sync3, data_sync4"

    .line 1698
    .local v6, dataColumns:Ljava/lang/String;
    const-string v14, "raw_contacts.account_name AS account_name,raw_contacts.account_type AS account_type,raw_contacts.data_set AS data_set,(CASE WHEN raw_contacts.data_set IS NULL THEN raw_contacts.account_type ELSE raw_contacts.account_type||\'/\'||raw_contacts.data_set END) AS account_type_and_data_set,raw_contacts.sourceid AS sourceid,raw_contacts.name_verified AS name_verified,raw_contacts.version AS version,raw_contacts.dirty AS dirty,raw_contacts.sync1 AS sync1,raw_contacts.sync2 AS sync2,raw_contacts.sync3 AS sync3,raw_contacts.sync4 AS sync4"

    .line 1717
    .local v14, syncColumns:Ljava/lang/String;
    const-string v1, "has_phone_number, name_raw_contact_id, lookup, photo_id, photo_file_id, CAST(EXISTS (SELECT _id FROM visible_contacts WHERE contacts._id=visible_contacts._id) AS INTEGER) AS in_visible_group, status_update_id"

    .line 1727
    .local v1, baseContactColumns:Ljava/lang/String;
    const-string v3, "contacts.custom_ringtone AS custom_ringtone,contacts.send_to_voicemail AS send_to_voicemail,contacts.last_time_contacted AS last_time_contacted,contacts.times_contacted AS times_contacted,contacts.starred AS starred"

    .line 1739
    .local v3, contactOptionColumns:Ljava/lang/String;
    const-string v2, "name_raw_contact.display_name_source AS display_name_source, name_raw_contact.display_name AS display_name, name_raw_contact.display_name_alt AS display_name_alt, name_raw_contact.phonetic_name AS phonetic_name, name_raw_contact.phonetic_name_style AS phonetic_name_style, name_raw_contact.sort_key AS sort_key, name_raw_contact.sort_key_alt AS sort_key_alt"

    .line 1755
    .local v2, contactNameColumns:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT data._id AS _id,raw_contact_id, raw_contacts.contact_id AS contact_id, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    const-string v17, "photo_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    const-string v17, "photo_thumb_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contact_is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "group_sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.mimetype_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS name_raw_contact ON("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "name_raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=name_raw_contact."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.package_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes.mimetype"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' AND "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1786
    .local v7, dataSelect:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_data AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1788
    const-string v10, "custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred"

    .line 1795
    .local v10, rawContactOptionColumns:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT raw_contacts._id AS _id,contact_id, aggregation_mode, raw_contact_is_read_only, deleted, display_name_source, display_name, display_name_alt, phonetic_name, phonetic_name_style, sort_key, sort_key_alt, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contact_is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1813
    .local v11, rawContactsSelect:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_raw_contacts AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1815
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "contacts.custom_ringtone AS custom_ringtone, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.last_time_contacted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "last_time_contacted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.send_to_voicemail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "send_to_voicemail"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.starred"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "starred"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts.times_contacted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "times_contacted"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1829
    .local v4, contactsColumns:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT contacts._id AS _id,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts._id"

    const-string v17, "photo_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts._id"

    const-string v17, "photo_thumb_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS name_raw_contact ON("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "name_raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=name_raw_contact."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1840
    .local v5, contactsSelect:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_contacts AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1842
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT contact_id, raw_contacts.deleted AS deleted,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync3"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync4"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.starred"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "starred"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contact_is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "group_sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.package_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.mimetype_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes.mimetype"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' AND "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1868
    .local v12, rawEntitiesSelect:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_raw_entities AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1871
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SELECT raw_contacts.contact_id AS _id, raw_contacts.contact_id AS contact_id, raw_contacts.deleted AS deleted,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    const-string v17, "photo_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildDisplayPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    const-string v17, "photo_thumb_uri"

    invoke-static/range {v16 .. v17}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->buildThumbnailPhotoUriAlias(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->dbForProfile()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "is_user_profile"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync2"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync3"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_sync4"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "group_sourceid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FROM "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts.contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " AS name_raw_contact ON("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "name_raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=name_raw_contact."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.raw_contact_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "raw_contacts._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.package_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "packages._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data.mimetype_id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " LEFT OUTER JOIN "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ON ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "mimetypes.mimetype"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "=\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "vnd.android.cursor.item/group_membership"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\' AND "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "groups._id"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "data1"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1906
    .local v9, entitiesSelect:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_entities AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1909
    const-string v8, "SELECT data_usage_stat.stat_id AS stat_id, data_id, raw_contacts.contact_id AS contact_id, mimetypes.mimetype AS mimetype, usage_type, times_used, last_time_used FROM data_usage_stat JOIN data ON (data._id=data_usage_stat.data_id) JOIN raw_contacts ON (raw_contacts._id=data.raw_contact_id ) JOIN mimetypes ON (mimetypes._id=data.mimetype_id)"

    .line 1926
    .local v8, dataUsageStatSelect:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_data_usage_stat AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1928
    const-string v13, "SELECT stream_items._id, contacts._id AS contact_id, contacts.lookup AS contact_lookup, raw_contacts.account_name, raw_contacts.account_type, raw_contacts.data_set, stream_items.raw_contact_id as raw_contact_id, raw_contacts.sourceid as raw_contact_source_id, stream_items.res_package, stream_items.icon, stream_items.label, stream_items.text, stream_items.timestamp, stream_items.comments, stream_items.stream_item_sync1, stream_items.stream_item_sync2, stream_items.stream_item_sync3, stream_items.stream_item_sync4 FROM stream_items JOIN raw_contacts ON (stream_items.raw_contact_id=raw_contacts._id) JOIN contacts ON (raw_contacts.contact_id=contacts._id)"

    .line 1956
    .local v13, streamItemSelect:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CREATE VIEW view_stream_items AS "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1957
    return-void
.end method

.method private createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 1449
    const-string v0, "CREATE TABLE directories(_id INTEGER PRIMARY KEY AUTOINCREMENT,packageName TEXT NOT NULL,authority TEXT NOT NULL,typeResourceId INTEGER,typeResourceName TEXT,accountType TEXT,accountName TEXT,displayName TEXT, exportSupport INTEGER NOT NULL DEFAULT 0,shortcutSupport INTEGER NOT NULL DEFAULT 0,photoSupport INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1467
    const-string v0, "directoryScanComplete"

    const-string v1, "0"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    return-void
.end method

.method private createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 1995
    const-string v2, "DROP VIEW IF EXISTS view_groups;"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1996
    const-string v0, "account_name,account_type,data_set,(CASE WHEN data_set IS NULL THEN account_type ELSE account_type||data_set END) AS account_type_and_data_set,sourceid,version,dirty,title,title_res,notes,system_id,deleted,group_visible,should_sync,auto_add,favorites,group_is_read_only,sync1,sync2,sync3,sync4,package AS res_package"

    .line 2022
    .local v0, groupsColumns:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT groups._id AS _id,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "groups LEFT OUTER JOIN packages ON (groups.package_id = packages._id)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2027
    .local v1, groupsSelect:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE VIEW view_groups AS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2028
    return-void
.end method

.method static dropAllTableForRebootstrap(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 5351
    const-string v0, "ContactsDatabaseHelper"

    const-string v1, "dropAllTableForRebootstrap E"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    const-string v0, "DROP TABLE IF EXISTS contacts;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5353
    const-string v0, "DROP TABLE IF EXISTS raw_contacts;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5354
    const-string v0, "DROP TABLE IF EXISTS packages;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5355
    const-string v0, "DROP TABLE IF EXISTS mimetypes;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5356
    const-string v0, "DROP TABLE IF EXISTS data;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5357
    const-string v0, "DROP TABLE IF EXISTS phone_lookup;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5358
    const-string v0, "DROP TABLE IF EXISTS name_lookup;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5359
    const-string v0, "DROP TABLE IF EXISTS nickname_lookup;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5360
    const-string v0, "DROP TABLE IF EXISTS groups;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5361
    const-string v0, "DROP TABLE IF EXISTS activities;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5362
    const-string v0, "DROP TABLE IF EXISTS calls;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5365
    const-string v0, "DROP TABLE IF EXISTS status_updates;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5370
    const-string v0, "DROP TABLE IF EXISTS agg_exceptions;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5371
    const-string v0, "DROP TABLE IF EXISTS properties;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5374
    const-string v0, "ContactsDatabaseHelper"

    const-string v1, "dropAllTableForRebootstrap X"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5375
    return-void
.end method

.method protected static getDatabaseErrorHandler()Landroid/database/DatabaseErrorHandler;
    .locals 1

    .prologue
    .line 5391
    new-instance v0, Lcom/android/providers/contacts/ContactDatabaseErrorHandler;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactDatabaseErrorHandler;-><init>()V

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/ContactsDatabaseHelper;
    .locals 4
    .parameter "context"

    .prologue
    .line 799
    const-class v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    if-nez v0, :cond_0

    .line 800
    new-instance v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "contacts2.db"

    const/4 v3, 0x1

    invoke-direct {v0, p0, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    sput-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 802
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->sSingleton:Lcom/android/providers/contacts/ContactsDatabaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 799
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getUidForPackageName(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 3
    .parameter "pm"
    .parameter "packageName"

    .prologue
    .line 3995
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 3996
    .local v0, clientInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 3997
    .end local v0           #clientInfo:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 3998
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private hasAccessToRestrictedData(Ljava/lang/String;)Z
    .locals 5
    .parameter "requestingPackage"

    .prologue
    .line 5500
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUnrestrictedPackages:[Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5501
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUnrestrictedPackages:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 5502
    .local v0, allowedPackage:Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5503
    const/4 v4, 0x1

    .line 5507
    .end local v0           #allowedPackage:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 5501
    .restart local v0       #allowedPackage:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5507
    .end local v0           #allowedPackage:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private initAccessRightPackagesList()V
    .locals 5

    .prologue
    .line 5511
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5512
    .local v1, resources:Landroid/content/res/Resources;
    const-string v2, "unrestricted_packages"

    const-string v3, "array"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5514
    .local v0, resourceId:I
    if-eqz v0, :cond_0

    .line 5515
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUnrestrictedPackages:[Ljava/lang/String;

    .line 5519
    :goto_0
    return-void

    .line 5517
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUnrestrictedPackages:[Ljava/lang/String;

    goto :goto_0
.end method

.method private innerUpdateAllVisibility(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 9
    .parameter "db"
    .parameter "selection"
    .parameter "contactId"

    .prologue
    .line 4368
    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    .line 4369
    .local v4, groupMembershipMimetypeId:J
    const/4 v7, 0x1

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 4371
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 4373
    .local v0, beginEnterCPUTime:J
    const-string v7, " CREATE TEMP TABLE IF NOT EXISTS Temp_Visible(_id)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4374
    const-string v7, " INSERT INTO Temp_Visible  SELECT _id FROM contacts WHERE (SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL AND raw_contacts.data_set IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type AND ((raw_contacts.data_set IS NULL AND settings.data_set IS NULL) OR (raw_contacts.data_set = settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id=contacts._id GROUP BY contact_id)=1 "

    invoke-virtual {p1, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4380
    const-string v7, "DELETE FROM visible_contacts WHERE _id NOT IN (select _id from Temp_Visible) "

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4384
    const-string v7, "INSERT INTO visible_contacts select distinct _id from Temp_Visible WHERE _id  NOT IN visible_contacts  "

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4389
    const-string v7, "DROP TABLE Temp_Visible"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4391
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 4392
    .local v2, exitExistCPUTime:J
    return-void
.end method

.method private insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 12
    .parameter "db"
    .parameter "nameLookupInsert"

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3271
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    .line 3272
    .local v9, mimeTypeId:J
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$EmailQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3276
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3277
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3278
    .local v4, dataId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3279
    .local v2, rawContactId:J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3280
    .local v7, address:Ljava/lang/String;
    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3281
    const/4 v6, 0x4

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3285
    .end local v2           #rawContactId:J
    .end local v4           #dataId:J
    .end local v7           #address:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3287
    return-void
.end method

.method private insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 3143
    const-string v1, "DELETE FROM name_lookup"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3145
    const-string v1, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 3154
    .local v0, nameLookupInsert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3155
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertEmailLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3156
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3158
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3160
    return-void

    .line 3158
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v1
.end method

.method private insertNicknameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 12
    .parameter "db"
    .parameter "nameLookupInsert"

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3310
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    .line 3311
    .local v9, mimeTypeId:J
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$NicknameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    new-array v4, v11, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3315
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3316
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3317
    .local v4, dataId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3318
    .local v2, rawContactId:J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3319
    .local v7, nickname:Ljava/lang/String;
    const/4 v6, 0x3

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3323
    .end local v2           #rawContactId:J
    .end local v4           #dataId:J
    .end local v7           #nickname:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3325
    return-void
.end method

.method private insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 3
    .parameter "stmt"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "normalizedName"

    .prologue
    .line 3346
    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3347
    const/4 v0, 0x2

    invoke-virtual {p1, v0, p4, p5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3348
    const/4 v0, 0x3

    int-to-long v1, p6

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3349
    const/4 v0, 0x4

    invoke-virtual {p1, v0, p7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 3350
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 3351
    return-void
.end method

.method private insertStructuredNameLookup(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 13
    .parameter "db"
    .parameter "nameLookupInsert"

    .prologue
    .line 3210
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v12

    .line 3211
    .local v12, nameSplitter:Lcom/android/providers/contacts/NameSplitter;
    new-instance v11, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;

    new-instance v0, Lcom/android/providers/contacts/CommonNicknameCache;

    invoke-direct {v0, p1}, Lcom/android/providers/contacts/CommonNicknameCache;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {v11, p0, v12, v0, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameLookupBuilder;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;Landroid/database/sqlite/SQLiteStatement;)V

    .line 3213
    .local v11, nameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;
    const-string v0, "vnd.android.cursor.item/name"

    invoke-static {p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v9

    .line 3214
    .local v9, mimeTypeId:J
    const-string v1, "data"

    sget-object v2, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructuredNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "mimetype_id=? AND data1 NOT NULL"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3218
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3219
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3220
    .local v3, dataId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3221
    .local v1, rawContactId:J
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3222
    .local v5, name:Ljava/lang/String;
    invoke-virtual {v12, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v6

    .line 3223
    .local v6, fullNameStyle:I
    invoke-virtual {v12, v6}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v6

    move-object v0, v11

    .line 3224
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3227
    .end local v1           #rawContactId:J
    .end local v3           #dataId:J
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #fullNameStyle:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3229
    return-void
.end method

.method private loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10
    .parameter "db"

    .prologue
    .line 4551
    const-string v7, "DELETE FROM nickname_lookup"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4553
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 4555
    .local v6, strings:[Ljava/lang/String;
    if-eqz v6, :cond_0

    array-length v7, v6

    if-nez v7, :cond_1

    .line 4583
    :cond_0
    :goto_0
    return-void

    .line 4559
    :cond_1
    const-string v7, "INSERT INTO nickname_lookup(name,cluster) VALUES (?,?)"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v5

    .line 4564
    .local v5, nicknameLookupInsert:Landroid/database/sqlite/SQLiteStatement;
    const/4 v0, 0x0

    .local v0, clusterId:I
    :goto_1
    :try_start_0
    array-length v7, v6

    if-ge v0, v7, :cond_3

    .line 4565
    aget-object v7, v6, v0

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4566
    .local v4, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_2
    array-length v7, v4

    if-ge v2, v7, :cond_2

    .line 4567
    aget-object v7, v4, v2

    invoke-static {v7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 4569
    .local v3, name:Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_1
    invoke-static {v5, v7, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4570
    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4572
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4566
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4573
    :catch_0
    move-exception v1

    .line 4576
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v7, "ContactsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot insert nickname: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v4, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 4581
    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    .end local v2           #j:I
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #names:[Ljava/lang/String;
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v7

    .line 4564
    .restart local v2       #j:I
    .restart local v4       #names:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4581
    .end local v2           #j:I
    .end local v4           #names:[Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0
.end method

.method private lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    .locals 6
    .parameter "query"
    .parameter "insert"
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Landroid/database/sqlite/SQLiteStatement;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p4, cache:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x1

    .line 4016
    const-wide/16 v1, -0x1

    .line 4019
    .local v1, id:J
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p1, v3, p3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4020
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4026
    :goto_0
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 4028
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p4, p3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4029
    return-wide v1

    .line 4021
    :catch_0
    move-exception v0

    .line 4023
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    invoke-static {p2, v4, p3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4024
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v1

    goto :goto_0

    .line 4032
    .end local v0           #e:Landroid/database/sqlite/SQLiteDoneException;
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find or create internal lookup table entry for value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 3
    .parameter "db"
    .parameter "mimeType"

    .prologue
    .line 3764
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _id FROM mimetypes WHERE mimetype=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3771
    :goto_0
    return-wide v1

    .line 3769
    :catch_0
    move-exception v0

    .line 3771
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method private lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 5
    .parameter "mimetype"
    .parameter "db"

    .prologue
    .line 4086
    const-string v3, "SELECT _id FROM mimetypes WHERE mimetype=?"

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 4091
    .local v2, mimetypeQuery:Landroid/database/sqlite/SQLiteStatement;
    const-string v3, "INSERT INTO mimetypes(mimetype) VALUES (?)"

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4097
    .local v1, mimetypeInsert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-direct {p0, v2, v1, p1, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 4105
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4106
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :goto_0
    return-wide v3

    .line 4100
    :catch_0
    move-exception v0

    .line 4101
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-wide/16 v3, 0x0

    .line 4105
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4106
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 4105
    .end local v0           #e:Landroid/database/sqlite/SQLiteConstraintException;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4106
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v3
.end method

.method private populateMimeTypeCache(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 875
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 876
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 881
    const-string v0, "vnd.android.cursor.item/email_v2"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    .line 882
    const-string v0, "vnd.android.cursor.item/im"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdIm:J

    .line 883
    const-string v0, "vnd.android.cursor.item/nickname"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdNickname:J

    .line 884
    const-string v0, "vnd.android.cursor.item/organization"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    .line 885
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    .line 886
    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdSip:J

    .line 887
    const-string v0, "vnd.android.cursor.item/name"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    .line 888
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredPostal:J

    .line 889
    return-void
.end method

.method private rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3089
    const-string v0, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3090
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3091
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3092
    return-void
.end method

.method private rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 11
    .parameter "db"
    .parameter "provider"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3130
    const-string v1, "raw_contacts"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3133
    .local v8, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3134
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3135
    .local v9, rawContactId:J
    invoke-virtual {p0, p1, v9, v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3138
    .end local v9           #rawContactId:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3140
    return-void
.end method

.method private refreshDatabaseCaches(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    const/4 v0, 0x0

    .line 837
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 838
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 839
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 840
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    .line 841
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 842
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 843
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 844
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 845
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 846
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 847
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 848
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 849
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 850
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 851
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 852
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 853
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 856
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 857
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPhotoIdQueryByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    .line 858
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCallLogUpdateByRawContactIdDeleted:Landroid/database/sqlite/SQLiteStatement;

    .line 859
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    .line 860
    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByRawContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    .line 863
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->populateMimeTypeCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 866
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCompiledStatementController:Lcom/android/providers/contacts/CompiledStatementController;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCompiledStatementController:Lcom/android/providers/contacts/CompiledStatementController;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CompiledStatementController;->recycleAllCompileStatements()V

    .line 872
    :goto_0
    return-void

    .line 869
    :cond_0
    new-instance v0, Lcom/android/providers/contacts/CompiledStatementController;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/CompiledStatementController;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCompiledStatementController:Lcom/android/providers/contacts/CompiledStatementController;

    goto :goto_0
.end method

.method private setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "db"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 4680
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4681
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "property_key"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4682
    const-string v1, "property_value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4683
    const-string v1, "properties"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 4684
    return-void
.end method

.method private updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2
    .parameter "db"
    .parameter "selection"

    .prologue
    .line 4316
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 4317
    return-void
.end method

.method private updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
    .locals 10
    .parameter "db"
    .parameter "selection"
    .parameter "contactId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4319
    const-string v7, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    .line 4320
    .local v4, groupMembershipMimetypeId:J
    new-array v6, v9, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 4326
    .local v6, selectionArgs:[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 4328
    .local v0, beginEnterCPUTime:J
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4330
    const/4 v7, 0x2

    new-array v6, v7, [Ljava/lang/String;

    .end local v6           #selectionArgs:[Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 4334
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DELETE FROM visible_contacts WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "( ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL AND raw_contacts.data_set IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type AND ((raw_contacts.data_set IS NULL AND settings.data_set IS NULL) OR (raw_contacts.data_set = settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id= ?  GROUP BY contact_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") <> 1 ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4341
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "INSERT INTO visible_contacts SELECT _id FROM contacts WHERE "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " NOT IN "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "visible_contacts"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "SELECT MAX((SELECT (CASE WHEN (CASE WHEN raw_contacts.account_name IS NULL AND raw_contacts.account_type IS NULL AND raw_contacts.data_set IS NULL THEN 1  WHEN COUNT(groups._id)=0 THEN ungrouped_visible ELSE MAX(group_visible)END)=1 THEN 1 ELSE 0 END) FROM raw_contacts LEFT OUTER JOIN settings ON (raw_contacts.account_name = settings.account_name AND raw_contacts.account_type = settings.account_type AND ((raw_contacts.data_set IS NULL AND settings.data_set IS NULL) OR (raw_contacts.data_set = settings.data_set))) LEFT OUTER JOIN data ON (data.mimetype_id=? AND data.raw_contact_id = raw_contacts._id) LEFT OUTER JOIN groups ON (groups._id = data.data1) WHERE raw_contacts._id=outer_raw_contacts._id)) FROM raw_contacts AS outer_raw_contacts WHERE contact_id= ? AND contact_id=contacts._id GROUP BY contact_id"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")=1 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4357
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 4364
    .local v2, exitExistCPUTime:J
    return-void

    .line 4354
    .end local v2           #exitExistCPUTime:J
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->innerUpdateAllVisibility(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "db"
    .parameter "table"
    .parameter "index"
    .parameter "stats"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3926
    if-nez p3, :cond_0

    .line 3927
    const-string v0, "DELETE FROM sqlite_stat1 WHERE tbl=? AND idx IS NULL"

    new-array v1, v3, [Ljava/lang/String;

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3933
    :goto_0
    const-string v0, "INSERT INTO sqlite_stat1 (tbl,idx,stat) VALUES (?,?,?)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    aput-object p4, v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3935
    return-void

    .line 3930
    :cond_0
    const-string v0, "DELETE FROM sqlite_stat1 WHERE tbl=? AND idx=?"

    new-array v1, v4, [Ljava/lang/String;

    aput-object p2, v1, v2

    aput-object p3, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "rawContactUpdate"
    .parameter "rawContactId"
    .parameter "displayName"
    .parameter "displayNameAlternative"
    .parameter "phoneticNameStyle"
    .parameter "phoneticName"
    .parameter "sortKeyPrimary"
    .parameter "sortKeyAlternative"

    .prologue
    .line 2878
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2879
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2880
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2881
    const/4 v0, 0x4

    int-to-long v1, p6

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2882
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0, p8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2883
    const/4 v0, 0x6

    invoke-direct {p0, p1, v0, p9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 2884
    const/4 v0, 0x7

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2885
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2886
    return-void
.end method

.method private updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 3801
    :try_start_0
    const-string v1, "DELETE FROM sqlite_stat1"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3802
    const-string v1, "contacts"

    const-string v2, "contacts_has_phone_index"

    const-string v3, "9000 500"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3804
    const-string v1, "contacts"

    const-string v2, "contacts_name_raw_contact_id_index"

    const-string v3, "9000 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3807
    const-string v1, "raw_contacts"

    const-string v2, "raw_contacts_source_id_index"

    const-string v3, "10000 1 1 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3809
    const-string v1, "raw_contacts"

    const-string v2, "raw_contacts_contact_id_index"

    const-string v3, "10000 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3811
    const-string v1, "raw_contacts"

    const-string v2, "raw_contact_sort_key2_index"

    const-string v3, "10000 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3813
    const-string v1, "raw_contacts"

    const-string v2, "raw_contact_sort_key1_index"

    const-string v3, "10000 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3815
    const-string v1, "raw_contacts"

    const-string v2, "raw_contacts_source_id_data_set_index"

    const-string v3, "10000 1 1 1 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3818
    const-string v1, "name_lookup"

    const-string v2, "name_lookup_raw_contact_id_index"

    const-string v3, "35000 4"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3820
    const-string v1, "name_lookup"

    const-string v2, "name_lookup_index"

    const-string v3, "35000 2 2 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3822
    const-string v1, "name_lookup"

    const-string v2, "sqlite_autoindex_name_lookup_1"

    const-string v3, "35000 3 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3825
    const-string v1, "phone_lookup"

    const-string v2, "phone_lookup_index"

    const-string v3, "3500 3 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3827
    const-string v1, "phone_lookup"

    const-string v2, "phone_lookup_min_match_index"

    const-string v3, "3500 3 2 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3829
    const-string v1, "phone_lookup"

    const-string v2, "phone_lookup_data_id_min_match_index"

    const-string v3, "3500 2 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3832
    const-string v1, "data"

    const-string v2, "data_mimetype_data1_index"

    const-string v3, "60000 5000 2"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3834
    const-string v1, "data"

    const-string v2, "data_raw_contact_id"

    const-string v3, "60000 10"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3837
    const-string v1, "groups"

    const-string v2, "groups_source_id_index"

    const-string v3, "50 2 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3839
    const-string v1, "groups"

    const-string v2, "groups_source_id_data_set_index"

    const-string v3, "50 2 2 1 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3842
    const-string v1, "nickname_lookup"

    const-string v2, "nickname_lookup_index"

    const-string v3, "500 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3845
    const-string v1, "calls"

    const/4 v2, 0x0

    const-string v3, "250"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3848
    const-string v1, "status_updates"

    const/4 v2, 0x0

    const-string v3, "100"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    const-string v1, "stream_items"

    const/4 v2, 0x0

    const-string v3, "500"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3853
    const-string v1, "stream_item_photos"

    const/4 v2, 0x0

    const-string v3, "50"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3856
    const-string v1, "activities"

    const/4 v2, 0x0

    const-string v3, "5"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3859
    const-string v1, "voicemail_status"

    const/4 v2, 0x0

    const-string v3, "5"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    const-string v1, "accounts"

    const/4 v2, 0x0

    const-string v3, "3"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3865
    const-string v1, "visible_contacts"

    const/4 v2, 0x0

    const-string v3, "2000"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    const-string v1, "photo_files"

    const/4 v2, 0x0

    const-string v3, "50"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3871
    const-string v1, "default_directory"

    const/4 v2, 0x0

    const-string v3, "1500"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    const-string v1, "mimetypes"

    const-string v2, "mime_type"

    const-string v3, "18 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3877
    const-string v1, "data_usage_stat"

    const-string v2, "data_usage_stat_index"

    const-string v3, "20 2 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    const-string v1, "agg_exceptions"

    const/4 v2, 0x0

    const-string v3, "10"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3883
    const-string v1, "settings"

    const/4 v2, 0x0

    const-string v3, "10"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3885
    const-string v1, "packages"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3887
    const-string v1, "directories"

    const/4 v2, 0x0

    const-string v3, "3"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3889
    const-string v1, "v1_settings"

    const/4 v2, 0x0

    const-string v3, "0"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    const-string v1, "android_metadata"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3893
    const-string v1, "_sync_state"

    const-string v2, "sqlite_autoindex__sync_state_1"

    const-string v3, "2 1 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3895
    const-string v1, "_sync_state_metadata"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3897
    const-string v1, "properties"

    const-string v2, "sqlite_autoindex_properties_1"

    const-string v3, "4 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3901
    const-string v1, "search_index_docsize"

    const/4 v2, 0x0

    const-string v3, "9000"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3903
    const-string v1, "search_index_content"

    const/4 v2, 0x0

    const-string v3, "9000"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3905
    const-string v1, "search_index_stat"

    const/4 v2, 0x0

    const-string v3, "1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    const-string v1, "search_index_segments"

    const/4 v2, 0x0

    const-string v3, "450"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    const-string v1, "search_index_segdir"

    const-string v2, "sqlite_autoindex_search_index_segdir_1"

    const-string v3, "9 5 1"

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3915
    :goto_0
    return-void

    .line 3912
    :catch_0
    move-exception v0

    .line 3913
    .local v0, e:Landroid/database/SQLException;
    const-string v1, "ContactsDatabaseHelper"

    const-string v2, "Could not update index stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private upgradeEmailToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19
    .parameter "db"

    .prologue
    .line 2926
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v13

    .line 2927
    .local v13, mimeTypeId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_0

    .line 2955
    :goto_0
    return-void

    .line 2931
    :cond_0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2934
    .local v18, values:Landroid/content/ContentValues;
    const-string v3, "data"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;->COLUMNS:[Ljava/lang/String;

    const-string v5, "mimetype_id=? AND _id NOT IN (SELECT data_id FROM name_lookup) AND data1 NOT NULL"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2938
    .local v10, cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2939
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2940
    .local v11, dataId:J
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2941
    .local v15, rawContactId:J
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2942
    .local v17, value:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2944
    if-eqz v17, :cond_1

    .line 2945
    const-string v2, "data_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2946
    const-string v2, "raw_contact_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2947
    const-string v2, "name_type"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2948
    const-string v2, "normalized_name"

    invoke-static/range {v17 .. v17}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    const-string v2, "name_lookup"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2953
    .end local v11           #dataId:J
    .end local v15           #rawContactId:J
    .end local v17           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeNameToVersion205(JJILjava/lang/String;Lcom/android/providers/contacts/NameSplitter$Name;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;Ljava/lang/StringBuilder;)V
    .locals 13
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "displayNameSource"
    .parameter "currentDisplayName"
    .parameter "name"
    .parameter "structuredNameUpdate"
    .parameter "rawContactUpdate"
    .parameter "splitter"
    .parameter "sb"

    .prologue
    .line 2771
    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 2772
    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 2773
    .local v12, unadjustedFullNameStyle:I
    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    move-object/from16 v0, p10

    invoke-virtual {v0, v2}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 2774
    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 2778
    .local v6, displayName:Ljava/lang/String;
    const/4 v2, 0x1

    int-to-long v3, v12

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2779
    const/4 v2, 0x2

    move-object/from16 v0, p8

    invoke-static {v0, v2, v6}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2780
    const/4 v2, 0x3

    move-object/from16 v0, p7

    iget v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    int-to-long v3, v3

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2781
    const/4 v2, 0x4

    move-object/from16 v0, p8

    invoke-virtual {v0, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2782
    invoke-virtual/range {p8 .. p8}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2784
    const/16 v2, 0x28

    move/from16 v0, p5

    if-ne v0, v2, :cond_2

    .line 2785
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v7

    .line 2786
    .local v7, displayNameAlternative:Ljava/lang/String;
    move-object/from16 v0, p10

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v9

    .line 2787
    .local v9, phoneticName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2788
    .local v10, sortKey:Ljava/lang/String;
    const/4 v11, 0x0

    .line 2790
    .local v11, sortKeyAlternative:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 2791
    move-object v11, v9

    move-object v10, v9

    .line 2798
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 2799
    move-object v10, v6

    .line 2800
    move-object v11, v7

    .line 2803
    :cond_1
    move-object/from16 v0, p7

    iget v8, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    move-object v2, p0

    move-object/from16 v3, p9

    move-wide/from16 v4, p3

    invoke-direct/range {v2 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    .end local v7           #displayNameAlternative:Ljava/lang/String;
    .end local v9           #phoneticName:Ljava/lang/String;
    .end local v10           #sortKey:Ljava/lang/String;
    .end local v11           #sortKeyAlternative:Ljava/lang/String;
    :cond_2
    return-void

    .line 2792
    .restart local v7       #displayNameAlternative:Ljava/lang/String;
    .restart local v9       #phoneticName:Ljava/lang/String;
    .restart local v10       #sortKey:Ljava/lang/String;
    .restart local v11       #sortKeyAlternative:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    move-object/from16 v0, p7

    iget v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2794
    :cond_4
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v2

    move-object/from16 v0, p7

    iget v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    invoke-virtual {v2, v6, v3}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_0
.end method

.method private upgradeNicknameToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 19
    .parameter "db"

    .prologue
    .line 2962
    const-string v2, "vnd.android.cursor.item/nickname"

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v13

    .line 2963
    .local v13, mimeTypeId:J
    const-wide/16 v2, -0x1

    cmp-long v2, v13, v2

    if-nez v2, :cond_0

    .line 2988
    :goto_0
    return-void

    .line 2967
    :cond_0
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 2970
    .local v18, values:Landroid/content/ContentValues;
    const-string v3, "data"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$Upgrade303Query;->COLUMNS:[Ljava/lang/String;

    const-string v5, "mimetype_id=? AND _id NOT IN (SELECT data_id FROM name_lookup) AND data1 NOT NULL"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2974
    .local v10, cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2975
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2976
    .local v11, dataId:J
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 2977
    .local v15, rawContactId:J
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2979
    .local v17, value:Ljava/lang/String;
    const-string v2, "data_id"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2980
    const-string v2, "raw_contact_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2981
    const-string v2, "name_type"

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2982
    const-string v2, "normalized_name"

    invoke-static/range {v17 .. v17}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    const-string v2, "name_lookup"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2986
    .end local v11           #dataId:J
    .end local v15           #rawContactId:J
    .end local v17           #value:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeOrganizationsToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 22
    .parameter "db"
    .parameter "rawContactUpdate"
    .parameter "splitter"

    .prologue
    .line 2827
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v16

    .line 2829
    .local v16, mimeType:J
    const-string v3, "UPDATE data SET data10=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v19

    .line 2835
    .local v19, organizationUpdate:Landroid/database/sqlite/SQLiteStatement;
    const-string v4, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactsDatabaseHelper$Organization205Query;->COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mimetype_id="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " AND "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "display_name_source"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, "="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v8, 0x1e

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 2840
    .local v13, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2841
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 2842
    .local v14, dataId:J
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2843
    .local v5, rawContactId:J
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2844
    .local v7, company:Ljava/lang/String;
    const/4 v3, 0x3

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2846
    .local v10, phoneticName:Ljava/lang/String;
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v9

    .line 2848
    .local v9, phoneticNameStyle:I
    const/4 v3, 0x1

    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v20

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2849
    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2850
    invoke-virtual/range {v19 .. v19}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2852
    const/4 v11, 0x0

    .line 2853
    .local v11, sortKey:Ljava/lang/String;
    if-nez v10, :cond_1

    if-eqz v7, :cond_1

    .line 2854
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v18

    .line 2855
    .local v18, nameStyle:I
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v18

    .line 2856
    const/4 v3, 0x3

    move/from16 v0, v18

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_1

    .line 2858
    :cond_0
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v7, v0}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2863
    .end local v18           #nameStyle:I
    :cond_1
    if-nez v11, :cond_2

    .line 2864
    move-object v11, v7

    :cond_2
    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object v8, v7

    move-object v12, v11

    .line 2867
    invoke-direct/range {v3 .. v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContact205(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2871
    .end local v5           #rawContactId:J
    .end local v7           #company:Ljava/lang/String;
    .end local v9           #phoneticNameStyle:I
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #sortKey:Ljava/lang/String;
    .end local v14           #dataId:J
    :catchall_0
    move-exception v3

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 2873
    return-void
.end method

.method private upgradeStructuredNamesToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V
    .locals 19
    .parameter "db"
    .parameter "rawContactUpdate"
    .parameter "splitter"

    .prologue
    .line 2718
    :try_start_0
    const-string v2, "SELECT _id FROM mimetypes WHERE mimetype=\'vnd.android.cursor.item/name\'"

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2, v9}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v16

    .line 2728
    .local v16, mMimeType:J
    const-string v2, "UPDATE data SET data10=?,data1=?,data11=? WHERE _id=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 2736
    .local v10, structuredNameUpdate:Landroid/database/sqlite/SQLiteStatement;
    new-instance v18, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v18 .. v18}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 2737
    .local v18, name:Lcom/android/providers/contacts/NameSplitter$Name;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 2738
    .local v13, sb:Ljava/lang/StringBuilder;
    const-string v3, "data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    sget-object v4, Lcom/android/providers/contacts/ContactsDatabaseHelper$StructName205Query;->COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mimetype_id="

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2742
    .local v14, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2743
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2744
    .local v3, dataId:J
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 2745
    .local v5, rawContactId:J
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2746
    .local v7, displayNameSource:I
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2748
    .local v8, displayName:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V

    .line 2749
    const/4 v2, 0x4

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 2750
    const/4 v2, 0x5

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 2751
    const/4 v2, 0x6

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 2752
    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 2753
    const/16 v2, 0x8

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 2754
    const/16 v2, 0x9

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 2755
    const/16 v2, 0xa

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 2756
    const/16 v2, 0xb

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v9, v18

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 2758
    invoke-direct/range {v2 .. v13}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeNameToVersion205(JJILjava/lang/String;Lcom/android/providers/contacts/NameSplitter$Name;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;Ljava/lang/StringBuilder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2762
    .end local v3           #dataId:J
    .end local v5           #rawContactId:J
    .end local v7           #displayNameSource:I
    .end local v8           #displayName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2723
    .end local v10           #structuredNameUpdate:Landroid/database/sqlite/SQLiteStatement;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v16           #mMimeType:J
    .end local v18           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :catch_0
    move-exception v15

    .line 2764
    :goto_1
    return-void

    .line 2762
    .restart local v10       #structuredNameUpdate:Landroid/database/sqlite/SQLiteStatement;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v16       #mMimeType:J
    .restart local v18       #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_0
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2523
    const-string v0, "ALTER TABLE phone_lookup ADD min_match TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2527
    const-string v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2533
    const-string v0, "phone_lookup"

    const-string v1, "phone_lookup_min_match_index"

    const-string v2, "10000 2 2 1"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const-string v0, "UPDATE phone_lookup SET min_match=? WHERE data_id=?"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 2542
    .local v12, update:Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "phone_lookup JOIN data ON (data_id=data._id)"

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v5

    const-string v0, "data1"

    aput-object v0, v2, v4

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2546
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2547
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2548
    .local v9, dataId:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2549
    .local v11, number:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2550
    const/4 v0, 0x1

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2551
    const/4 v0, 0x2

    invoke-virtual {v12, v0, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2552
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2556
    .end local v9           #dataId:J
    .end local v11           #number:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2558
    return-void
.end method

.method private upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2565
    const-string v0, "DELETE FROM raw_contacts WHERE contact_id NOT NULL AND contact_id NOT IN (SELECT _id FROM contacts)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2570
    const-string v0, "ALTER TABLE contacts ADD name_raw_contact_id INTEGER REFERENCES raw_contacts(_id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2573
    const-string v0, "ALTER TABLE raw_contacts ADD contact_in_visible_group INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2578
    const-string v0, "UPDATE contacts SET name_raw_contact_id=( SELECT _id FROM raw_contacts WHERE contact_id=contacts._id AND raw_contacts.display_name=contacts.display_name ORDER BY _id LIMIT 1)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2590
    const-string v0, "CREATE INDEX contacts_name_raw_contact_id_index ON contacts (name_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2596
    const-string v0, "UPDATE contacts SET name_raw_contact_id=( SELECT _id FROM raw_contacts WHERE contact_id=contacts._id ORDER BY _id LIMIT 1) WHERE name_raw_contact_id IS NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2608
    const-string v0, "UPDATE contacts SET display_name=NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2615
    const-string v0, "UPDATE raw_contacts SET contact_in_visible_group=(SELECT in_visible_group FROM contacts WHERE _id=contact_id) WHERE contact_id NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2624
    const-string v0, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,display_name COLLATE LOCALIZED ASC);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2629
    const-string v0, "DROP INDEX contacts_visible_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2630
    const-string v0, "CREATE INDEX contacts_visible_index ON contacts (in_visible_group);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2633
    return-void
.end method

.method private upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 2636
    const-string v3, "ALTER TABLE raw_contacts ADD display_name_alt TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2638
    const-string v3, "ALTER TABLE raw_contacts ADD phonetic_name TEXT;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2640
    const-string v3, "ALTER TABLE raw_contacts ADD phonetic_name_style INTEGER;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2642
    const-string v3, "ALTER TABLE raw_contacts ADD sort_key TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2645
    const-string v3, "ALTER TABLE raw_contacts ADD sort_key_alt TEXT COLLATE PHONEBOOK;"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2649
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 2651
    .local v0, locale:Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v2

    .line 2653
    .local v2, splitter:Lcom/android/providers/contacts/NameSplitter;
    const-string v3, "UPDATE raw_contacts SET display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,sort_key_alt=? WHERE _id=?"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 2664
    .local v1, rawContactUpdate:Landroid/database/sqlite/SQLiteStatement;
    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeStructuredNamesToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V

    .line 2665
    invoke-direct {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeOrganizationsToVersion205(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteStatement;Lcom/android/providers/contacts/NameSplitter;)V

    .line 2667
    const-string v3, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2668
    const-string v3, "CREATE INDEX raw_contact_sort_key1_index ON raw_contacts (contact_in_visible_group,sort_key);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2673
    const-string v3, "CREATE INDEX raw_contact_sort_key2_index ON raw_contacts (contact_in_visible_group,sort_key_alt);"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2677
    return-void
.end method

.method private upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 2899
    return-void
.end method

.method private upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 2996
    :try_start_0
    const-string v1, "CREATE UNIQUE INDEX IF NOT EXISTS mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3006
    :goto_0
    return-void

    .line 2999
    :catch_0
    move-exception v0

    .line 3000
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    const-string v1, "ContactsDatabaseHelper"

    const-string v2, " Original mimetype has duplicate mimetype"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3001
    const-string v1, "CREATE INDEX IF NOT EXISTS mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .parameter "db"

    .prologue
    .line 3011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3012
    .local v0, lookupKeyBuilder:Ljava/lang/StringBuilder;
    const-string v1, "UPDATE contacts SET lookup=? WHERE _id=?"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 3016
    .local v11, updateStatement:Landroid/database/sqlite/SQLiteStatement;
    const-string v1, "SELECT DISTINCT contact_id FROM raw_contacts WHERE deleted=0 AND account_type=\'com.android.exchange\'"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3022
    .local v10, contactIdCursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3023
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3024
    .local v8, contactId:J
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3025
    const-string v1, "SELECT account_type, account_name, _id, sourceid, display_name FROM raw_contacts WHERE contact_id=? ORDER BY _id"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 3032
    .local v7, c:Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3033
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3041
    :catchall_0
    move-exception v1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3054
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #contactId:J
    :catchall_1
    move-exception v1

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3055
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .line 3041
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #contactId:J
    :cond_0
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3044
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3045
    const/4 v1, 0x1

    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3049
    :goto_2
    const/4 v1, 0x2

    invoke-virtual {v11, v1, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3051
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 3047
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 3054
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #contactId:J
    :cond_2
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 3055
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3057
    return-void
.end method

.method private upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3060
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY_KEY, property_value TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3064
    return-void
.end method

.method private upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3067
    const-string v0, "CREATE TABLE accounts (account_name TEXT, account_type TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3072
    const-string v0, "INSERT INTO accounts SELECT DISTINCT account_name, account_type FROM raw_contacts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3074
    return-void
.end method

.method private upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3084
    const-string v0, "DELETE FROM contacts WHERE NOT EXISTS (SELECT 1 FROM raw_contacts WHERE contact_id=contacts._id)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3086
    return-void
.end method

.method private upgradeToVersion400(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3077
    const-string v0, "ALTER TABLE groups ADD favorites INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3079
    const-string v0, "ALTER TABLE groups ADD auto_add INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3081
    return-void
.end method

.method private upgradeToVersion401(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3357
    const-string v0, "CREATE TABLE visible_contacts (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3360
    const-string v0, "INSERT INTO visible_contacts SELECT _id FROM contacts WHERE in_visible_group!=0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3364
    const-string v0, "DROP INDEX contacts_visible_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3365
    return-void
.end method

.method private upgradeToVersion402(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3371
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3372
    return-void
.end method

.method private upgradeToVersion403(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3375
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3376
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3378
    const-string v0, "ALTER TABLE raw_contacts ADD raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3381
    const-string v0, "ALTER TABLE data ADD is_read_only INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3383
    return-void
.end method

.method private upgradeToVersion405(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .parameter "db"

    .prologue
    const/4 v12, 0x0

    .line 3386
    const-string v10, "DROP TABLE IF EXISTS phone_lookup;"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3388
    const-string v10, "CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3397
    const-string v10, "CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3403
    const-string v10, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v10}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3409
    const-string v10, "vnd.android.cursor.item/phone_v2"

    invoke-static {p1, v10}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    .line 3410
    .local v3, mimeTypeId:J
    const-wide/16 v10, -0x1

    cmp-long v10, v3, v10

    if-nez v10, :cond_0

    .line 3440
    :goto_0
    return-void

    .line 3414
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT _id, raw_contact_id, data1 FROM data WHERE mimetype_id="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "data1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " NOT NULL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3420
    .local v0, cursor:Landroid/database/Cursor;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 3422
    .local v7, phoneValues:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3423
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3424
    .local v1, dataID:J
    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3425
    .local v8, rawContactID:J
    const/4 v10, 0x2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3426
    .local v6, number:Ljava/lang/String;
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3427
    .local v5, normalizedNumber:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 3428
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 3429
    const-string v10, "raw_contact_id"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3430
    const-string v10, "data_id"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3431
    const-string v10, "normalized_number"

    invoke-virtual {v7, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3432
    const-string v10, "min_match"

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3434
    const-string v10, "phone_lookup"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3438
    .end local v1           #dataID:J
    .end local v5           #normalizedNumber:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v8           #rawContactID:J
    :catchall_0
    move-exception v10

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v10

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private upgradeToVersion406(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3443
    const-string v0, "ALTER TABLE calls ADD countryiso TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3444
    return-void
.end method

.method private upgradeToVersion409(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3447
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3448
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3449
    return-void
.end method

.method private upgradeToVersion411(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 3465
    const-string v2, "DROP TABLE IF EXISTS default_directory"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3466
    const-string v2, "CREATE TABLE default_directory (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3469
    const-string v2, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  WHERE raw_contacts.account_name IS NULL    AND raw_contacts.account_type IS NULL "

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3476
    const-string v2, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  WHERE NOT EXISTS (SELECT _id   FROM groups   WHERE raw_contacts.account_name = groups.account_name    AND raw_contacts.account_type = groups.account_type    AND groups.auto_add != 0)"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3486
    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-static {p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 3489
    .local v0, mimetype:J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT OR IGNORE INTO default_directory  SELECT contact_id  FROM raw_contacts  JOIN data    ON (raw_contacts._id=raw_contact_id) WHERE mimetype_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND EXISTS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (SELECT _id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  FROM groups"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  WHERE raw_contacts.account_name = groups.account_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    AND raw_contacts.account_type = groups.account_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    AND groups.auto_add != 0)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3501
    return-void
.end method

.method private upgradeToVersion413(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3504
    const-string v0, "DROP TABLE IF EXISTS directories;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3505
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3506
    return-void
.end method

.method private upgradeToVersion415(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3509
    const-string v0, "ALTER TABLE groups ADD group_is_read_only INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3512
    const-string v0, "UPDATE groups   SET group_is_read_only=1 WHERE system_id NOT NULL"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3516
    return-void
.end method

.method private upgradeToVersion416(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3519
    const-string v0, "CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3521
    return-void
.end method

.method private upgradeToVersion501(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3525
    const-string v0, "DELETE FROM name_lookup WHERE name_type=5"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3526
    return-void
.end method

.method private upgradeToVersion502(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3530
    const-string v0, "DELETE FROM name_lookup WHERE name_type IN (6, 7)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3531
    return-void
.end method

.method private upgradeToVersion504(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8
    .parameter "db"

    .prologue
    const/4 v7, 0x0

    .line 3534
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->populateMimeTypeCache(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3537
    const-string v3, "SELECT raw_contact_id FROM data WHERE mimetype_id=? AND data4 NOT NULL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iget-wide v5, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 3545
    .local v0, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3546
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3547
    .local v1, rawContactId:J
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3551
    .end local v1           #rawContactId:J
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3553
    return-void
.end method

.method private upgradeToVersion600(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3559
    return-void
.end method

.method private upgradeToVersion601(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3562
    const-string v0, "CREATE TABLE data_usage_stat(stat_id INTEGER PRIMARY KEY AUTOINCREMENT, data_id INTEGER NOT NULL, usage_type INTEGER NOT NULL DEFAULT 0, times_used INTEGER NOT NULL DEFAULT 0, last_time_used INTERGER NOT NULL DEFAULT 0, FOREIGN KEY(data_id) REFERENCES data(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3569
    const-string v0, "CREATE UNIQUE INDEX data_usage_stat_index ON data_usage_stat (data_id, usage_type)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3571
    return-void
.end method

.method private upgradeToVersion602(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3574
    const-string v0, "ALTER TABLE calls ADD voicemail_uri TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3575
    const-string v0, "ALTER TABLE calls ADD _data TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3576
    const-string v0, "ALTER TABLE calls ADD has_content INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3577
    const-string v0, "ALTER TABLE calls ADD mime_type TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3578
    const-string v0, "ALTER TABLE calls ADD source_data TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3579
    const-string v0, "ALTER TABLE calls ADD source_package TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3580
    const-string v0, "ALTER TABLE calls ADD state INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3581
    return-void
.end method

.method private upgradeToVersion604(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3584
    const-string v0, "CREATE TABLE voicemail_status (_id INTEGER PRIMARY KEY AUTOINCREMENT,source_package TEXT UNIQUE NOT NULL,settings_uri TEXT,voicemail_access_uri TEXT,configuration_state INTEGER,data_channel_state INTEGER,notification_channel_state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3593
    return-void
.end method

.method private upgradeToVersion605(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3599
    return-void
.end method

.method private upgradeToVersion606(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3602
    const-string v0, "DROP VIEW IF EXISTS view_contacts_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3603
    const-string v0, "DROP VIEW IF EXISTS view_data_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3604
    const-string v0, "DROP VIEW IF EXISTS view_raw_contacts_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3605
    const-string v0, "DROP VIEW IF EXISTS view_raw_entities_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3606
    const-string v0, "DROP VIEW IF EXISTS view_entities_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3607
    const-string v0, "DROP VIEW IF EXISTS view_data_usage_stat_restricted;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3608
    const-string v0, "DROP INDEX IF EXISTS contacts_restricted_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3612
    return-void
.end method

.method private upgradeToVersion607(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3619
    return-void
.end method

.method private upgradeToVersion608(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3622
    const-string v0, "ALTER TABLE contacts ADD photo_file_id INTEGER REFERENCES photo_files(_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3624
    const-string v0, "CREATE TABLE photo_files(_id INTEGER PRIMARY KEY AUTOINCREMENT, height INTEGER NOT NULL, width INTEGER NOT NULL, filesize INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3629
    return-void
.end method

.method private upgradeToVersion609(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 3635
    return-void
.end method

.method private upgradeToVersion610(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3638
    const-string v0, "ALTER TABLE calls ADD is_read INTEGER;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3639
    return-void
.end method

.method private upgradeToVersion611(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3642
    const-string v0, "ALTER TABLE raw_contacts ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3643
    const-string v0, "ALTER TABLE groups ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3644
    const-string v0, "ALTER TABLE accounts ADD data_set TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3646
    const-string v0, "CREATE INDEX raw_contacts_source_id_data_set_index ON raw_contacts (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3649
    const-string v0, "CREATE INDEX groups_source_id_data_set_index ON groups (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3651
    return-void
.end method

.method private upgradeToVersion612(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3654
    const-string v0, "ALTER TABLE calls ADD geocoded_location TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3656
    return-void
.end method

.method private upgradeToVersion613(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3669
    const-string v0, "DROP TABLE IF EXISTS stream_items"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3670
    const-string v0, "DROP TABLE IF EXISTS stream_item_photos"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3672
    const-string v0, "CREATE TABLE stream_items(_id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_id INTEGER NOT NULL, res_package TEXT, icon TEXT, label TEXT, text TEXT, timestamp INTEGER NOT NULL, comments TEXT, stream_item_sync1 TEXT, stream_item_sync2 TEXT, stream_item_sync3 TEXT, stream_item_sync4 TEXT, FOREIGN KEY(raw_contact_id) REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3687
    const-string v0, "CREATE TABLE stream_item_photos(_id INTEGER PRIMARY KEY AUTOINCREMENT, stream_item_id INTEGER NOT NULL, sort_index INTEGER, photo_file_id INTEGER NOT NULL, stream_item_photo_sync1 TEXT, stream_item_photo_sync2 TEXT, stream_item_photo_sync3 TEXT, stream_item_photo_sync4 TEXT, FOREIGN KEY(stream_item_id) REFERENCES stream_items(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3697
    return-void
.end method

.method private upgradeToVersion615(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3702
    const-string v0, "ALTER TABLE calls ADD lookup_uri TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3703
    const-string v0, "ALTER TABLE calls ADD matched_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3704
    const-string v0, "ALTER TABLE calls ADD normalized_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3705
    const-string v0, "ALTER TABLE calls ADD photo_id INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3706
    return-void
.end method

.method private upgradeToVersion618(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3712
    const-string v0, "CREATE TEMPORARY TABLE settings_backup(account_name STRING NOT NULL,account_type STRING NOT NULL,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3718
    const-string v0, "INSERT INTO settings_backup SELECT account_name, account_type, ungrouped_visible, should_sync FROM settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3721
    const-string v0, "DROP TABLE settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3722
    const-string v0, "CREATE TABLE settings (account_name STRING NOT NULL,account_type STRING NOT NULL,data_set STRING,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3729
    const-string v0, "INSERT INTO settings SELECT account_name, account_type, NULL, ungrouped_visible, should_sync FROM settings_backup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3732
    const-string v0, "DROP TABLE settings_backup"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3733
    return-void
.end method

.method private upgradeToVersion622(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 3736
    const-string v0, "ALTER TABLE calls ADD formatted_number TEXT DEFAULT NULL;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3737
    return-void
.end method

.method private upgrateToVersion206(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 2889
    const-string v0, "ALTER TABLE raw_contacts ADD name_verified INTEGER NOT NULL DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2891
    return-void
.end method


# virtual methods
.method bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 991
    const-string v0, "ContactsDatabaseHelper"

    const-string v1, "Bootstrapping database version: 625"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 996
    const-string v0, "CREATE TABLE contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,name_raw_contact_id INTEGER REFERENCES raw_contacts(_id),photo_id INTEGER REFERENCES data(_id),photo_file_id INTEGER REFERENCES photo_files(_id),custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,has_phone_number INTEGER NOT NULL DEFAULT 0,lookup TEXT,status_update_id INTEGER REFERENCES data(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1011
    const-string v0, "CREATE INDEX contacts_has_phone_index ON contacts (has_phone_number);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1015
    const-string v0, "CREATE INDEX contacts_name_raw_contact_id_index ON contacts (name_raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1020
    const-string v0, "CREATE TABLE raw_contacts (_id INTEGER PRIMARY KEY AUTOINCREMENT,account_name STRING DEFAULT NULL, account_type STRING DEFAULT NULL, data_set STRING DEFAULT NULL, sourceid TEXT,raw_contact_is_read_only INTEGER NOT NULL DEFAULT 0,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,deleted INTEGER NOT NULL DEFAULT 0,contact_id INTEGER REFERENCES contacts(_id),aggregation_mode INTEGER NOT NULL DEFAULT 0,aggregation_needed INTEGER NOT NULL DEFAULT 1,custom_ringtone TEXT,send_to_voicemail INTEGER NOT NULL DEFAULT 0,times_contacted INTEGER NOT NULL DEFAULT 0,last_time_contacted INTEGER,starred INTEGER NOT NULL DEFAULT 0,display_name TEXT,display_name_alt TEXT,display_name_source INTEGER NOT NULL DEFAULT 0,phonetic_name TEXT,phonetic_name_style TEXT,sort_key TEXT COLLATE PHONEBOOK,sort_key_alt TEXT COLLATE PHONEBOOK,name_verified INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1056
    const-string v0, "CREATE INDEX raw_contacts_contact_id_index ON raw_contacts (contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1060
    const-string v0, "CREATE INDEX raw_contacts_source_id_index ON raw_contacts (sourceid, account_type, account_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1066
    const-string v0, "CREATE INDEX raw_contacts_source_id_data_set_index ON raw_contacts (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1074
    const-string v0, "CREATE TABLE stream_items (_id INTEGER PRIMARY KEY AUTOINCREMENT, raw_contact_id INTEGER NOT NULL, res_package TEXT, icon TEXT, label TEXT, text TEXT, timestamp INTEGER NOT NULL, comments TEXT, stream_item_sync1 TEXT, stream_item_sync2 TEXT, stream_item_sync3 TEXT, stream_item_sync4 TEXT, FOREIGN KEY(raw_contact_id) REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1090
    const-string v0, "CREATE TABLE stream_item_photos (_id INTEGER PRIMARY KEY AUTOINCREMENT, stream_item_id INTEGER NOT NULL, sort_index INTEGER, photo_file_id INTEGER NOT NULL, stream_item_photo_sync1 TEXT, stream_item_photo_sync2 TEXT, stream_item_photo_sync3 TEXT, stream_item_photo_sync4 TEXT, FOREIGN KEY(stream_item_id) REFERENCES stream_items(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1102
    const-string v0, "CREATE TABLE photo_files (_id INTEGER PRIMARY KEY AUTOINCREMENT, height INTEGER NOT NULL, width INTEGER NOT NULL, filesize INTEGER NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1114
    const-string v0, "CREATE TABLE packages (_id INTEGER PRIMARY KEY AUTOINCREMENT,package TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1120
    const-string v0, "CREATE TABLE mimetypes (_id INTEGER PRIMARY KEY AUTOINCREMENT,mimetype TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1126
    const-string v0, "CREATE UNIQUE INDEX mime_type ON mimetypes (mimetype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1131
    const-string v0, "CREATE TABLE data (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,is_read_only INTEGER NOT NULL DEFAULT 0,is_primary INTEGER NOT NULL DEFAULT 0,is_super_primary INTEGER NOT NULL DEFAULT 0,data_version INTEGER NOT NULL DEFAULT 0,data1 TEXT,data2 TEXT,data3 TEXT,data4 TEXT,data5 TEXT,data6 TEXT,data7 TEXT,data8 TEXT,data9 TEXT,data10 TEXT,data11 TEXT,data12 TEXT,data13 TEXT,data14 TEXT,data15 TEXT,data_sync1 TEXT, data_sync2 TEXT, data_sync3 TEXT, data_sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1161
    const-string v0, "CREATE INDEX data_raw_contact_id ON data (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1168
    const-string v0, "CREATE INDEX data_mimetype_data1_index ON data (mimetype_id,data1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1174
    const-string v0, "CREATE TABLE phone_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_number TEXT NOT NULL,min_match TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1183
    const-string v0, "CREATE INDEX phone_lookup_index ON phone_lookup (normalized_number,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1189
    const-string v0, "CREATE INDEX phone_lookup_min_match_index ON phone_lookup (min_match,raw_contact_id,data_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1195
    const-string v0, "CREATE INDEX phone_lookup_data_id_min_match_index ON phone_lookup (data_id, min_match);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1199
    const-string v0, "CREATE TABLE name_lookup (data_id INTEGER REFERENCES data(_id) NOT NULL,raw_contact_id INTEGER REFERENCES raw_contacts(_id) NOT NULL,normalized_name TEXT NOT NULL,name_type INTEGER NOT NULL,PRIMARY KEY (data_id, normalized_name, name_type));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1212
    const-string v0, "CREATE INDEX name_lookup_raw_contact_id_index ON name_lookup (raw_contact_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1216
    const-string v0, "CREATE TABLE nickname_lookup (name TEXT,cluster TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1221
    const-string v0, "CREATE UNIQUE INDEX nickname_lookup_index ON nickname_lookup (name, cluster);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1227
    const-string v0, "CREATE TABLE groups (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),account_name STRING DEFAULT NULL, account_type STRING DEFAULT NULL, data_set STRING DEFAULT NULL, sourceid TEXT,version INTEGER NOT NULL DEFAULT 1,dirty INTEGER NOT NULL DEFAULT 0,title TEXT,title_res INTEGER,notes TEXT,system_id TEXT,deleted INTEGER NOT NULL DEFAULT 0,group_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1,auto_add INTEGER NOT NULL DEFAULT 0,favorites INTEGER NOT NULL DEFAULT 0,group_is_read_only INTEGER NOT NULL DEFAULT 0,sync1 TEXT, sync2 TEXT, sync3 TEXT, sync4 TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1252
    const-string v0, "CREATE INDEX groups_source_id_index ON groups (sourceid, account_type, account_name);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1258
    const-string v0, "CREATE INDEX groups_source_id_data_set_index ON groups (sourceid, account_type, account_name, data_set);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1265
    const-string v0, "CREATE TABLE IF NOT EXISTS agg_exceptions (_id INTEGER PRIMARY KEY AUTOINCREMENT,type INTEGER NOT NULL, raw_contact_id1 INTEGER REFERENCES raw_contacts(_id), raw_contact_id2 INTEGER REFERENCES raw_contacts(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1274
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index1 ON agg_exceptions (raw_contact_id1, raw_contact_id2);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1280
    const-string v0, "CREATE UNIQUE INDEX IF NOT EXISTS aggregation_exception_index2 ON agg_exceptions (raw_contact_id2, raw_contact_id1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1286
    const-string v0, "CREATE TABLE IF NOT EXISTS settings (account_name STRING NOT NULL,account_type STRING NOT NULL,data_set STRING,ungrouped_visible INTEGER NOT NULL DEFAULT 0,should_sync INTEGER NOT NULL DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1294
    const-string v0, "CREATE TABLE visible_contacts (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1298
    const-string v0, "CREATE TABLE default_directory (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1304
    const-string v0, "CREATE TABLE calls (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,numbertype INTEGER,numberlabel TEXT,raw_contact_id INTEGER,city_id TEXT,callType INTEGER NOT NULL DEFAULT 0, cname TEXT, countryiso TEXT,voicemail_uri TEXT,is_read INTEGER,geocoded_location TEXT,lookup_uri TEXT,matched_number TEXT,normalized_number TEXT,photo_id INTEGER NOT NULL DEFAULT 0,formatted_number TEXT,_data TEXT,has_content INTEGER,mime_type TEXT,source_data TEXT,source_package TEXT,state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1343
    const-string v0, "CREATE TABLE voicemail_status (_id INTEGER PRIMARY KEY AUTOINCREMENT,source_package TEXT UNIQUE NOT NULL,settings_uri TEXT,voicemail_access_uri TEXT,configuration_state INTEGER,data_channel_state INTEGER,notification_channel_state INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1354
    const-string v0, "CREATE TABLE activities (_id INTEGER PRIMARY KEY AUTOINCREMENT,package_id INTEGER REFERENCES package(_id),mimetype_id INTEGER REFERENCES mimetype(_id) NOT NULL,raw_id TEXT,in_reply_to TEXT,author_contact_id INTEGER REFERENCES raw_contacts(_id),target_contact_id INTEGER REFERENCES raw_contacts(_id),published INTEGER NOT NULL,thread_published INTEGER NOT NULL,title TEXT NOT NULL,summary TEXT,link TEXT, thumbnail BLOB);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1370
    const-string v0, "CREATE TABLE status_updates (status_update_data_id INTEGER PRIMARY KEY REFERENCES data(_id),status TEXT,status_ts INTEGER,status_res_package TEXT, status_label INTEGER, status_icon INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1379
    const-string v0, "CREATE TABLE properties (property_key TEXT PRIMARY KEY, property_value TEXT );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1385
    const-string v0, "CREATE TABLE IF NOT EXISTS accounts (account_name TEXT, account_type TEXT, data_set TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1394
    const-string v0, "INSERT INTO accounts VALUES(NULL, NULL, NULL)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1396
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createDirectoriesTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1397
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1399
    const-string v0, "CREATE TABLE data_usage_stat(stat_id INTEGER PRIMARY KEY AUTOINCREMENT, data_id INTEGER NOT NULL, usage_type INTEGER NOT NULL DEFAULT 0, times_used INTEGER NOT NULL DEFAULT 0, last_time_used INTERGER NOT NULL DEFAULT 0, FOREIGN KEY(data_id) REFERENCES data(_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1408
    const-string v0, "CREATE UNIQUE INDEX data_usage_stat_index ON data_usage_stat (data_id, usage_type);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1415
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1416
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1417
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1418
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1420
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1423
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1426
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1428
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDatabaseOptimizationEnabled:Z

    if-eqz v0, :cond_0

    .line 1430
    const-string v0, "ANALYZE;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1432
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 1440
    :cond_0
    const/4 v0, 0x0

    const-string v1, "com.android.contacts"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1442
    return-void
.end method

.method public buildPhoneLookupAndContactQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "qb"
    .parameter "normalizedNumber"
    .parameter "numberE164"

    .prologue
    .line 4450
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4451
    .local v0, minMatch:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4452
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4453
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 4455
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #sb:Ljava/lang/StringBuilder;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4456
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    invoke-direct {p0, v1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4457
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 4458
    return-void
.end method

.method public buildPhoneLookupAsNestedQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 4478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4479
    .local v1, sb:Ljava/lang/StringBuilder;
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4480
    .local v0, minMatch:Ljava/lang/String;
    const-string v2, "(SELECT DISTINCT raw_contact_id FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4481
    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupTables(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 4482
    const-string v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4483
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->appendPhoneLookupSelection(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 4484
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4485
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public buildSipContactQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "sb"
    .parameter "sipAddress"

    .prologue
    .line 4467
    const-string v0, "upper("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4468
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4469
    const-string v0, ")=upper(?) AND "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4470
    const-string v0, "mimetype_id"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4471
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4472
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForSip()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4474
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    return-object v0
.end method

.method public clearSuperPrimary(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    .line 5189
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5190
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_super_primary=0 WHERE mimetype_id=?   AND raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5196
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5197
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5198
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mClearSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5199
    return-void
.end method

.method public createNameSplitter()Lcom/android/providers/contacts/NameSplitter;
    .locals 6

    .prologue
    .line 3981
    new-instance v0, Lcom/android/providers/contacts/NameSplitter;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v2, 0x10400b2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v3, 0x10400b4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v4, 0x10400b3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const v5, 0x10400b5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/NameSplitter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 3987
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    return-object v0
.end method

.method public createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 1471
    const-string v0, "DROP TABLE IF EXISTS search_index"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1472
    const-string v0, "CREATE VIRTUAL TABLE search_index USING FTS4 (contact_id INTEGER REFERENCES contacts(_id) NOT NULL,content TEXT, name TEXT, tokens TEXT)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1479
    return-void
.end method

.method protected dbForProfile()I
    .locals 1

    .prologue
    .line 1991
    const/4 v0, 0x0

    return v0
.end method

.method public deleteNameLookup(J)V
    .locals 2
    .parameter "dataId"

    .prologue
    .line 5255
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5256
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM name_lookup WHERE data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 5260
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5261
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5262
    return-void
.end method

.method public deleteStatusUpdate(J)V
    .locals 2
    .parameter "dataId"

    .prologue
    .line 4795
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 4796
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "DELETE FROM status_updates WHERE status_update_data_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 4800
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4801
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4802
    return-void
.end method

.method public exceptionMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 4745
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public exceptionMessage(Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "message"
    .parameter "uri"

    .prologue
    .line 4753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 4754
    .local v4, sb:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 4755
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4757
    :cond_0
    const-string v6, "URI: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4758
    iget-object v6, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 4759
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4760
    .local v1, callingUid:I
    const-string v6, ", calling user: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4761
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 4762
    .local v5, userName:Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 4763
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4768
    :goto_0
    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 4769
    .local v0, callerPackages:[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v6, v0

    if-lez v6, :cond_1

    .line 4770
    array-length v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 4771
    const-string v6, ", calling package:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4772
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4785
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 4765
    .end local v0           #callerPackages:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4774
    .restart local v0       #callerPackages:[Ljava/lang/String;
    :cond_3
    const-string v6, ", calling package is one of: ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4775
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_5

    .line 4776
    if-eqz v2, :cond_4

    .line 4777
    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4779
    :cond_4
    aget-object v6, v0, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4775
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4781
    :cond_5
    const-string v6, "]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public extractAddressFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 3754
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v0

    .line 3755
    .local v0, tokens:[Landroid/text/util/Rfc822Token;
    array-length v1, v0

    if-nez v1, :cond_0

    .line 3756
    const/4 v1, 0x0

    .line 3759
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "email"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3740
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v2

    .line 3741
    .local v2, tokens:[Landroid/text/util/Rfc822Token;
    array-length v4, v2

    if-nez v4, :cond_1

    .line 3750
    :cond_0
    :goto_0
    return-object v3

    .line 3745
    :cond_1
    aget-object v4, v2, v5

    invoke-virtual {v4}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3746
    .local v0, address:Ljava/lang/String;
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 3747
    .local v1, at:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 3748
    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getActivityMimeType(J)Ljava/lang/String;
    .locals 5
    .parameter "activityId"

    .prologue
    .line 4179
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 4180
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT mimetype FROM activities LEFT OUTER JOIN mimetypes ON (activities.mimetype_id = mimetypes._id) WHERE activities._id=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4187
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4188
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mActivitiesMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4192
    :goto_0
    return-object v1

    .line 4190
    :catch_0
    move-exception v0

    .line 4192
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAggregationMode(J)I
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 4433
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4434
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT aggregation_mode FROM raw_contacts WHERE _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4440
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4441
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mAggregationModeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    long-to-int v1, v1

    .line 4444
    :goto_0
    return v1

    .line 4442
    :catch_0
    move-exception v0

    .line 4444
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x3

    goto :goto_0
.end method

.method public getContactCount(J)J
    .locals 5
    .parameter "contactId"

    .prologue
    .line 4417
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 4419
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 4420
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4421
    .local v0, dbw:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "SELECT count(_id) FROM contacts WHERE _id = ?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4424
    .end local v0           #dbw:Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4425
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 4427
    :goto_0
    return-wide v2

    .line 4426
    :catch_0
    move-exception v1

    .line 4427
    .local v1, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getContactId(J)J
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 4398
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4399
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "SELECT contact_id FROM raw_contacts WHERE _id=?"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4405
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4406
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactIdQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 4409
    :goto_0
    return-wide v1

    .line 4407
    :catch_0
    move-exception v0

    .line 4409
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContactView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4696
    const-string v0, "view_contacts"

    return-object v0
.end method

.method protected getCountryIso()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4789
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    const-string v2, "country_detector"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 4791
    .local v0, detector:Landroid/location/CountryDetector;
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5330
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCountryMonitor:Lcom/android/providers/contacts/CountryMonitor;

    invoke-virtual {v0}, Lcom/android/providers/contacts/CountryMonitor;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataMimeType(J)Ljava/lang/String;
    .locals 5
    .parameter "dataId"

    .prologue
    .line 4158
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v2, :cond_0

    .line 4159
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT mimetype FROM data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) WHERE data._id=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4166
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 4167
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataMimetypeQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4171
    :goto_0
    return-object v1

    .line 4169
    :catch_0
    move-exception v0

    .line 4171
    .local v0, e:Landroid/database/sqlite/SQLiteDoneException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataSuperPrimaryCountByRawContactAndMimeType(JJ)J
    .locals 2
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    .line 5454
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByRawContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5455
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT COUNT (  data._id )  FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND contact_id= (   SELECT contact_id   FROM raw_contacts  WHERE _id = ? )   AND is_super_primary = 1 "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByRawContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    .line 5465
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByRawContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5466
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByRawContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5467
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByRawContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4688
    const-string v0, "view_data"

    return-object v0
.end method

.method public getDisplayNameSourceForMimeTypeId(I)I
    .locals 4
    .parameter "mimeTypeId"

    .prologue
    .line 4139
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 4140
    const/16 v0, 0x28

    .line 4150
    :goto_0
    return v0

    .line 4141
    :cond_0
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 4142
    const/16 v0, 0xa

    goto :goto_0

    .line 4143
    :cond_1
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 4144
    const/16 v0, 0x14

    goto :goto_0

    .line 4145
    :cond_2
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 4146
    const/16 v0, 0x1e

    goto :goto_0

    .line 4147
    :cond_3
    int-to-long v0, p1

    iget-wide v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdNickname:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 4148
    const/16 v0, 0x23

    goto :goto_0

    .line 4150
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEntitiesView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4708
    const-string v0, "view_entities"

    return-object v0
.end method

.method public getGroupView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4700
    const-string v0, "view_groups"

    return-object v0
.end method

.method public getMimeTypeId(Ljava/lang/String;)J
    .locals 2
    .parameter "mimetype"

    .prologue
    .line 4076
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4077
    const-wide/16 v0, 0x0

    .line 4082
    :goto_0
    return-wide v0

    .line 4080
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimetypeCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 4082
    :cond_1
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getMimeTypeIdForEmail()J
    .locals 2

    .prologue
    .line 4127
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdEmail:J

    return-wide v0
.end method

.method public getMimeTypeIdForIm()J
    .locals 2

    .prologue
    .line 4123
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdIm:J

    return-wide v0
.end method

.method public getMimeTypeIdForOrganization()J
    .locals 2

    .prologue
    .line 4119
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdOrganization:J

    return-wide v0
.end method

.method public getMimeTypeIdForPhone()J
    .locals 2

    .prologue
    .line 4131
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdPhone:J

    return-wide v0
.end method

.method public getMimeTypeIdForSip()J
    .locals 2

    .prologue
    .line 4135
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdSip:J

    return-wide v0
.end method

.method public getMimeTypeIdForStructuredName()J
    .locals 2

    .prologue
    .line 4111
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredName:J

    return-wide v0
.end method

.method public getMimeTypeIdForStructuredPostal()J
    .locals 2

    .prologue
    .line 4115
    iget-wide v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mMimeTypeIdStructuredPostal:J

    return-wide v0
.end method

.method public getPackageId(Ljava/lang/String;)J
    .locals 4
    .parameter "packageName"

    .prologue
    .line 4043
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4058
    :goto_0
    return-wide v2

    .line 4045
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "SELECT _id FROM packages WHERE package=?"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 4050
    .local v1, packageQuery:Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "INSERT INTO packages(package) VALUES (?)"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 4055
    .local v0, packageInsert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPackageCache:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupAndCacheId(Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Ljava/lang/String;Ljava/util/HashMap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 4057
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4058
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 4057
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 4058
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v2
.end method

.method public getPhotoIdByRawContactId(J)J
    .locals 6
    .parameter "rawContactId"

    .prologue
    .line 5413
    const-wide/16 v0, -0x1

    .line 5414
    .local v0, photoId:J
    const-string v4, "vnd.android.cursor.item/photo"

    invoke-virtual {p0, v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    .line 5416
    .local v2, photoMimeId:J
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPhotoIdQueryByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    if-nez v4, :cond_0

    .line 5417
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "SELECT _id FROM data WHERE mimetype_id=? AND raw_contact_id=?"

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v4

    iput-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPhotoIdQueryByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    .line 5425
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPhotoIdQueryByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5426
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPhotoIdQueryByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5427
    iget-object v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mPhotoIdQueryByRawContactId:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 5431
    :goto_0
    return-wide v0

    .line 5428
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4656
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "properties"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "property_value"

    aput-object v3, v2, v6

    const-string v3, "property_key=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4660
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 4662
    .local v9, value:Ljava/lang/String;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4663
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 4666
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4669
    if-eqz v9, :cond_1

    .end local v9           #value:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 4666
    .restart local v9       #value:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    move-object v9, p2

    .line 4669
    goto :goto_0
.end method

.method public getRawContactView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4692
    const-string v0, "view_raw_contacts"

    return-object v0
.end method

.method public getRawEntitiesView()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4704
    const-string v0, "view_raw_entities"

    return-object v0
.end method

.method public getSuperPrimaryDataCountByContactAndMimeType(JJ)J
    .locals 2
    .parameter "contactId"
    .parameter "mimeTypeId"

    .prologue
    .line 5436
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5437
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT COUNT (  data._id )  FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND contact_id=?   AND is_super_primary = 1 "

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    .line 5445
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5446
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5447
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mDataSuperPrimaryCountByContactAndMimeType:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSyncState()Lcom/android/common/content/SyncStateContentProviderHelper;
    .locals 1

    .prologue
    .line 4613
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method public getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4544
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUseStrictPhoneNumberComparison:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public declared-synchronized getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 3939
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3941
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    if-eqz v1, :cond_0

    .line 3942
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 3944
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->close()V

    .line 3945
    const-string v1, "ContactsDatabaseHelper"

    const-string v2, "super re super getWritableDatabase E"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3946
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3947
    const-string v1, "ContactsDatabaseHelper"

    const-string v2, "super re super getWritableDatabase X"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3949
    :cond_0
    monitor-exit p0

    return-object v0

    .line 3939
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hasAccessToRestrictedData()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5472
    iget-object v9, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 5473
    .local v6, pm:Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 5476
    .local v3, callerPackages:[Ljava/lang/String;
    move-object v1, v3

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v2, v1, v4

    .line 5477
    .local v2, callerPackage:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->hasAccessToRestrictedData(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 5496
    .end local v2           #callerPackage:Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 5484
    .restart local v2       #callerPackage:Ljava/lang/String;
    :cond_1
    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v6, v2, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 5485
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 5486
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_0

    .line 5476
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2           #callerPackage:Ljava/lang/String;
    :cond_3
    move v7, v8

    .line 5496
    goto :goto_1

    .line 5490
    .restart local v2       #callerPackage:Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method protected initializeAutoIncrementSequences(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 1446
    return-void
.end method

.method public insertNameLookup(JJILjava/lang/String;)V
    .locals 4
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "name"

    .prologue
    .line 5231
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5249
    :goto_0
    return-void

    .line 5235
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 5236
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT OR IGNORE INTO name_lookup(raw_contact_id,data_id,name_type,normalized_name) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 5244
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5245
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5246
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5247
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5248
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameLookupInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0
.end method

.method public insertNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V
    .locals 8
    .parameter "stmt"
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "lookupType"
    .parameter "name"

    .prologue
    .line 3332
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3342
    :cond_0
    :goto_0
    return-void

    .line 3336
    :cond_1
    invoke-static {p7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3337
    .local v7, normalized:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .line 3341
    invoke-direct/range {v0 .. v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNormalizedNameLookup(Landroid/database/sqlite/SQLiteStatement;JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "email"

    .prologue
    const/4 v0, 0x0

    .line 5265
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v7, v0

    .line 5276
    :goto_0
    return-object v7

    .line 5269
    :cond_0
    invoke-virtual {p0, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->extractHandleFromEmailAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5270
    .local v7, address:Ljava/lang/String;
    if-nez v7, :cond_1

    move-object v7, v0

    .line 5271
    goto :goto_0

    .line 5274
    :cond_1
    const/4 v5, 0x4

    invoke-static {v7}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForNickname(JJLjava/lang/String;)V
    .locals 7
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "nickname"

    .prologue
    .line 5283
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5289
    :goto_0
    return-void

    .line 5287
    :cond_0
    const/4 v5, 0x3

    invoke-static {p5}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    goto :goto_0
.end method

.method public insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "familyName"
    .parameter "middleName"
    .parameter "givenName"

    .prologue
    .line 5293
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5294
    if-eqz p5, :cond_0

    .line 5295
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5297
    :cond_0
    if-eqz p6, :cond_1

    .line 5298
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5300
    :cond_1
    if-eqz p7, :cond_2

    .line 5301
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5304
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 5305
    const/4 v5, 0x2

    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/NameNormalizer;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(JJILjava/lang/String;)V

    .line 5308
    :cond_3
    return-void
.end method

.method public insertStatusUpdate(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 7
    .parameter "dataId"
    .parameter "status"
    .parameter "resPackage"
    .parameter "iconResource"
    .parameter "labelResource"

    .prologue
    .line 4828
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_0

    .line 4829
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "INSERT INTO status_updates(status_update_data_id, status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?)"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 4839
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4840
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4841
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4842
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4843
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x5

    invoke-direct {p0, v3, v4, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4844
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4877
    :goto_0
    return-void

    .line 4845
    :catch_0
    move-exception v0

    .line 4847
    .local v0, e:Landroid/database/sqlite/SQLiteConstraintException;
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_1

    .line 4848
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "UPDATE status_updates SET status_ts=?,status=? WHERE status_update_data_id=? AND status!=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    .line 4856
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4857
    .local v1, timestamp:J
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4858
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4859
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4860
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4861
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateAutoTimestamp:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4863
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    if-nez v3, :cond_2

    .line 4864
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "UPDATE status_updates SET status_res_package=?,status_icon=?,status_label=? WHERE status_update_data_id=?"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 4871
    :cond_2
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4872
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4873
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x3

    invoke-direct {p0, v3, v4, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4874
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x4

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4875
    iget-object v3, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusAttributionUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method public isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z
    .locals 5
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v0, 0x1

    .line 4304
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 4305
    const-string v1, "SELECT EXISTS (SELECT 1 FROM default_directory WHERE _id=?)"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 4310
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4311
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContactInDefaultDirectoryQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs isInProjection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 11
    .parameter "projection"
    .parameter "columns"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4716
    if-nez p1, :cond_1

    .line 4737
    :cond_0
    :goto_0
    return v8

    .line 4721
    :cond_1
    array-length v10, p2

    if-ne v10, v8, :cond_2

    .line 4722
    aget-object v2, p2, v9

    .line 4723
    .local v2, column:Ljava/lang/String;
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v7, v0, v3

    .line 4724
    .local v7, test:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4723
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4729
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #column:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v7           #test:Ljava/lang/String;
    :cond_2
    move-object v0, p1

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    move v4, v3

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-object v7, v0, v4

    .line 4730
    .restart local v7       #test:Ljava/lang/String;
    move-object v1, p2

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .end local v4           #i$:I
    .restart local v3       #i$:I
    :goto_3
    if-ge v3, v6, :cond_3

    aget-object v2, v1, v3

    .line 4731
    .restart local v2       #column:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 4730
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4729
    .end local v2           #column:Ljava/lang/String;
    :cond_3
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3           #i$:I
    .restart local v4       #i$:I
    goto :goto_2

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #test:Ljava/lang/String;
    :cond_4
    move v8, v9

    .line 4737
    goto :goto_0
.end method

.method public obtainCompiledStatementController()Lcom/android/providers/contacts/CompiledStatementController;
    .locals 1

    .prologue
    .line 5383
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCompiledStatementController:Lcom/android/providers/contacts/CompiledStatementController;

    if-nez v0, :cond_0

    .line 5384
    new-instance v0, Lcom/android/providers/contacts/CompiledStatementController;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/CompiledStatementController;-><init>(Lcom/android/providers/contacts/ContactsDatabaseHelper;)V

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCompiledStatementController:Lcom/android/providers/contacts/CompiledStatementController;

    .line 5387
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCompiledStatementController:Lcom/android/providers/contacts/CompiledStatementController;

    return-object v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .parameter "db"

    .prologue
    .line 985
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 987
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 893
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->refreshDatabaseCaches(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 895
    iget-object v1, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSyncState:Lcom/android/common/content/SyncStateContentProviderHelper;

    invoke-virtual {v1, p1}, Lcom/android/common/content/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 897
    const-string v1, "ATTACH DATABASE \':memory:\' AS presence_db;"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 898
    const-string v1, "CREATE TABLE IF NOT EXISTS presence_db.presence (presence_data_id INTEGER PRIMARY KEY REFERENCES data(_id),protocol INTEGER NOT NULL,custom_protocol TEXT,im_handle TEXT,im_account TEXT,presence_contact_id INTEGER REFERENCES contacts(_id),presence_raw_contact_id INTEGER REFERENCES raw_contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0,UNIQUE(protocol, custom_protocol, im_handle, im_account));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 912
    const-string v1, "CREATE INDEX IF NOT EXISTS presence_db.presenceIndex ON presence (presence_raw_contact_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 914
    const-string v1, "CREATE INDEX IF NOT EXISTS presence_db.presenceIndex2 ON presence (presence_contact_id);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 917
    const-string v1, "CREATE TABLE IF NOT EXISTS presence_db.agg_presence (presence_contact_id INTEGER PRIMARY KEY REFERENCES contacts(_id),mode INTEGER,chat_capability INTEGER NOT NULL DEFAULT 0);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 926
    const-string v1, "CREATE TRIGGER presence_db.presence_deleted BEFORE DELETE ON presence_db.presence BEGIN    DELETE FROM agg_presence     WHERE presence_contact_id = (SELECT presence_contact_id FROM presence WHERE presence_raw_contact_id=OLD.presence_raw_contact_id AND NOT EXISTS(SELECT presence_raw_contact_id FROM presence WHERE presence_contact_id=OLD.presence_contact_id AND presence_raw_contact_id!=OLD.presence_raw_contact_id)); END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 944
    const-string v0, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id;"

    .line 966
    .local v0, replaceAggregatePresenceSql:Ljava/lang/String;
    const-string v1, "CREATE TRIGGER presence_db.presence_inserted AFTER INSERT ON presence_db.presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 972
    const-string v1, "CREATE TRIGGER presence_db.presence_updated AFTER UPDATE ON presence_db.presence BEGIN INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) = (SELECT MAX (ifnull(mode,0)  * 10 + ifnull(chat_capability, 0)) FROM presence WHERE presence_contact_id=NEW.presence_contact_id) AND presence_contact_id=NEW.presence_contact_id; END"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 977
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 10
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 2033
    const/16 v7, 0x63

    if-lt p2, v7, :cond_0

    if-le p2, p3, :cond_2

    .line 2035
    :cond_0
    const-string v7, "ContactsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrading from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", data will be lost!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    const-string v7, "DROP TABLE IF EXISTS contacts;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2039
    const-string v7, "DROP TABLE IF EXISTS raw_contacts;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2040
    const-string v7, "DROP TABLE IF EXISTS packages;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2041
    const-string v7, "DROP TABLE IF EXISTS mimetypes;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2042
    const-string v7, "DROP TABLE IF EXISTS data;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2043
    const-string v7, "DROP TABLE IF EXISTS phone_lookup;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2044
    const-string v7, "DROP TABLE IF EXISTS name_lookup;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2045
    const-string v7, "DROP TABLE IF EXISTS nickname_lookup;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2046
    const-string v7, "DROP TABLE IF EXISTS groups;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2047
    const-string v7, "DROP TABLE IF EXISTS activities;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2048
    const-string v7, "DROP TABLE IF EXISTS calls;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2049
    const-string v7, "DROP TABLE IF EXISTS settings;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2050
    const-string v7, "DROP TABLE IF EXISTS status_updates;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2055
    const-string v7, "DROP TABLE IF EXISTS agg_exceptions;"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2058
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2520
    :cond_1
    return-void

    .line 2064
    :cond_2
    const-string v7, "ContactsDatabaseHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Upgrading from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    const/4 v6, 0x0

    .line 2067
    .local v6, upgradeViewsAndTriggers:Z
    const/4 v4, 0x0

    .line 2068
    .local v4, upgradeNameLookup:Z
    const/4 v3, 0x0

    .line 2069
    .local v3, upgradeLegacyApiSupport:Z
    const/4 v5, 0x0

    .line 2071
    .local v5, upgradeSearchIndex:Z
    const/16 v7, 0x161

    if-ne p2, v7, :cond_3

    const/16 v7, 0x271

    if-ne p3, v7, :cond_3

    .line 2072
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mIsGBToICSUpgradHappen:Z

    .line 2075
    :cond_3
    const/16 v7, 0x63

    if-ne p2, v7, :cond_4

    .line 2076
    const/4 v6, 0x1

    .line 2077
    add-int/lit8 p2, p2, 0x1

    .line 2080
    :cond_4
    const/16 v7, 0x64

    if-ne p2, v7, :cond_5

    .line 2081
    const-string v7, "CREATE INDEX IF NOT EXISTS mimetypes_mimetype_index ON mimetypes (mimetype,_id);"

    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2085
    const-string v7, "mimetypes"

    const-string v8, "mimetypes_mimetype_index"

    const-string v9, "50 1 1"

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateIndexStats(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    const/4 v6, 0x1

    .line 2089
    add-int/lit8 p2, p2, 0x1

    .line 2092
    :cond_5
    const/16 v7, 0x65

    if-ne p2, v7, :cond_6

    .line 2093
    const/4 v6, 0x1

    .line 2094
    add-int/lit8 p2, p2, 0x1

    .line 2097
    :cond_6
    const/16 v7, 0x66

    if-ne p2, v7, :cond_7

    .line 2098
    const/4 v6, 0x1

    .line 2099
    add-int/lit8 p2, p2, 0x1

    .line 2102
    :cond_7
    const/16 v7, 0x67

    if-ne p2, v7, :cond_8

    .line 2103
    const/4 v6, 0x1

    .line 2104
    add-int/lit8 p2, p2, 0x1

    .line 2107
    :cond_8
    const/16 v7, 0x68

    if-eq p2, v7, :cond_9

    const/16 v7, 0xc9

    if-ne p2, v7, :cond_a

    .line 2108
    :cond_9
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createSettingsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2109
    const/4 v6, 0x1

    .line 2110
    add-int/lit8 p2, p2, 0x1

    .line 2113
    :cond_a
    const/16 v7, 0x69

    if-ne p2, v7, :cond_b

    .line 2114
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion202(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2115
    const/4 v4, 0x1

    .line 2116
    const/16 p2, 0xca

    .line 2119
    :cond_b
    const/16 v7, 0xca

    if-ne p2, v7, :cond_c

    .line 2120
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion203(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2121
    const/4 v6, 0x1

    .line 2122
    add-int/lit8 p2, p2, 0x1

    .line 2125
    :cond_c
    const/16 v7, 0xcb

    if-ne p2, v7, :cond_d

    .line 2126
    const/4 v6, 0x1

    .line 2127
    add-int/lit8 p2, p2, 0x1

    .line 2130
    :cond_d
    const/16 v7, 0xcc

    if-ne p2, v7, :cond_e

    .line 2131
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion205(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2132
    const/4 v6, 0x1

    .line 2133
    add-int/lit8 p2, p2, 0x1

    .line 2136
    :cond_e
    const/16 v7, 0xcd

    if-ne p2, v7, :cond_f

    .line 2137
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgrateToVersion206(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2138
    const/4 v6, 0x1

    .line 2139
    add-int/lit8 p2, p2, 0x1

    .line 2142
    :cond_f
    const/16 v7, 0xce

    if-ne p2, v7, :cond_10

    .line 2143
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion300(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2144
    const/16 p2, 0x12c

    .line 2147
    :cond_10
    const/16 v7, 0x12c

    if-ne p2, v7, :cond_11

    .line 2148
    const/4 v6, 0x1

    .line 2149
    const/16 p2, 0x12d

    .line 2152
    :cond_11
    const/16 v7, 0x12d

    if-ne p2, v7, :cond_12

    .line 2153
    const/4 v6, 0x1

    .line 2154
    const/16 p2, 0x12e

    .line 2157
    :cond_12
    const/16 v7, 0x12e

    if-ne p2, v7, :cond_13

    .line 2158
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeEmailToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2159
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeNicknameToVersion303(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2160
    const/16 p2, 0x12f

    .line 2163
    :cond_13
    const/16 v7, 0x12f

    if-ne p2, v7, :cond_14

    .line 2164
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion304(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2165
    const/16 p2, 0x130

    .line 2168
    :cond_14
    const/16 v7, 0x130

    if-ne p2, v7, :cond_15

    .line 2169
    const/4 v4, 0x1

    .line 2170
    const/16 p2, 0x131

    .line 2173
    :cond_15
    const/16 v7, 0x131

    if-ne p2, v7, :cond_16

    .line 2174
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion306(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2175
    const/16 p2, 0x132

    .line 2178
    :cond_16
    const/16 v7, 0x132

    if-ne p2, v7, :cond_17

    .line 2179
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion307(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2180
    const/16 p2, 0x133

    .line 2183
    :cond_17
    const/16 v7, 0x133

    if-ne p2, v7, :cond_18

    .line 2184
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion308(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2185
    const/16 p2, 0x134

    .line 2189
    :cond_18
    const/16 v7, 0x15e

    if-ge p2, v7, :cond_19

    .line 2190
    const/4 v6, 0x1

    .line 2191
    const/16 p2, 0x15f

    .line 2194
    :cond_19
    const/16 v7, 0x15f

    if-ne p2, v7, :cond_1a

    .line 2195
    const/4 v4, 0x1

    .line 2196
    const/16 p2, 0x160

    .line 2199
    :cond_1a
    const/16 v7, 0x160

    if-ne p2, v7, :cond_1b

    .line 2200
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2201
    const/16 p2, 0x161

    .line 2205
    :cond_1b
    const/16 v7, 0x190

    if-ge p2, v7, :cond_1c

    .line 2206
    const/4 v6, 0x1

    .line 2207
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion400(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2208
    const/16 p2, 0x190

    .line 2211
    :cond_1c
    const/16 v7, 0x190

    if-ne p2, v7, :cond_1d

    .line 2212
    const/4 v6, 0x1

    .line 2213
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion401(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2214
    const/16 p2, 0x191

    .line 2217
    :cond_1d
    const/16 v7, 0x191

    if-ne p2, v7, :cond_1e

    .line 2218
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion402(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2219
    const/16 p2, 0x192

    .line 2222
    :cond_1e
    const/16 v7, 0x192

    if-ne p2, v7, :cond_1f

    .line 2223
    const/4 v6, 0x1

    .line 2224
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion403(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2225
    const/16 p2, 0x193

    .line 2228
    :cond_1f
    const/16 v7, 0x193

    if-ne p2, v7, :cond_20

    .line 2229
    const/4 v6, 0x1

    .line 2230
    const/16 p2, 0x194

    .line 2233
    :cond_20
    const/16 v7, 0x194

    if-ne p2, v7, :cond_21

    .line 2234
    const/4 v6, 0x1

    .line 2235
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion405(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2236
    const/16 p2, 0x195

    .line 2239
    :cond_21
    const/16 v7, 0x195

    if-ne p2, v7, :cond_22

    .line 2240
    const/4 v6, 0x1

    .line 2241
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion406(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2242
    const/16 p2, 0x196

    .line 2245
    :cond_22
    const/16 v7, 0x196

    if-ne p2, v7, :cond_23

    .line 2246
    const/4 v6, 0x1

    .line 2247
    const/16 p2, 0x197

    .line 2250
    :cond_23
    const/16 v7, 0x197

    if-ne p2, v7, :cond_24

    .line 2252
    const/16 p2, 0x198

    .line 2255
    :cond_24
    const/16 v7, 0x198

    if-ne p2, v7, :cond_25

    .line 2256
    const/4 v6, 0x1

    .line 2257
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion409(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2258
    const/16 p2, 0x199

    .line 2261
    :cond_25
    const/16 v7, 0x199

    if-ne p2, v7, :cond_26

    .line 2262
    const/4 v6, 0x1

    .line 2263
    const/16 p2, 0x19a

    .line 2266
    :cond_26
    const/16 v7, 0x19a

    if-ne p2, v7, :cond_27

    .line 2267
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion411(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2268
    const/16 p2, 0x19b

    .line 2271
    :cond_27
    const/16 v7, 0x19b

    if-ne p2, v7, :cond_28

    .line 2273
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion353(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2274
    const/16 p2, 0x19c

    .line 2277
    :cond_28
    const/16 v7, 0x19c

    if-ne p2, v7, :cond_29

    .line 2278
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion413(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2279
    const/16 p2, 0x19d

    .line 2282
    :cond_29
    const/16 v7, 0x19d

    if-ne p2, v7, :cond_2a

    .line 2283
    const/4 v4, 0x1

    .line 2284
    const/16 p2, 0x19e

    .line 2287
    :cond_2a
    const/16 v7, 0x19e

    if-ne p2, v7, :cond_2b

    .line 2288
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion415(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2289
    const/4 v6, 0x1

    .line 2290
    const/16 p2, 0x19f

    .line 2293
    :cond_2b
    const/16 v7, 0x19f

    if-ne p2, v7, :cond_2c

    .line 2294
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion416(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2295
    const/16 p2, 0x1a0

    .line 2298
    :cond_2c
    const/16 v7, 0x1a0

    if-ne p2, v7, :cond_2d

    .line 2299
    const/4 v3, 0x1

    .line 2300
    const/16 p2, 0x1a1

    .line 2304
    :cond_2d
    const/16 v7, 0x1f4

    if-ge p2, v7, :cond_2e

    .line 2305
    const/4 v5, 0x1

    .line 2308
    :cond_2e
    const/16 v7, 0x1f5

    if-ge p2, v7, :cond_2f

    .line 2309
    const/4 v5, 0x1

    .line 2310
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion501(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2311
    const/16 p2, 0x1f5

    .line 2314
    :cond_2f
    const/16 v7, 0x1f6

    if-ge p2, v7, :cond_30

    .line 2315
    const/4 v5, 0x1

    .line 2316
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion502(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2317
    const/16 p2, 0x1f6

    .line 2320
    :cond_30
    const/16 v7, 0x1f7

    if-ge p2, v7, :cond_31

    .line 2321
    const/4 v5, 0x1

    .line 2322
    const/16 p2, 0x1f7

    .line 2325
    :cond_31
    const/16 v7, 0x1f8

    if-ge p2, v7, :cond_32

    .line 2326
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion504(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2327
    const/16 p2, 0x1f8

    .line 2330
    :cond_32
    const/16 v7, 0x258

    if-ge p2, v7, :cond_33

    .line 2331
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion600(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2332
    const/4 v6, 0x1

    .line 2333
    const/16 p2, 0x258

    .line 2336
    :cond_33
    const/16 v7, 0x259

    if-ge p2, v7, :cond_34

    .line 2337
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion601(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2338
    const/16 p2, 0x259

    .line 2341
    :cond_34
    const/16 v7, 0x25a

    if-ge p2, v7, :cond_35

    .line 2342
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion602(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2343
    const/16 p2, 0x25a

    .line 2346
    :cond_35
    const/16 v7, 0x25b

    if-ge p2, v7, :cond_36

    .line 2347
    const/4 v6, 0x1

    .line 2348
    const/16 p2, 0x25b

    .line 2351
    :cond_36
    const/16 v7, 0x25c

    if-ge p2, v7, :cond_37

    .line 2352
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion604(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2353
    const/16 p2, 0x25c

    .line 2356
    :cond_37
    const/16 v7, 0x25d

    if-ge p2, v7, :cond_38

    .line 2357
    const/4 v6, 0x1

    .line 2358
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion605(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2359
    const/16 p2, 0x25d

    .line 2362
    :cond_38
    const/16 v7, 0x25e

    if-ge p2, v7, :cond_39

    .line 2363
    const/4 v6, 0x1

    .line 2364
    const/4 v3, 0x1

    .line 2365
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion606(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2366
    const/16 p2, 0x25e

    .line 2369
    :cond_39
    const/16 v7, 0x25f

    if-ge p2, v7, :cond_3a

    .line 2370
    const/4 v6, 0x1

    .line 2371
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion607(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2372
    const/16 p2, 0x25f

    .line 2375
    :cond_3a
    const/16 v7, 0x260

    if-ge p2, v7, :cond_3b

    .line 2376
    const/4 v6, 0x1

    .line 2377
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion608(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2378
    const/16 p2, 0x260

    .line 2381
    :cond_3b
    const/16 v7, 0x261

    if-ge p2, v7, :cond_3c

    .line 2382
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion609(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2383
    const/16 p2, 0x261

    .line 2386
    :cond_3c
    const/16 v7, 0x262

    if-ge p2, v7, :cond_3d

    .line 2387
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion610(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2388
    const/16 p2, 0x262

    .line 2391
    :cond_3d
    const/16 v7, 0x263

    if-ge p2, v7, :cond_3e

    .line 2392
    const/4 v6, 0x1

    .line 2393
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion611(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2394
    const/16 p2, 0x263

    .line 2397
    :cond_3e
    const/16 v7, 0x264

    if-ge p2, v7, :cond_3f

    .line 2398
    const/4 v6, 0x1

    .line 2399
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion612(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2400
    const/16 p2, 0x264

    .line 2403
    :cond_3f
    const/16 v7, 0x265

    if-ge p2, v7, :cond_40

    .line 2404
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion613(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2405
    const/16 p2, 0x265

    .line 2408
    :cond_40
    const/16 v7, 0x266

    if-ge p2, v7, :cond_41

    .line 2410
    const/4 v6, 0x1

    .line 2411
    const/16 p2, 0x266

    .line 2414
    :cond_41
    const/16 v7, 0x267

    if-ge p2, v7, :cond_42

    .line 2415
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion615(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2416
    const/16 p2, 0x267

    .line 2419
    :cond_42
    const/16 v7, 0x268

    if-ge p2, v7, :cond_43

    .line 2421
    const/4 v6, 0x1

    .line 2422
    const/16 p2, 0x268

    .line 2425
    :cond_43
    const/16 v7, 0x269

    if-ge p2, v7, :cond_44

    .line 2430
    const/4 v6, 0x1

    .line 2431
    const/16 p2, 0x269

    .line 2434
    :cond_44
    const/16 v7, 0x26a

    if-ge p2, v7, :cond_45

    .line 2435
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion618(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2436
    const/16 p2, 0x26a

    .line 2439
    :cond_45
    const/16 v7, 0x26b

    if-ge p2, v7, :cond_46

    .line 2440
    const/4 v6, 0x1

    .line 2441
    const/16 p2, 0x26b

    .line 2444
    :cond_46
    const/16 v7, 0x26c

    if-ge p2, v7, :cond_47

    .line 2445
    const/4 v6, 0x1

    .line 2446
    const/16 p2, 0x26c

    .line 2449
    :cond_47
    const/16 v7, 0x26d

    if-ge p2, v7, :cond_48

    .line 2450
    const/4 v5, 0x1

    .line 2451
    const/16 p2, 0x26d

    .line 2454
    :cond_48
    const/16 v7, 0x26e

    if-ge p2, v7, :cond_49

    .line 2455
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->upgradeToVersion622(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2456
    const/16 p2, 0x26e

    .line 2459
    :cond_49
    const/16 v7, 0x26f

    if-ge p2, v7, :cond_4a

    .line 2461
    const/4 v5, 0x1

    .line 2462
    const/16 p2, 0x26f

    .line 2465
    :cond_4a
    const/16 v7, 0x270

    if-ge p2, v7, :cond_4b

    .line 2467
    const/4 v6, 0x1

    .line 2468
    const/16 p2, 0x270

    .line 2471
    :cond_4b
    const/16 v7, 0x271

    if-ge p2, v7, :cond_4c

    .line 2473
    const/4 v5, 0x1

    .line 2474
    const/16 p2, 0x271

    .line 2477
    :cond_4c
    if-eqz v6, :cond_4d

    .line 2478
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2479
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createGroupsView(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2480
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsTriggers(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2481
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2482
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateSqliteStats(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2483
    const/4 v3, 0x1

    .line 2484
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mReopenDatabase:Z

    .line 2489
    :cond_4d
    iput-boolean v4, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mUpgradeNameLookup:Z

    .line 2492
    if-eqz v3, :cond_4e

    .line 2493
    invoke-static {p1}, Lcom/android/providers/contacts/LegacyApiSupport;->createViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2496
    :cond_4e
    if-eqz v4, :cond_4f

    .line 2500
    const-string v0, "locale"

    .line 2501
    .local v0, PREF_LOCALE:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2502
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v7, "locale"

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2504
    .local v2, providerLocale:Ljava/lang/String;
    if-eqz v2, :cond_4f

    .line 2506
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2511
    .end local v0           #PREF_LOCALE:Ljava/lang/String;
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    .end local v2           #providerLocale:Ljava/lang/String;
    :cond_4f
    if-eqz v5, :cond_50

    .line 2512
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createSearchIndexTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2513
    const-string v7, "search_index"

    const-string v8, "0"

    invoke-direct {p0, p1, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 2516
    :cond_50
    if-eq p2, p3, :cond_1

    .line 2517
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error upgrading the database to version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method querySearchIndexContentForTest(J)Ljava/lang/String;
    .locals 5
    .parameter "contactId"

    .prologue
    .line 5334
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT content FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method querySearchIndexTokensForTest(J)Ljava/lang/String;
    .locals 5
    .parameter "contactId"

    .prologue
    .line 5342
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "SELECT tokens FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/database/DatabaseUtils;->stringForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public rawContactHasSuperPrimary(JJ)Z
    .locals 7
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5315
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "SELECT EXISTS(SELECT 1 FROM data WHERE raw_contact_id=? AND mimetype_id=? AND is_super_primary<>0)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 5322
    .local v0, existsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5325
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    .line 5323
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 5325
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_1
    move v1, v2

    .line 5323
    goto :goto_0
.end method

.method public removeContactIfSingleton(J)V
    .locals 9
    .parameter "rawContactId"

    .prologue
    const-wide/16 v7, 0x0

    .line 4621
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 4624
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(SELECT contact_id FROM raw_contacts WHERE _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4628
    .local v2, contactIdFromRawContactId:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(SELECT contacts1._id FROM raw_contacts contacts1 JOIN raw_contacts contacts2 ON (contacts1.contact_id=contacts2.contact_id) WHERE contacts1._id!="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND contacts2."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4635
    .local v4, otherRawContacts:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 4639
    .local v0, contactId:J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DELETE FROM contacts WHERE _id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND NOT EXISTS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4644
    cmp-long v5, v0, v7

    if-lez v5, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactCount(J)J

    move-result-wide v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 4645
    iget-object v5, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/providers/contacts/NotifyDialerScheduler;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyDeleteContact(J)V

    .line 4650
    :cond_0
    return-void
.end method

.method public replaceStatusUpdate(Ljava/lang/Long;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 4
    .parameter "dataId"
    .parameter "timestamp"
    .parameter "status"
    .parameter "resPackage"
    .parameter "iconResource"
    .parameter "labelResource"

    .prologue
    .line 4806
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 4807
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "INSERT OR REPLACE INTO status_updates(status_update_data_id, status_ts,status,status_res_package,status_icon,status_label) VALUES (?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 4817
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4818
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4819
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4820
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 4821
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1, p6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4822
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindLong(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/Number;)V

    .line 4823
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mStatusUpdateReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4824
    return-void
.end method

.method public resetNameVerifiedForOtherRawContacts(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 4884
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 4885
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE raw_contacts SET name_verified=0 WHERE contact_id=(SELECT contact_id FROM raw_contacts WHERE _id=?) AND _id!=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    .line 4894
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4895
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 4896
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mResetNameVerifiedForOtherRawContacts:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 4897
    return-void
.end method

.method public setIsPrimary(JJJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "mimeTypeId"

    .prologue
    .line 5171
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5172
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5178
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5179
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5180
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5181
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5182
    return-void
.end method

.method public setIsSuperPrimary(JJJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "dataId"
    .parameter "mimeTypeId"

    .prologue
    .line 5208
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5209
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "UPDATE data SET is_super_primary=(_id=?) WHERE mimetype_id=?   AND raw_contact_id IN (SELECT _id FROM raw_contacts WHERE contact_id =(SELECT contact_id FROM raw_contacts WHERE _id=?))"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 5221
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5222
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p5, p6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5223
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5224
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSetSuperPrimaryStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5225
    return-void
.end method

.method public setLocale(Lcom/android/providers/contacts/ContactsProvider2;Ljava/util/Locale;)V
    .locals 8
    .parameter "provider"
    .parameter "locale"

    .prologue
    .line 3098
    const-string v4, "ContactsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Switching to locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 3101
    .local v2, start:J
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3102
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0, p2}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 3103
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3105
    :try_start_0
    const-string v4, "DROP INDEX raw_contact_sort_key1_index"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3106
    const-string v4, "DROP INDEX raw_contact_sort_key2_index"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3107
    const-string v4, "DROP INDEX IF EXISTS name_lookup_index"

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3109
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->loadNicknameLookupTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3110
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookup(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3111
    invoke-direct {p0, v0, p1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rebuildSortKeys(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactsProvider2;)V

    .line 3112
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createContactsIndexes(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3113
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3123
    :goto_0
    const-string v4, "ContactsDatabaseHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locale change completed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    return-void

    .line 3114
    :catch_0
    move-exception v1

    .line 3115
    .local v1, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1
    const-string v4, "ContactsDatabaseHelper"

    const-string v5, "setLocale "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 3116
    .end local v1           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v1

    .line 3117
    .local v1, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v4, "ContactsDatabaseHelper"

    const-string v5, "setLocale "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3120
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1           #e:Landroid/database/sqlite/SQLiteFullException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 4676
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setProperty(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 4677
    return-void
.end method

.method public updateAllVisible()V
    .locals 2

    .prologue
    .line 4200
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 4201
    return-void
.end method

.method public updateCallLogByRawContactIdDeleted(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 5399
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCallLogUpdateByRawContactIdDeleted:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 5400
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, " UPDATE calls SET name=NULL, numberlabel=NULL, numbertype=NULL, raw_contact_id=NULL WHERE raw_contact_id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCallLogUpdateByRawContactIdDeleted:Landroid/database/sqlite/SQLiteStatement;

    .line 5408
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCallLogUpdateByRawContactIdDeleted:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5409
    iget-object v0, p0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCallLogUpdateByRawContactIdDeleted:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5410
    return-void
.end method

.method public updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter "txContext"
    .parameter "contactId"

    .prologue
    .line 4215
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    .line 4216
    return-void
.end method

.method public updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z
    .locals 17
    .parameter "txContext"
    .parameter "contactId"
    .parameter "onlyIfChanged"

    .prologue
    .line 4221
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 4224
    .local v6, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "_id="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-wide/from16 v0, p2

    invoke-virtual {v13, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v6, v13, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateCustomContactVisibility(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V

    .line 4227
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    .line 4228
    .local v5, contactIdAsString:Ljava/lang/String;
    const-string v13, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v9

    .line 4230
    .local v9, mimetype:J
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    .line 4234
    .local v3, beginNewVisibilityCPUTime:J
    const-string v13, "SELECT EXISTS (SELECT contact_id FROM raw_contacts JOIN data   ON (raw_contacts._id=raw_contact_id) WHERE contact_id=?   AND mimetype_id=?) OR EXISTS (SELECT _id FROM raw_contacts WHERE contact_id=?   AND NOT EXISTS (SELECT _id  FROM groups  WHERE raw_contacts.account_name = groups.account_name  AND raw_contacts.account_type = groups.account_type  AND (raw_contacts.data_set = groups.data_set OR raw_contacts.data_set IS NULL AND groups.data_set IS NULL)  AND auto_add != 0)) OR EXISTS (SELECT _id FROM raw_contacts WHERE contact_id=?   AND raw_contacts.account_name IS NULL    AND raw_contacts.account_type IS NULL   AND raw_contacts.data_set IS NULL)"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    const/4 v15, 0x1

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    const/4 v15, 0x3

    aput-object v5, v14, v15

    invoke-static {v6, v13, v14}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_0

    const/4 v11, 0x1

    .line 4275
    .local v11, newVisibility:Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v7

    .line 4280
    .local v7, endNewVisibilityTime:J
    if-eqz p4, :cond_1

    .line 4281
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v12

    .line 4282
    .local v12, oldVisibility:Z
    if-ne v12, v11, :cond_1

    .line 4283
    const/4 v13, 0x0

    .line 4300
    .end local v12           #oldVisibility:Z
    :goto_1
    return v13

    .line 4234
    .end local v7           #endNewVisibilityTime:J
    .end local v11           #newVisibility:Z
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 4287
    .restart local v7       #endNewVisibilityTime:J
    .restart local v11       #newVisibility:Z
    :cond_1
    if-eqz v11, :cond_2

    .line 4288
    const-string v13, "INSERT OR IGNORE INTO default_directory VALUES(?)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-virtual {v6, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4290
    invoke-virtual/range {p1 .. p3}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForContact(J)V

    .line 4300
    :goto_2
    const/4 v13, 0x1

    goto :goto_1

    .line 4292
    :cond_2
    const-string v13, "DELETE FROM default_directory WHERE _id=?"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-virtual {v6, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4295
    const-string v13, "DELETE FROM search_index WHERE contact_id=CAST(? AS int)"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v5, v14, v15

    invoke-virtual {v6, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public updateContactVisibleOnlyIfChanged(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 1
    .parameter "txContext"
    .parameter "contactId"

    .prologue
    .line 4207
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;JZ)Z

    move-result v0

    return v0
.end method

.method public updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 27
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 4945
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 4946
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->createNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    .line 4949
    :cond_0
    const/4 v6, 0x0

    .line 4950
    .local v6, bestDisplayNameSource:I
    const/4 v7, 0x0

    .line 4951
    .local v7, bestName:Lcom/android/providers/contacts/NameSplitter$Name;
    const/4 v4, 0x0

    .line 4952
    .local v4, bestDisplayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 4953
    .local v8, bestPhoneticName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 4955
    .local v9, bestPhoneticNameStyle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 4956
    const-string v23, "SELECT mimetype_id,is_primary,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11 FROM data WHERE raw_contact_id=? AND (data1 NOT NULL OR data4 NOT NULL)"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, c:Landroid/database/Cursor;
    move-object v5, v4

    .line 4958
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .local v5, bestDisplayName:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v23

    if-eqz v23, :cond_b

    .line 4959
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 4960
    .local v16, mimeType:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getDisplayNameSourceForMimeTypeId(I)I

    move-result v22

    .line 4961
    .local v22, source:I
    move/from16 v0, v22

    if-lt v0, v6, :cond_1

    if-eqz v22, :cond_1

    .line 4965
    move/from16 v0, v22

    if-ne v0, v6, :cond_2

    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_1

    .line 4970
    :cond_2
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForStructuredName()J

    move-result-wide v25

    cmp-long v23, v23, v25

    if-nez v23, :cond_7

    .line 4972
    if-eqz v7, :cond_4

    .line 4973
    new-instance v17, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v17 .. v17}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 4978
    .local v17, name:Lcom/android/providers/contacts/NameSplitter$Name;
    :goto_1
    const/16 v23, 0x5

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    .line 4979
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->givenNames:Ljava/lang/String;

    .line 4980
    const/16 v23, 0x6

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->middleName:Ljava/lang/String;

    .line 4981
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->familyName:Ljava/lang/String;

    .line 4982
    const/16 v23, 0x7

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->suffix:Ljava/lang/String;

    .line 4983
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_5

    const/16 v23, 0x0

    :goto_2
    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 4986
    const/16 v23, 0xa

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 4987
    const/16 v23, 0x9

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    .line 4988
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    .line 4989
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_6

    const/16 v23, 0x0

    :goto_3
    move/from16 v0, v23

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 4992
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/contacts/NameSplitter$Name;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_3

    .line 4993
    move/from16 v6, v22

    .line 4994
    move-object/from16 v7, v17

    :cond_3
    move-object v4, v5

    .end local v5           #bestDisplayName:Ljava/lang/String;
    .end local v17           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    :goto_4
    move-object v5, v4

    .line 5033
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    goto/16 :goto_0

    .line 4975
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mName:Lcom/android/providers/contacts/NameSplitter$Name;

    move-object/from16 v17, v0

    .line 4976
    .restart local v17       #name:Lcom/android/providers/contacts/NameSplitter$Name;
    invoke-virtual/range {v17 .. v17}, Lcom/android/providers/contacts/NameSplitter$Name;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    .line 5036
    .end local v16           #mimeType:I
    .end local v17           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    .end local v22           #source:I
    :catchall_0
    move-exception v23

    move-object v4, v5

    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v23

    .line 4983
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    .restart local v16       #mimeType:I
    .restart local v17       #name:Lcom/android/providers/contacts/NameSplitter$Name;
    .restart local v22       #source:I
    :cond_5
    const/16 v23, 0xb

    :try_start_1
    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    goto :goto_2

    .line 4989
    :cond_6
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    goto :goto_3

    .line 4996
    .end local v17           #name:Lcom/android/providers/contacts/NameSplitter$Name;
    :cond_7
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeIdForOrganization()J

    move-result-wide v25

    cmp-long v23, v23, v25

    if-nez v23, :cond_a

    .line 4997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 4998
    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 4999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v23, v0

    if-eqz v23, :cond_9

    .line 5000
    move/from16 v6, v22

    .line 5001
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5003
    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    const/16 v23, 0x9

    :try_start_2
    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5005
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_8

    const/4 v9, 0x0

    :goto_6
    goto/16 :goto_4

    :cond_8
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v9

    goto :goto_6

    .line 5010
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    :cond_9
    const/16 v23, 0x5

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 5011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 5012
    move/from16 v6, v22

    .line 5013
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    .line 5015
    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 5016
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5023
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 5024
    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v10, v0, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 5025
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v23, v0

    if-eqz v23, :cond_1a

    .line 5026
    move/from16 v6, v22

    .line 5027
    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mCharArrayBuffer:Landroid/database/CharArrayBuffer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    move/from16 v25, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v4, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5029
    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 5030
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 5036
    .end local v4           #bestDisplayName:Ljava/lang/String;
    .end local v16           #mimeType:I
    .end local v22           #source:I
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 5043
    const/16 v19, 0x0

    .line 5044
    .local v19, sortKeyPrimary:Ljava/lang/String;
    const/16 v18, 0x0

    .line 5045
    .local v18, sortKeyAlternative:Ljava/lang/String;
    const/4 v14, 0x0

    .line 5047
    .local v14, displayNameStyle:I
    const/16 v23, 0x28

    move/from16 v0, v23

    if-ne v6, v0, :cond_14

    .line 5048
    iget v14, v7, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 5049
    const/16 v23, 0x2

    move/from16 v0, v23

    if-eq v14, v0, :cond_c

    if-nez v14, :cond_d

    .line 5051
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v14

    .line 5052
    iput v14, v7, Lcom/android/providers/contacts/NameSplitter$Name;->fullNameStyle:I

    .line 5055
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v13

    .line 5056
    .local v13, displayNamePrimary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 5058
    .local v12, displayNameAlternative:Ljava/lang/String;
    iget-object v0, v7, Lcom/android/providers/contacts/NameSplitter$Name;->prefix:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 5059
    move-object/from16 v21, v13

    .line 5060
    .local v21, sortNamePrimary:Ljava/lang/String;
    move-object/from16 v20, v12

    .line 5066
    .local v20, sortNameAlternative:Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/providers/contacts/NameSplitter;->joinPhoneticName(Lcom/android/providers/contacts/NameSplitter$Name;)Ljava/lang/String;

    move-result-object v8

    .line 5067
    iget v9, v7, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    .line 5074
    :goto_8
    const/4 v15, 0x0

    .line 5077
    .local v15, hasRunCJKSortKey:Z
    if-eqz v8, :cond_15

    .line 5078
    move-object/from16 v18, v8

    move-object/from16 v19, v8

    .line 5079
    if-nez v9, :cond_e

    .line 5080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/providers/contacts/NameSplitter;->guessPhoneticNameStyle(Ljava/lang/String;)I

    move-result v9

    .line 5103
    :cond_e
    :goto_9
    if-nez v19, :cond_11

    .line 5104
    move-object/from16 v19, v21

    .line 5105
    move-object/from16 v18, v20

    .line 5108
    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-eqz v23, :cond_f

    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_f

    sget-short v23, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 5115
    :cond_f
    if-nez v15, :cond_11

    .line 5117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v11

    .line 5118
    .local v11, commonStyle:I
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v11, v0, :cond_10

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v11, v0, :cond_11

    .line 5119
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11, v9}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v11

    .line 5122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v11

    .line 5124
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13, v11}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 5127
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v11}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 5135
    .end local v11           #commonStyle:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    if-nez v23, :cond_12

    .line 5136
    const-string v23, "UPDATE raw_contacts SET display_name_source=?,display_name=?,display_name_alt=?,phonetic_name=?,phonetic_name_style=?,sort_key=?,sort_key_alt=? WHERE _id=?"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 5149
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-long v0, v6

    move-wide/from16 v25, v0

    invoke-virtual/range {v23 .. v26}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v13}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v12}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    int-to-long v0, v9

    move-wide/from16 v25, v0

    invoke-virtual/range {v23 .. v26}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 5156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    const/16 v24, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 5157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mRawContactDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 5159
    return-object v13

    .line 5062
    .end local v15           #hasRunCJKSortKey:Z
    .end local v20           #sortNameAlternative:Ljava/lang/String;
    .end local v21           #sortNamePrimary:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v21

    .line 5063
    .restart local v21       #sortNamePrimary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v7, v1, v2}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v20

    .restart local v20       #sortNameAlternative:Ljava/lang/String;
    goto/16 :goto_7

    .line 5069
    .end local v12           #displayNameAlternative:Ljava/lang/String;
    .end local v13           #displayNamePrimary:Ljava/lang/String;
    .end local v20           #sortNameAlternative:Ljava/lang/String;
    .end local v21           #sortNamePrimary:Ljava/lang/String;
    :cond_14
    move-object v12, v5

    .restart local v12       #displayNameAlternative:Ljava/lang/String;
    move-object v13, v5

    .line 5070
    .restart local v13       #displayNamePrimary:Ljava/lang/String;
    move-object/from16 v20, v5

    .restart local v20       #sortNameAlternative:Ljava/lang/String;
    move-object/from16 v21, v5

    .restart local v21       #sortNamePrimary:Ljava/lang/String;
    goto/16 :goto_8

    .line 5083
    .restart local v15       #hasRunCJKSortKey:Z
    :cond_15
    if-nez v14, :cond_18

    .line 5084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/NameSplitter;->guessFullNameStyle(Ljava/lang/String;)I

    move-result v14

    .line 5085
    if-eqz v14, :cond_16

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v14, v0, :cond_17

    .line 5087
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v9}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedNameStyleBasedOnPhoneticNameStyle(II)I

    move-result v14

    .line 5090
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactsDatabaseHelper;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v14

    .line 5092
    :cond_18
    const/16 v23, 0x3

    move/from16 v0, v23

    if-eq v14, v0, :cond_19

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v14, v0, :cond_e

    .line 5094
    :cond_19
    invoke-static {}, Lcom/android/providers/contacts/ContactLocaleUtils;->getIntance()Lcom/android/providers/contacts/ContactLocaleUtils;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Lcom/android/providers/contacts/ContactLocaleUtils;->getSortKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    .line 5098
    const/4 v15, 0x1

    goto/16 :goto_9

    .line 5036
    .end local v5           #bestDisplayName:Ljava/lang/String;
    .end local v12           #displayNameAlternative:Ljava/lang/String;
    .end local v13           #displayNamePrimary:Ljava/lang/String;
    .end local v14           #displayNameStyle:I
    .end local v15           #hasRunCJKSortKey:Z
    .end local v18           #sortKeyAlternative:Ljava/lang/String;
    .end local v19           #sortKeyPrimary:Ljava/lang/String;
    .end local v20           #sortNameAlternative:Ljava/lang/String;
    .end local v21           #sortNamePrimary:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    .restart local v16       #mimeType:I
    .restart local v22       #source:I
    :catchall_1
    move-exception v23

    goto/16 :goto_5

    .end local v4           #bestDisplayName:Ljava/lang/String;
    .restart local v5       #bestDisplayName:Ljava/lang/String;
    :cond_1a
    move-object v4, v5

    .end local v5           #bestDisplayName:Ljava/lang/String;
    .restart local v4       #bestDisplayName:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public wipeData()V
    .locals 2

    .prologue
    .line 3956
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3958
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "DELETE FROM accounts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3959
    const-string v1, "INSERT INTO accounts VALUES(NULL, NULL, NULL)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3961
    const-string v1, "DELETE FROM contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3962
    const-string v1, "DELETE FROM raw_contacts;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3963
    const-string v1, "DELETE FROM stream_items;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3964
    const-string v1, "DELETE FROM stream_item_photos;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3965
    const-string v1, "DELETE FROM photo_files;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3966
    const-string v1, "DELETE FROM data;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3967
    const-string v1, "DELETE FROM phone_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3968
    const-string v1, "DELETE FROM name_lookup;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3969
    const-string v1, "DELETE FROM groups;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3970
    const-string v1, "DELETE FROM agg_exceptions;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3971
    const-string v1, "DELETE FROM settings;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3972
    const-string v1, "DELETE FROM activities;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3973
    const-string v1, "DELETE FROM calls;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3974
    const-string v1, "DELETE FROM directories;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3975
    const-string v1, "DELETE FROM search_index;"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3978
    return-void
.end method

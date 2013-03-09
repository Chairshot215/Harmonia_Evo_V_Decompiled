.class public Lcom/android/providers/contacts/ContactAggregator;
.super Ljava/lang/Object;
.source "ContactAggregator.java"

# interfaces
.implements Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/ContactAggregator$1;,
        Lcom/android/providers/contacts/ContactAggregator$ScheduleAggregationQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;,
        Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;,
        Lcom/android/providers/contacts/ContactAggregator$PhotoFileQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactReplaceSqlStatement;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactsQuery;,
        Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQueryWithParameter;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$IdentityLookupMatchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;,
        Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAggregationModeQuery;,
        Lcom/android/providers/contacts/ContactAggregator$AggregationQuery;,
        Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;,
        Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;,
        Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;,
        Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FIRST_LETTER_SUGGESTION_HIT_LIMIT:I = 0x64

.field public static final LOG_SYNC_CONTACTS_AGGREGATION:I = 0xabb

.field private static final MAX_TRANSACTION_SIZE:I = 0x32

.field private static final PRIMARY_HIT_LIMIT:I = 0xf

.field private static final PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String; = null

.field private static final SECONDARY_HIT_LIMIT:I = 0x14

.field private static final SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String; = null

.field private static final SLEEP_AFTER_YIELD_DELAY:I = 0xfa0

.field private static final STRUCTURED_NAME_BASED_LOOKUP_SQL:Ljava/lang/String; = "name_type IN (0,1,2)"

.field private static final TAG:Ljava/lang/String; = "ContactAggregator"

.field private static final UPDATE_LAST_STATUS_UPDATE_ID_SQL:Ljava/lang/String; = "UPDATE contacts SET status_update_id=(SELECT data._id FROM status_updates JOIN data   ON (status_update_data_id=data._id) JOIN raw_contacts   ON (data.raw_contact_id=raw_contacts._id) WHERE contact_id=? ORDER BY status_ts DESC,status LIMIT 1) WHERE contacts._id=?"

.field private static final VERBOSE_LOGGING:Z

.field private static mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;


# instance fields
.field private mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

.field private final mAggregationExceptionIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAggregationExceptionIdsValid:Z

.field private volatile mCancel:Z

.field private mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

.field private final mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

.field private mContactDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactIdMarkedForAggregated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mContactInsert:Landroid/database/sqlite/SQLiteStatement;

.field protected mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field private final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDefaultActionUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

.field private mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mEnabled:Z

.field private mHtcDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

.field private mMatcher:Lcom/android/providers/contacts/ContactMatcher;

.field private mMimeTypeIdEmail:J

.field private mMimeTypeIdFave:J

.field private mMimeTypeIdIdentity:J

.field private mMimeTypeIdNote:J

.field private mMimeTypeIdPhone:J

.field private mMimeTypeIdPhoto:J

.field private final mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field private mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field private mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

.field private mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

.field protected mRawContactAccountType:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

.field private mRawContactsMarkedForAggregation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactsMarkedForArrange:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRawContactsQueryByContactId:Ljava/lang/String;

.field private mRawContactsQueryByRawContactId:Ljava/lang/String;

.field private mSb:Ljava/lang/StringBuilder;

.field private final mScheduler:Lcom/android/providers/contacts/ContactAggregationScheduler;

.field private mSelectionArgs1:[Ljava/lang/String;

.field private mSelectionArgs2:[Ljava/lang/String;

.field private mSelectionArgs3:[Ljava/lang/String;

.field private mSelectionArgs4:[Ljava/lang/String;

.field private mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

.field public mSuggestionBeforeUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mSuggestionMarkDelete:Landroid/database/sqlite/SQLiteStatement;

.field private mSuggestionMarkInsert:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    .line 89
    const-string v0, "ContactAggregator"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    .line 126
    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    .line 131
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/ContactsProvider2;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/PhotoPriorityResolver;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/CommonNicknameCache;)V
    .locals 8
    .parameter "contactsProvider"
    .parameter "contactsDatabaseHelper"
    .parameter "photoPriorityResolver"
    .parameter "nameSplitter"
    .parameter "commonNicknameCache"

    .prologue
    .line 317
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 167
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    .line 169
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 170
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    .line 171
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 172
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs4:[Ljava/lang/String;

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    .line 184
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    .line 185
    new-instance v2, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    .line 187
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    .line 196
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    .line 212
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdMarkedForAggregated:Ljava/util/ArrayList;

    .line 1332
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    .line 318
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 319
    iput-object p2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 320
    iput-object p3, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoPriorityResolver:Lcom/android/providers/contacts/PhotoPriorityResolver;

    .line 321
    iput-object p4, p0, Lcom/android/providers/contacts/ContactAggregator;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 322
    iput-object p5, p0, Lcom/android/providers/contacts/ContactAggregator;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    .line 326
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/contacts/NotifyDialerScheduler;->getInstance(Landroid/content/Context;)Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-result-object v2

    sput-object v2, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    .line 331
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 335
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    .line 355
    .local v1, replaceAggregatePresenceSql:Ljava/lang/String;
    const-string v2, "INSERT OR REPLACE INTO agg_presence(presence_contact_id, mode, chat_capability) SELECT presence_contact_id,mode,chat_capability FROM presence WHERE  (mode * 10 + chat_capability) = (SELECT MAX (mode * 10 + chat_capability) FROM presence WHERE presence_contact_id=?) AND presence_contact_id=?;"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    .line 357
    const-string v2, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=? AND _id<>?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    .line 363
    const-string v2, "DELETE FROM contacts WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 367
    const-string v2, "DELETE FROM agg_presence WHERE presence_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 371
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=1 WHERE _id=? AND aggregation_needed=0"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    .line 377
    const-string v2, "UPDATE contacts SET photo_id=?,photo_file_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 382
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 388
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?, display_name=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHtcDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 396
    const-string v2, "SELECT  raw_contacts.account_type  FROM raw_contacts  WHERE raw_contacts._id = ? "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactAccountType:Landroid/database/sqlite/SQLiteStatement;

    .line 404
    const-string v2, "UPDATE contacts SET lookup=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 409
    const-string v2, "UPDATE contacts SET starred=(SELECT (CASE WHEN COUNT(starred)=0 THEN 0 ELSE 1 END) FROM raw_contacts WHERE contact_id=contacts._id AND starred=1) WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 415
    const-string v2, "UPDATE raw_contacts SET contact_id=?, aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 421
    const-string v2, "UPDATE raw_contacts SET contact_id=? WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 426
    const-string v2, "UPDATE raw_contacts SET aggregation_needed=0 WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 431
    const-string v2, "UPDATE presence SET presence_contact_id=? WHERE presence_raw_contact_id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 436
    sget-boolean v2, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v2, :cond_0

    .line 437
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, photo_file_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, lookup=?  , contact_is_read_only =?,single_is_restricted=?, ext_account_Type=?,vip=?,display_name=? , ext_account_name = ?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 438
    const-string v2, "INSERT INTO contacts (name_raw_contact_id, photo_id, photo_file_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, lookup, contact_is_read_only, single_is_restricted, ext_account_Type, vip, display_name, ext_account_name) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 445
    :goto_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdEmail:J

    .line 446
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/identity"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdIdentity:J

    .line 447
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    .line 448
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    .line 450
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdNote:J

    .line 451
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v3, "vnd.android.cursor.item/vnd.tmobile.faves"

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdFave:J

    .line 454
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,name_verified,data._id,data.mimetype_id,is_super_primary,data14,data4,raw_contact_is_read_only,is_restricted FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL) OR (mimetype_id=%d AND data4 NOT NULL))) WHERE raw_contacts._id=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdFave:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    .line 458
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "SELECT raw_contacts._id,display_name,display_name_source,account_type,account_name,data_set,sourceid,custom_ringtone,send_to_voicemail,last_time_contacted,times_contacted,starred,name_verified,data._id,data.mimetype_id,is_super_primary,data14,data4,raw_contact_is_read_only,is_restricted FROM raw_contacts LEFT OUTER JOIN data ON (data.raw_contact_id=raw_contacts._id AND ((mimetype_id=%d AND data15 NOT NULL) OR (mimetype_id=%d AND data1 NOT NULL) OR (mimetype_id=%d AND data4 NOT NULL))) WHERE contact_id=? AND deleted=0"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-wide v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-wide v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdFave:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    .line 463
    const-string v2, "INSERT INTO suggestion(raw_contact_id1, raw_contact_id2,removed) VALUES (?,0,1)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionMarkInsert:Landroid/database/sqlite/SQLiteStatement;

    .line 470
    const-string v2, "DELETE FROM suggestion WHERE raw_contact_id1=?  AND raw_contact_id2=0  AND removed=1 "

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionMarkDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 476
    const-string v2, "DELETE FROM suggestion WHERE ((raw_contact_id1=?  AND raw_contact_id2=0  AND removed=1 ) OR ((raw_contact_id1=?  OR raw_contact_id2=? ) AND removed=0 ))"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionBeforeUpdateDelete:Landroid/database/sqlite/SQLiteStatement;

    .line 486
    const-string v2, "UPDATE contacts SET default_action=? WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDefaultActionUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 492
    new-instance v2, Lcom/android/providers/contacts/ContactAggregationScheduler;

    invoke-direct {v2}, Lcom/android/providers/contacts/ContactAggregationScheduler;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mScheduler:Lcom/android/providers/contacts/ContactAggregationScheduler;

    .line 493
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mScheduler:Lcom/android/providers/contacts/ContactAggregationScheduler;

    invoke-virtual {v2, p0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->setAggregator(Lcom/android/providers/contacts/ContactAggregationScheduler$Aggregator;)V

    .line 494
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mScheduler:Lcom/android/providers/contacts/ContactAggregationScheduler;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactAggregationScheduler;->start()V

    .line 498
    return-void

    .line 441
    :cond_0
    const-string v2, "UPDATE contacts SET name_raw_contact_id=?, photo_id=?, photo_file_id=?, send_to_voicemail=?, custom_ringtone=?, last_time_contacted=?, times_contacted=?, starred=?, has_phone_number=?, lookup=?  , contact_is_read_only =?, single_is_restricted=?, ext_account_Type=?,vip=?,display_name=?  WHERE _id=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    .line 442
    const-string v2, "INSERT INTO contacts (name_raw_contact_id, photo_id, photo_file_id, send_to_voicemail, custom_ringtone, last_time_contacted, times_contacted, starred, has_phone_number, lookup, contact_is_read_only, single_is_restricted, ext_account_Type, vip, display_name)  VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    goto/16 :goto_0
.end method

.method private AddNoteData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "db"
    .parameter "id"
    .parameter "sourceId"
    .parameter "loginId"
    .parameter "SNType"

    .prologue
    .line 1545
    const-string v4, "data"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "data1"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "raw_contact_id"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "mimetype_id"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v7, "vnd.android.cursor.item/note"

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1549
    .local v11, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 1550
    .local v15, originalText:Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 1551
    .local v12, index:J
    const-wide/16 v16, -0x1

    .line 1552
    .local v16, raw_id:J
    if-eqz v11, :cond_1

    .line 1553
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1554
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1555
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1556
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1558
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1561
    :cond_1
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static {v15, v0, v1, v2}, Lcom/htc/util/contacts/SNLinkUtils;->appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1562
    .local v14, newNote:Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1583
    :cond_2
    :goto_0
    return-void

    .line 1566
    :cond_3
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1567
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1568
    .local v18, values:Landroid/content/ContentValues;
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-lez v3, :cond_4

    .line 1569
    const-string v3, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    const-string v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1577
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-lez v3, :cond_2

    .line 1578
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 1579
    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1580
    const-string v3, "raw_contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1572
    :cond_4
    const-string v3, "mimetype_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/note"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1573
    const-string v3, "raw_contact_id"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1574
    const-string v3, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string v3, "data"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1
.end method

.method private HtcFindMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;
    .locals 2
    .parameter "db"
    .parameter "raw_contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3536
    new-instance v0, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 3538
    .local v0, matcher:Lcom/android/providers/contacts/ContactMatcher;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    .line 3541
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private HtcQueryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20
    .parameter "qb"
    .parameter "db"
    .parameter "raw_contactId"
    .parameter "projection"
    .parameter
    .parameter "maxSuggestions"
    .parameter "filter"
    .parameter "removeFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;I",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 3494
    .local p6, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 3495
    .local v19, sb:Ljava/lang/StringBuilder;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 3496
    .local v18, raw_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v3, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3497
    const-string v3, " IN ("

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3498
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 3499
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    if-ge v13, v3, :cond_1

    .line 3500
    move-object/from16 v0, p6

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 3501
    .local v15, matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual {v15}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getRawListIds()Ljava/util/ArrayList;

    move-result-object v18

    .line 3502
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3503
    .local v16, raw_id:J
    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3504
    const-string v3, ","

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 3499
    .end local v16           #raw_id:J
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 3507
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3510
    .end local v13           #i:I
    :cond_2
    const-string v3, ")"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3511
    const-string v3, " AND "

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3519
    const-string v3, "aggregation_mode = 0"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AND _id <> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3524
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "_id"

    aput-object v6, v5, v3

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v3, p2

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 3527
    .local v12, cursor:Landroid/database/Cursor;
    return-object v12
.end method

.method private ProcessNoteDataForSNContacts(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 17
    .parameter "cursor"
    .parameter "db"
    .parameter "type"

    .prologue
    .line 1465
    const-wide/16 v13, 0x0

    .local v13, rawSNId:J
    const-wide/16 v15, 0x0

    .line 1466
    .local v15, rawSyncId:J
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1467
    .local v10, account1:Ljava/lang/String;
    const/4 v1, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1468
    .local v11, account2:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/util/contacts/SNLinkUtils;->isSNContacts(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1469
    invoke-static {v11}, Lcom/htc/util/contacts/SNLinkUtils;->isSyncContacts(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1470
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1471
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1480
    :cond_0
    :goto_0
    const-wide/16 v1, 0x0

    cmp-long v1, v13, v1

    if-lez v1, :cond_4

    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-lez v1, :cond_4

    .line 1481
    const-string v2, "raw_contacts"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "sourceid"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "account_type"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1485
    .local v12, c:Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1486
    .local v5, source_id:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1487
    .local v9, AccountType:Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 1488
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1489
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1490
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 1473
    .end local v5           #source_id:Ljava/lang/String;
    .end local v9           #AccountType:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    :cond_1
    invoke-static {v10}, Lcom/htc/util/contacts/SNLinkUtils;->isSyncContacts(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    invoke-static {v11}, Lcom/htc/util/contacts/SNLinkUtils;->isSNContacts(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1475
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1476
    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    goto :goto_0

    .line 1492
    .restart local v5       #source_id:Ljava/lang/String;
    .restart local v9       #AccountType:Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1495
    :cond_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1496
    invoke-static {v9}, Lcom/htc/util/contacts/SNLinkUtils;->getLoginIdOfSNAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1497
    .local v6, loginId:Ljava/lang/String;
    invoke-static {v9}, Lcom/htc/util/contacts/SNLinkUtils;->getSNType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1498
    .local v7, SNType:Ljava/lang/String;
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide v3, v15

    .line 1499
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/contacts/ContactAggregator;->AddNoteData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    .end local v5           #source_id:Ljava/lang/String;
    .end local v6           #loginId:Ljava/lang/String;
    .end local v7           #SNType:Ljava/lang/String;
    .end local v9           #AccountType:Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    :cond_4
    :goto_2
    return-void

    .restart local v5       #source_id:Ljava/lang/String;
    .restart local v6       #loginId:Ljava/lang/String;
    .restart local v7       #SNType:Ljava/lang/String;
    .restart local v9       #AccountType:Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    :cond_5
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide v3, v15

    .line 1501
    invoke-direct/range {v1 .. v7}, Lcom/android/providers/contacts/ContactAggregator;->RemoveNoteData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private RemoveNoteData(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .parameter "db"
    .parameter "id"
    .parameter "sourceId"
    .parameter "loginId"
    .parameter "SNType"

    .prologue
    .line 1508
    const-string v4, "data"

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v6, "data1"

    aput-object v6, v5, v3

    const/4 v3, 0x1

    const-string v6, "_id"

    aput-object v6, v5, v3

    const/4 v3, 0x2

    const-string v6, "raw_contact_id"

    aput-object v6, v5, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contact_id="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " AND ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "mimetype_id"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v7, "vnd.android.cursor.item/note"

    invoke-virtual {v6, v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1512
    .local v11, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 1513
    .local v15, originalText:Ljava/lang/String;
    const-wide/16 v12, -0x1

    .line 1514
    .local v12, index:J
    const-wide/16 v16, -0x1

    .line 1515
    .local v16, raw_id:J
    if-eqz v11, :cond_1

    .line 1516
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1517
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1518
    const/4 v3, 0x1

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1519
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 1521
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1524
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-lez v3, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-lez v3, :cond_2

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1525
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-static {v15, v0, v1, v2}, Lcom/htc/util/contacts/SNLinkUtils;->removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1526
    .local v14, newNote:Ljava/lang/String;
    if-eqz v14, :cond_3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1542
    .end local v14           #newNote:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1530
    .restart local v14       #newNote:Ljava/lang/String;
    :cond_3
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1531
    .local v18, values:Landroid/content/ContentValues;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1532
    const-string v3, "data1"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    const-string v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1538
    :goto_1
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->clear()V

    .line 1539
    const-string v3, "dirty"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1540
    const-string v3, "raw_contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1536
    :cond_4
    const-string v3, "data"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/ContactAggregator;)Lcom/android/providers/contacts/CommonNicknameCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mCommonNicknameCache:Lcom/android/providers/contacts/CommonNicknameCache;

    return-object v0
.end method

.method private aggregateBatch(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;[J[J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 24
    .parameter "txContext"
    .parameter "db"
    .parameter "candidates"
    .parameter "matcher"
    .parameter "rawContactIds"
    .parameter "contactIds"
    .parameter "accountTypes"
    .parameter "accountNames"
    .parameter "dataSets"

    .prologue
    .line 3709
    const/16 v20, 0x0

    .line 3710
    .local v20, lastBatch:Z
    const-wide/16 v15, 0x0

    .line 3711
    .local v15, elapsedTime:J
    const/4 v13, 0x0

    .line 3712
    .local v13, aggregatedCount:I
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/providers/contacts/ContactAggregator;->mCancel:Z

    if-nez v1, :cond_1

    const/16 v1, 0x32

    if-ge v13, v1, :cond_1

    .line 3713
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3716
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 3717
    .local v22, start:J
    rsub-int/lit8 v8, v13, 0x32

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lcom/android/providers/contacts/ContactAggregator;->findContactsToAggregate(Landroid/database/sqlite/SQLiteDatabase;[J[J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v14

    .line 3720
    .local v14, count:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/providers/contacts/ContactAggregator;->mCancel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    if-nez v14, :cond_4

    .line 3721
    :cond_0
    const/16 v20, 0x1

    .line 3746
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3750
    .end local v14           #count:I
    .end local v22           #start:J
    :cond_1
    const/16 v1, 0xabb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3751
    if-nez v13, :cond_7

    const-string v21, ""

    .line 3753
    .local v21, performance:Ljava/lang/String;
    :goto_1
    if-eqz v13, :cond_2

    .line 3754
    const-string v1, "ContactAggregator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact aggregation complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_2
    if-lez v13, :cond_3

    .line 3761
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange(Z)V

    .line 3764
    :cond_3
    if-nez v20, :cond_8

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 3725
    .end local v21           #performance:Ljava/lang/String;
    .restart local v14       #count:I
    .restart local v22       #start:J
    :cond_4
    :try_start_1
    const-string v1, "ContactAggregator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Contact aggregation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3726
    const/16 v1, 0xabb

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v22

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    neg-int v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3729
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v14, :cond_5

    .line 3730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 3732
    aget-wide v4, p5, v19

    aget-object v6, p7, v19

    aget-object v7, p8, v19

    aget-object v8, p9, v19

    aget-wide v9, p6, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v1 .. v12}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    .line 3734
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 3735
    .local v17, end:J
    sub-long v1, v17, v22

    add-long/2addr v15, v1

    .line 3736
    add-int/lit8 v13, v13, 0x1

    .line 3737
    const-wide/16 v1, 0xfa0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContendedSafely(J)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3744
    .end local v17           #end:J
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3746
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_0

    .line 3729
    .restart local v17       #end:J
    :cond_6
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 3746
    .end local v14           #count:I
    .end local v17           #end:J
    .end local v19           #i:I
    .end local v22           #start:J
    :catchall_0
    move-exception v1

    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 3751
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    int-to-long v2, v13

    div-long v2, v15, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms per contact"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1

    .line 3764
    .restart local v21       #performance:Ljava/lang/String;
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method private declared-synchronized aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 23
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"
    .parameter "currentContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    .line 862
    monitor-enter p0

    const-wide/16 v5, 0x0

    cmp-long v5, p3, v5

    if-gtz v5, :cond_1

    .line 1092
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 869
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 870
    .local v16, beginTime:J
    const/4 v14, 0x0

    .line 872
    .local v14, agg_split:Z
    const/4 v15, 0x0

    .line 874
    .local v15, aggregationMode:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 875
    .local v13, aggModeObject:Ljava/lang/Integer;
    if-eqz v13, :cond_2

    .line 876
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 879
    :cond_2
    const-wide/16 v10, -0x1

    .line 880
    .local v10, contactId:J
    const-wide/16 v18, -0x1

    .line 882
    .local v18, contactIdToSplit:J
    if-nez v15, :cond_10

    .line 883
    invoke-virtual/range {p10 .. p10}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 884
    invoke-virtual/range {p11 .. p11}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 886
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v10

    .line 889
    invoke-virtual/range {p11 .. p11}, Lcom/android/providers/contacts/ContactMatcher;->needSplit()Z

    move-result v14

    .line 892
    const-wide/16 v5, -0x1

    cmp-long v5, v10, v5

    if-nez v5, :cond_4

    .line 896
    const-wide/16 v5, 0x0

    cmp-long v5, p8, v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p2

    move-wide/from16 v1, p8

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 898
    invoke-direct/range {v5 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    .end local v10           #contactId:J
    move-result-wide v10

    .line 928
    .restart local v10       #contactId:J
    :cond_4
    const-wide/16 v5, -0x1

    cmp-long v5, v5, v10

    if-eqz v5, :cond_5

    const-wide/16 v5, 0x0

    cmp-long v5, v5, v10

    if-gez v5, :cond_5

    .line 931
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdMarkedForAggregated:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    :cond_5
    const-wide/16 v20, 0x0

    .line 937
    .local v20, currentContactContentsCount:J
    const-wide/16 v5, 0x0

    cmp-long v5, p8, v5

    if-eqz v5, :cond_6

    .line 938
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p8

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 939
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x2

    move-wide/from16 v0, p3

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 940
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactCountQuery:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v20

    .line 945
    :cond_6
    const-wide/16 v5, -0x1

    cmp-long v5, v10, v5

    if-nez v5, :cond_8

    const-wide/16 v5, 0x0

    cmp-long v5, p8, v5

    if-eqz v5, :cond_8

    const-wide/16 v5, 0x0

    cmp-long v5, v20, v5

    if-eqz v5, :cond_7

    const/4 v5, 0x2

    if-eq v15, v5, :cond_7

    if-nez v14, :cond_8

    .line 951
    :cond_7
    move-wide/from16 v10, p8

    .line 955
    :cond_8
    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-lez v5, :cond_11

    cmp-long v5, v10, p8

    if-nez v5, :cond_11

    .line 958
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->markAggregated(J)V

    .line 961
    sget-wide v5, Lcom/android/providers/contacts/ContactsProvider2;->LinkMethod:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_9

    .line 962
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10, v11, v5}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)Z

    .line 963
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    sget v6, Lcom/android/providers/contacts/ContactAggregator$ContactReplaceSqlStatement;->CONTACT_ID:I

    invoke-virtual {v5, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 964
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 965
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 967
    sget-object v5, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v5, v10, v11}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 1028
    :cond_9
    :goto_1
    const/16 v5, 0x32

    move-object/from16 v0, p11

    invoke-virtual {v0, v5}, Lcom/android/providers/contacts/ContactMatcher;->pickMyContactImportId(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1031
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-static {v5, v10, v11, v0, v1}, Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;JJ)V

    .line 1036
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    move-wide/from16 v0, p3

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 1037
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    move-wide/from16 v0, p3

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1040
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionMarkDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p3

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionMarkDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1044
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionMarkInsert:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p3

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mSuggestionMarkInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1050
    :cond_b
    sget-wide v5, Lcom/android/providers/contacts/ContactsProvider2;->LinkMethod:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_d

    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->isSNLogin()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static/range {p5 .. p5}, Lcom/android/providers/contacts/HtcUtils/Utils;->IsSupportSourceIdMatchedSNContact(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1052
    :cond_c
    invoke-virtual/range {p11 .. p11}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    move-object/from16 v12, p11

    .line 1053
    invoke-direct/range {v6 .. v12}, Lcom/android/providers/contacts/ContactAggregator;->lookupNoteAndSourceIdMatches(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1054
    .local v12, mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_d

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 1055
    invoke-direct/range {v7 .. v12}, Lcom/android/providers/contacts/ContactAggregator;->joinNoteAndSourceIdMatchContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)V

    .line 1060
    .end local v12           #mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v5}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v10, v11}, Lcom/htc/util/contacts/DefaultActionUtils;->getDefaultAction(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v22

    .line 1061
    .local v22, default_action:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1062
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mDefaultActionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mDefaultActionUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mDefaultActionUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1074
    :cond_e
    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-lez v5, :cond_f

    .line 1076
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/providers/contacts/ContactAggregator;->setPresenceContactId(JJ)V

    .line 1079
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    .line 1086
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->fixSuperPrimaryOfContactData(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 862
    .end local v10           #contactId:J
    .end local v13           #aggModeObject:Ljava/lang/Integer;
    .end local v14           #agg_split:Z
    .end local v15           #aggregationMode:I
    .end local v16           #beginTime:J
    .end local v18           #contactIdToSplit:J
    .end local v20           #currentContactContentsCount:J
    .end local v22           #default_action:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 912
    .restart local v10       #contactId:J
    .restart local v13       #aggModeObject:Ljava/lang/Integer;
    .restart local v14       #agg_split:Z
    .restart local v15       #aggregationMode:I
    .restart local v16       #beginTime:J
    .restart local v18       #contactIdToSplit:J
    :cond_10
    const/4 v5, 0x3

    if-ne v15, v5, :cond_4

    .line 915
    move-wide/from16 v10, p8

    .line 916
    const-wide/16 v5, 0x0

    cmp-long v5, v10, v5

    if-lez v5, :cond_0

    .line 917
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v7, p2

    move-wide/from16 v8, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsProvider2;->fixSuperPrimaryOfContactData(Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JJ)V

    goto/16 :goto_0

    .line 973
    .restart local v20       #currentContactContentsCount:J
    :cond_11
    const-wide/16 v5, -0x1

    cmp-long v5, v10, v5

    if-nez v5, :cond_12

    .line 975
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 976
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)Z

    .line 978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v10

    .line 979
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 980
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 983
    sget-object v5, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v5, v10, v11}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyInsertContact(J)V

    .line 991
    const-wide/16 v5, 0x0

    cmp-long v5, v20, v5

    if-lez v5, :cond_9

    .line 992
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto/16 :goto_1

    .line 996
    :cond_12
    const-wide/16 v5, 0x0

    cmp-long v5, v20, v5

    if-nez v5, :cond_13

    .line 998
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p8

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 999
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1002
    sget-object v5, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-wide/from16 v0, p8

    invoke-virtual {v5, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyDeleteContact(J)V

    .line 1006
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, p8

    invoke-virtual {v5, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1007
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1010
    :cond_13
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2, v10, v11}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 1011
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10, v11, v5}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)Z

    .line 1012
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    sget v6, Lcom/android/providers/contacts/ContactAggregator$ContactReplaceSqlStatement;->CONTACT_ID:I

    invoke-virtual {v5, v6, v10, v11}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1014
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 1021
    sget-object v5, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v5, v10, v11}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)Z
    .locals 63
    .parameter "db"
    .parameter "sql"
    .parameter "sqlArgs"
    .parameter "statement"

    .prologue
    .line 2639
    const-wide/16 v39, -0x1

    .line 2640
    .local v39, currentRawContactId:J
    const-wide/16 v27, -0x1

    .line 2641
    .local v27, bestPhotoId:J
    const-wide/16 v25, 0x0

    .line 2642
    .local v25, bestPhotoFileId:J
    const/16 v24, 0x0

    .line 2643
    .local v24, bestPhotoEntry:Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
    const/16 v45, 0x0

    .line 2644
    .local v45, foundSuperPrimaryPhoto:Z
    const/16 v57, -0x1

    .line 2645
    .local v57, photoPriority:I
    const/16 v61, 0x0

    .line 2646
    .local v61, totalRowCount:I
    const/16 v33, 0x0

    .line 2647
    .local v33, contactSendToVoicemail:I
    const/16 v30, 0x0

    .line 2648
    .local v30, contactCustomRingtone:Ljava/lang/String;
    const-wide/16 v31, 0x0

    .line 2649
    .local v31, contactLastTimeContacted:J
    const/16 v35, 0x0

    .line 2650
    .local v35, contactTimesContacted:I
    const/16 v34, 0x0

    .line 2651
    .local v34, contactStarred:I
    const/16 v46, 0x0

    .line 2653
    .local v46, hasPhoneNumber:I
    const/16 v37, 0x1

    .line 2654
    .local v37, contact_is_read_only:I
    const/16 v38, 0x1

    .line 2656
    .local v38, contact_restricted:I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 2659
    .local v10, lookupKey:Ljava/lang/StringBuilder;
    const/16 v21, -0x1

    .line 2660
    .local v21, bestAccountTypeIndex:I
    const/16 v22, 0x0

    .line 2661
    .local v22, bestAcountType:Ljava/lang/String;
    const/16 v23, -0x1

    .line 2662
    .local v23, bestPhotoAccount:I
    const/16 v36, 0x0

    .line 2667
    .local v36, contactVIP:I
    const/16 v20, 0x0

    .line 2673
    .local v20, bestAccountName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 2675
    invoke-virtual/range {p1 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .line 2676
    .local v29, c:Landroid/database/Cursor;
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v48

    .line 2678
    .local v48, isContactExisted:Ljava/lang/Boolean;
    if-eqz v29, :cond_14

    :try_start_0
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_14

    .line 2679
    :cond_0
    :goto_0
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2680
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2681
    .local v4, rawContactId:J
    cmp-long v3, v4, v39

    if-eqz v3, :cond_b

    .line 2682
    move-wide/from16 v39, v4

    .line 2683
    add-int/lit8 v61, v61, 0x1

    .line 2686
    const/4 v3, 0x3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 2687
    .local v19, accountType:Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    .line 2688
    .local v43, dataSet:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2693
    .local v8, accountTypeAndDataSet:Ljava/lang/String;
    :goto_1
    const/4 v3, 0x1

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 2694
    .local v6, displayName:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2695
    .local v7, displayNameSource:I
    const/16 v3, 0xc

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    .line 2698
    .local v54, nameVerified:I
    const/4 v3, 0x4

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 2705
    .local v18, accountName:Ljava/lang/String;
    if-eqz v54, :cond_e

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/providers/contacts/ContactAggregator;->processDisplayNameCandidate(JLjava/lang/String;ILjava/lang/String;Z)V

    .line 2711
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2712
    const/16 v3, 0x8

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_f

    const/16 v58, 0x1

    .line 2714
    .local v58, sendToVoicemail:Z
    :goto_3
    if-eqz v58, :cond_1

    .line 2715
    add-int/lit8 v33, v33, 0x1

    .line 2720
    .end local v58           #sendToVoicemail:Z
    :cond_1
    const/16 v3, 0x11

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2721
    const/16 v3, 0xe

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 2722
    .local v53, mimetypeId:I
    move/from16 v0, v53

    int-to-long v11, v0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdFave:J

    cmp-long v3, v11, v13

    if-nez v3, :cond_2

    .line 2723
    const/16 v3, 0x11

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_10

    const/16 v50, 0x1

    .line 2725
    .local v50, isVIP:Z
    :goto_4
    if-eqz v50, :cond_2

    .line 2726
    add-int/lit8 v36, v36, 0x1

    .line 2732
    .end local v50           #isVIP:Z
    .end local v53           #mimetypeId:I
    :cond_2
    if-nez v30, :cond_3

    const/4 v3, 0x7

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2734
    const/4 v3, 0x7

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2737
    :cond_3
    const/16 v3, 0x9

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    .line 2738
    .local v51, lastTimeContacted:J
    cmp-long v3, v51, v31

    if-lez v3, :cond_4

    .line 2739
    move-wide/from16 v31, v51

    .line 2742
    :cond_4
    const/16 v3, 0xa

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v60

    .line 2743
    .local v60, timesContacted:I
    move/from16 v0, v60

    move/from16 v1, v35

    if-le v0, v1, :cond_5

    .line 2744
    move/from16 v35, v60

    .line 2747
    :cond_5
    const/16 v3, 0xb

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_6

    .line 2748
    const/16 v34, 0x1

    .line 2752
    :cond_6
    const/16 v3, 0x12

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_7

    .line 2753
    const/16 v37, 0x0

    .line 2756
    :cond_7
    const/16 v3, 0x13

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_8

    .line 2757
    const/16 v38, 0x0

    .line 2765
    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->findAutoExtAccountTypeIndex(Ljava/lang/String;)I

    move-result v44

    .line 2767
    .local v44, extIndex:I
    const/16 v17, -0x2

    .line 2769
    .local v17, UNKNOW_READONLY_ACCOUNT_TYPE:I
    sget-object v3, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->mAutoLinkExtAccountTypePriority:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v44

    if-lt v0, v3, :cond_9

    .line 2770
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/providers/contacts/ContactsProvider2;->isReadyOnlyAccountType(Ljava/lang/String;)Z

    move-result v49

    .line 2771
    .local v49, isReadOnly:Z
    if-eqz v49, :cond_9

    .line 2772
    const/16 v44, -0x2

    .line 2776
    .end local v49           #isReadOnly:Z
    :cond_9
    const/4 v3, -0x1

    move/from16 v0, v21

    if-ne v0, v3, :cond_11

    .line 2777
    move/from16 v21, v44

    .line 2778
    move-object/from16 v22, v19

    .line 2780
    move-object/from16 v20, v18

    .line 2793
    :cond_a
    :goto_5
    const/4 v3, 0x4

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x6

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v9, p0

    move-object v11, v8

    move-wide v13, v4

    move-object/from16 v16, v6

    invoke-virtual/range {v9 .. v16}, Lcom/android/providers/contacts/ContactAggregator;->appendLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2802
    .end local v6           #displayName:Ljava/lang/String;
    .end local v7           #displayNameSource:I
    .end local v8           #accountTypeAndDataSet:Ljava/lang/String;
    .end local v17           #UNKNOW_READONLY_ACCOUNT_TYPE:I
    .end local v18           #accountName:Ljava/lang/String;
    .end local v19           #accountType:Ljava/lang/String;
    .end local v43           #dataSet:Ljava/lang/String;
    .end local v44           #extIndex:I
    .end local v51           #lastTimeContacted:J
    .end local v54           #nameVerified:I
    .end local v60           #timesContacted:I
    :cond_b
    const/16 v3, 0xd

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2803
    const/16 v3, 0xd

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    .line 2804
    .local v41, dataId:J
    const/16 v3, 0x10

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 2805
    .local v55, photoFileId:J
    const/16 v3, 0xe

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v53

    .line 2806
    .restart local v53       #mimetypeId:I
    const/16 v3, 0xf

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_12

    const/16 v59, 0x1

    .line 2807
    .local v59, superPrimary:Z
    :goto_6
    move/from16 v0, v53

    int-to-long v11, v0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhoto:J

    cmp-long v3, v11, v13

    if-nez v3, :cond_13

    .line 2826
    const/16 v47, -0x1

    .line 2827
    .local v47, index:I
    const/4 v3, 0x3

    move-object/from16 v0, v29

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    .line 2829
    .local v62, type:Ljava/lang/String;
    invoke-static/range {v62 .. v62}, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->findAutoPhotoIndex(Ljava/lang/String;)I

    move-result v47

    .line 2831
    if-nez v45, :cond_0

    if-nez v59, :cond_c

    move/from16 v0, v47

    move/from16 v1, v23

    if-lt v0, v1, :cond_0

    .line 2834
    :cond_c
    move/from16 v23, v47

    .line 2835
    move-wide/from16 v27, v41

    .line 2836
    move-wide/from16 v25, v55

    .line 2837
    or-int v45, v45, v59

    goto/16 :goto_0

    .end local v41           #dataId:J
    .end local v47           #index:I
    .end local v53           #mimetypeId:I
    .end local v55           #photoFileId:J
    .end local v59           #superPrimary:Z
    .end local v62           #type:Ljava/lang/String;
    .restart local v19       #accountType:Ljava/lang/String;
    .restart local v43       #dataSet:Ljava/lang/String;
    :cond_d
    move-object/from16 v8, v19

    .line 2688
    goto/16 :goto_1

    .line 2705
    .restart local v6       #displayName:Ljava/lang/String;
    .restart local v7       #displayNameSource:I
    .restart local v8       #accountTypeAndDataSet:Ljava/lang/String;
    .restart local v18       #accountName:Ljava/lang/String;
    .restart local v54       #nameVerified:I
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2712
    :cond_f
    const/16 v58, 0x0

    goto/16 :goto_3

    .line 2723
    .restart local v53       #mimetypeId:I
    :cond_10
    const/16 v50, 0x0

    goto/16 :goto_4

    .line 2783
    .end local v53           #mimetypeId:I
    .restart local v17       #UNKNOW_READONLY_ACCOUNT_TYPE:I
    .restart local v44       #extIndex:I
    .restart local v51       #lastTimeContacted:J
    .restart local v60       #timesContacted:I
    :cond_11
    move/from16 v0, v44

    move/from16 v1, v21

    if-le v0, v1, :cond_a

    const/4 v3, -0x1

    move/from16 v0, v44

    if-le v0, v3, :cond_a

    .line 2784
    move/from16 v21, v44

    .line 2785
    move-object/from16 v22, v19

    .line 2787
    move-object/from16 v20, v18

    goto/16 :goto_5

    .line 2806
    .end local v6           #displayName:Ljava/lang/String;
    .end local v7           #displayNameSource:I
    .end local v8           #accountTypeAndDataSet:Ljava/lang/String;
    .end local v17           #UNKNOW_READONLY_ACCOUNT_TYPE:I
    .end local v18           #accountName:Ljava/lang/String;
    .end local v19           #accountType:Ljava/lang/String;
    .end local v43           #dataSet:Ljava/lang/String;
    .end local v44           #extIndex:I
    .end local v51           #lastTimeContacted:J
    .end local v54           #nameVerified:I
    .end local v60           #timesContacted:I
    .restart local v41       #dataId:J
    .restart local v53       #mimetypeId:I
    .restart local v55       #photoFileId:J
    :cond_12
    const/16 v59, 0x0

    goto :goto_6

    .line 2841
    .restart local v59       #superPrimary:Z
    :cond_13
    move/from16 v0, v53

    int-to-long v11, v0

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdPhone:J

    cmp-long v3, v11, v13

    if-nez v3, :cond_0

    .line 2842
    const/16 v46, 0x1

    goto/16 :goto_0

    .line 2847
    .end local v4           #rawContactId:J
    .end local v41           #dataId:J
    .end local v53           #mimetypeId:I
    .end local v55           #photoFileId:J
    .end local v59           #superPrimary:Z
    :cond_14
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v48

    .line 2850
    :cond_15
    if-eqz v29, :cond_16

    .line 2851
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    .line 2855
    :cond_16
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v11, v9, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2858
    const-wide/16 v11, -0x1

    cmp-long v3, v27, v11

    if-eqz v3, :cond_19

    .line 2859
    const/4 v3, 0x2

    move-object/from16 v0, p4

    move-wide/from16 v1, v27

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2864
    :goto_7
    const-wide/16 v11, 0x0

    cmp-long v3, v25, v11

    if-eqz v3, :cond_1a

    .line 2865
    const/4 v3, 0x3

    move-object/from16 v0, p4

    move-wide/from16 v1, v25

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2870
    :goto_8
    const/4 v3, 0x4

    move/from16 v0, v61

    move/from16 v1, v33

    if-ne v0, v1, :cond_1b

    if-nez v36, :cond_1b

    const-wide/16 v11, 0x1

    :goto_9
    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2872
    const/4 v3, 0x5

    move-object/from16 v0, p4

    move-object/from16 v1, v30

    invoke-static {v0, v3, v1}, Landroid/database/DatabaseUtils;->bindObjectToProgram(Landroid/database/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 2874
    const/4 v3, 0x6

    move-object/from16 v0, p4

    move-wide/from16 v1, v31

    invoke-virtual {v0, v3, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2876
    const/4 v3, 0x7

    move/from16 v0, v35

    int-to-long v11, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2878
    const/16 v3, 0x8

    move/from16 v0, v34

    int-to-long v11, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2880
    const/16 v3, 0x9

    move/from16 v0, v46

    int-to-long v11, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2882
    const/16 v3, 0xa

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 2888
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2889
    const/16 v3, 0xd

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2898
    :goto_a
    const/16 v3, 0xb

    move/from16 v0, v37

    int-to-long v11, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2899
    const/16 v3, 0xc

    move/from16 v0, v38

    int-to-long v11, v0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2905
    sget-boolean v3, Lcom/android/providers/contacts/HtcUtils/Constants;->IsSIMSDNEnabled:Z

    if-eqz v3, :cond_17

    .line 2906
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2907
    const/16 v3, 0x10

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2916
    :cond_17
    :goto_b
    const/16 v3, 0xe

    const-wide/16 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v11, v12}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2920
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-object v3, v3, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 2921
    const/16 v3, 0xf

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 2926
    :goto_c
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 2850
    :catchall_0
    move-exception v3

    if-eqz v29, :cond_18

    .line 2851
    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v3

    .line 2861
    :cond_19
    const/4 v3, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_7

    .line 2867
    :cond_1a
    const/4 v3, 0x3

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto/16 :goto_8

    .line 2870
    :cond_1b
    const-wide/16 v11, 0x0

    goto/16 :goto_9

    .line 2891
    :cond_1c
    const/16 v3, 0xd

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_a

    .line 2909
    :cond_1d
    const/16 v3, 0x10

    move-object/from16 v0, p4

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_b

    .line 2923
    :cond_1e
    const/16 v3, 0xf

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-object v9, v9, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_c
.end method

.method private containsRawContactsFromAccount(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "db"
    .parameter "contactId"
    .parameter "accountType"
    .parameter "accountName"
    .parameter "dataSet"

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1103
    if-nez p4, :cond_0

    .line 1104
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type IS NULL  AND account_name IS NULL  AND data_set IS NULL"

    .line 1109
    .local v2, query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    .line 1110
    .local v0, args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1133
    :goto_0
    invoke-virtual {p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1135
    .local v1, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1136
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 1138
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return v3

    .line 1111
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :cond_0
    if-nez p6, :cond_1

    .line 1112
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type=? AND account_name=? AND data_set IS NULL"

    .line 1117
    .restart local v2       #query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    .line 1118
    .restart local v0       #args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1119
    aput-object p4, v0, v3

    .line 1120
    aput-object p5, v0, v6

    goto :goto_0

    .line 1122
    .end local v0           #args:[Ljava/lang/String;
    .end local v2           #query:Ljava/lang/String;
    :cond_1
    const-string v2, "SELECT count(_id) FROM raw_contacts WHERE contact_id=? AND account_type=? AND account_name=? AND data_set=?"

    .line 1127
    .restart local v2       #query:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs4:[Ljava/lang/String;

    .line 1128
    .restart local v0       #args:[Ljava/lang/String;
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 1129
    aput-object p4, v0, v3

    .line 1130
    aput-object p5, v0, v6

    .line 1131
    const/4 v5, 0x3

    aput-object p6, v0, v5

    goto :goto_0

    .restart local v1       #cursor:Landroid/database/Cursor;
    :cond_2
    move v3, v4

    .line 1136
    goto :goto_1

    .line 1138
    :catchall_0
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private createNewContactForRawContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 5
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 1198
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1199
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)Z

    .line 1201
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 1202
    .local v0, contactId:J
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 1203
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 1204
    invoke-direct {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setPresenceContactId(JJ)V

    .line 1205
    invoke-virtual {p0, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    .line 1206
    return-void
.end method

.method private findContactsToAggregate(Landroid/database/sqlite/SQLiteDatabase;[J[J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 11
    .parameter "db"
    .parameter "rawContactIds"
    .parameter "contactIds"
    .parameter "accountTypes"
    .parameter "accountNames"
    .parameter "dataSets"
    .parameter "limit"

    .prologue
    .line 3774
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$ScheduleAggregationQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "aggregation_needed=1 AND aggregation_mode=0 AND contact_id NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3778
    .local v9, c:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 3780
    .local v10, count:I
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3781
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, p2, v10

    .line 3782
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, p3, v10

    .line 3783
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p4, v10

    .line 3784
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p5, v10

    .line 3785
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p6, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3786
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3789
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3791
    return v10

    .line 3789
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;
    .locals 11
    .parameter "db"
    .parameter "contactId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;>;"
    const/4 v4, 0x0

    .line 3563
    new-instance v9, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    invoke-direct {v9, v4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 3564
    .local v9, candidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
    new-instance v10, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v10}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 3567
    .local v10, matcher:Lcom/android/providers/contacts/ContactMatcher;
    invoke-virtual {v10, p2, p3}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V

    .line 3569
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 3570
    :cond_0
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3573
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3574
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .local v2, rawContactId:J
    move-object v0, p0

    move-object v1, p1

    move-object v4, v9

    move-object v5, v10

    .line 3575
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3579
    .end local v2           #rawContactId:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3586
    .end local v8           #c:Landroid/database/Cursor;
    :goto_1
    const/16 v0, 0x3c

    invoke-virtual {v10, v0}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3582
    :cond_2
    invoke-direct {p0, p1, v9, v10, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private getPhotoMetadata(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
    .locals 11
    .parameter "db"
    .parameter "photoFileId"

    .prologue
    .line 3141
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 3144
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getMaxThumbnailPhotoDim()I

    move-result v10

    .line 3145
    .local v10, thumbDim:I
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    mul-int v1, v10, v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V

    .line 3160
    .end local v10           #thumbDim:I
    :goto_0
    return-object v0

    .line 3147
    :cond_0
    const-string v1, "photo_files"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$PhotoFileQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "_id=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3150
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3151
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3152
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    mul-int v9, v0, v1

    .line 3154
    .local v9, pixelCount:I
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v9, v1, v2}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3157
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v9           #pixelCount:I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3160
    new-instance v0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V

    goto :goto_0

    .line 3157
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private hasHigherPhotoPriority(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;ILcom/android/providers/contacts/ContactAggregator$PhotoEntry;I)Z
    .locals 2
    .parameter "photoEntry"
    .parameter "priority"
    .parameter "bestPhotoEntry"
    .parameter "bestPriority"

    .prologue
    .line 2630
    invoke-virtual {p1, p3}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->compareTo(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;)I

    move-result v0

    .line 2631
    .local v0, photoComparison:I
    if-ltz v0, :cond_0

    if-nez v0, :cond_1

    if-le p2, p4, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private joinNoteAndSourceIdMatchContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)V
    .locals 17
    .parameter "txContext"
    .parameter "db"
    .parameter "ContactId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/contacts/TransactionContext;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2330
    .local p5, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2331
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v4, "contact_id"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2332
    const-string v4, " IN ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2333
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2334
    .local v14, id:J
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2335
    const-string v4, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2337
    .end local v14           #id:J
    :cond_0
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2338
    const-string v4, ")"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2339
    const-string v5, "raw_contacts"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "_id"

    aput-object v7, v6, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p2

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2341
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_2

    .line 2342
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2343
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v4, v5, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->setContactIdAndMarkAggregated(JJ)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdMarkedForAggregated:Ljava/util/ArrayList;

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2350
    :cond_1
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2354
    :cond_2
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2355
    .restart local v14       #id:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactDelete:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2359
    sget-object v4, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v4, v14, v15}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyDeleteContact(J)V

    goto :goto_2

    .line 2365
    .end local v14           #id:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)Z

    .line 2366
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    sget v5, Lcom/android/providers/contacts/ContactAggregator$ContactReplaceSqlStatement;->CONTACT_ID:I

    move-wide/from16 v0, p3

    invoke-virtual {v4, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 2367
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 2368
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 2371
    sget-object v4, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-wide/from16 v0, p3

    invoke-virtual {v4, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    .line 2373
    return-void
.end method

.method private loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "structuredNameBased"

    .prologue
    .line 1675
    invoke-virtual {p4}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 1676
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1677
    const-string v1, "name_lookup"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupQuery;->COLUMNS:[Ljava/lang/String;

    if-eqz p5, :cond_0

    const-string v3, "raw_contact_id=? AND name_type IN (0,1,2)"

    :goto_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1683
    .local v8, c:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1685
    .local v9, normalizedName:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1686
    .local v10, type:I
    invoke-virtual {p4, v9, v10}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->add(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1689
    .end local v9           #normalizedName:Ljava/lang/String;
    .end local v10           #type:I
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1677
    .end local v8           #c:Landroid/database/Cursor;
    :cond_0
    const-string v3, "raw_contact_id=?"

    goto :goto_0

    .line 1689
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1691
    return-void
.end method

.method private lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 11
    .parameter "db"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x2

    .line 2067
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 2068
    .local v9, firstLetters:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 2069
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;
    invoke-static {p2}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$300(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 2070
    .local v7, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    iget-object v0, v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v5, :cond_0

    .line 2071
    iget-object v0, v7, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 2072
    .local v8, firstLetter:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2073
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(normalized_name GLOB \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*\') AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "name_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2080
    .local v2, selection:Ljava/lang/String;
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 2068
    .end local v2           #selection:Ljava/lang/String;
    .end local v8           #firstLetter:Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2086
    .end local v7           #candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    :cond_1
    return-void
.end method

.method private lookupNoteAndSourceIdMatches(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;)Ljava/util/ArrayList;
    .locals 16
    .parameter "db"
    .parameter "rawContactId"
    .parameter "contactId"
    .parameter "matcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "JJ",
            "Lcom/android/providers/contacts/ContactMatcher;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2147
    const/4 v15, 0x0

    .line 2148
    .local v15, source_id:Ljava/lang/String;
    const/4 v10, 0x0

    .line 2149
    .local v10, AccountType:Ljava/lang/String;
    const-wide/16 v13, -0x1

    .line 2150
    .local v13, selfId:J
    const/4 v12, 0x0

    .line 2151
    .local v12, isSNOfNoteContact:Z
    const-string v3, "raw_contacts"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "sourceid"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "account_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "contact_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

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

    move-result-object v11

    .line 2154
    .local v11, c_self:Landroid/database/Cursor;
    if-eqz v11, :cond_4

    .line 2155
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 2156
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2157
    .end local v15           #source_id:Ljava/lang/String;
    .local v9, source_id:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2158
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2159
    invoke-static {v10}, Lcom/htc/util/contacts/SNLinkUtils;->isSNContacts(Ljava/lang/String;)Z

    move-result v12

    .line 2161
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2164
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v13, v2

    if-ltz v2, :cond_0

    cmp-long v2, v13, p4

    if-eqz v2, :cond_1

    .line 2165
    :cond_0
    const/4 v2, 0x0

    .line 2182
    :goto_1
    return-object v2

    .line 2167
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2168
    if-eqz v12, :cond_3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    .line 2170
    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->lookupNoteMatchesForSNContacts(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    :goto_2
    invoke-static {v10}, Lcom/android/providers/contacts/HtcUtils/Utils;->IsSupportSourceIdMatchedSNContact(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    .line 2178
    invoke-direct/range {v2 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->lookupSourceIdMatchesForSNContacts(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    :cond_2
    invoke-virtual/range {p6 .. p6}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_1

    .line 2173
    :cond_3
    invoke-direct/range {p0 .. p6}, Lcom/android/providers/contacts/ContactAggregator;->lookupNoteMatchesForNormalContacts(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;)V

    goto :goto_2

    .end local v9           #source_id:Ljava/lang/String;
    .restart local v15       #source_id:Ljava/lang/String;
    :cond_4
    move-object v9, v15

    .end local v15           #source_id:Ljava/lang/String;
    .restart local v9       #source_id:Ljava/lang/String;
    goto :goto_0
.end method

.method private lookupNoteMatchesForNormalContacts(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;)V
    .locals 24
    .parameter "db"
    .parameter "rawContactId"
    .parameter "contactId"
    .parameter "matcher"

    .prologue
    .line 2262
    const-string v3, "data"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "data1"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "mimetype_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "vnd.android.cursor.item/note"

    invoke-virtual {v5, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 2266
    .local v11, c:Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 2267
    .local v18, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-eqz v11, :cond_3

    .line 2269
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2270
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 2271
    .local v14, data:Ljava/lang/String;
    invoke-static {v14}, Lcom/htc/util/contacts/SNLinkUtils;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 2272
    .local v23, temp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-eqz v23, :cond_0

    .line 2273
    if-nez v18, :cond_1

    .line 2274
    move-object/from16 v18, v23

    .line 2275
    goto :goto_0

    .line 2277
    :cond_1
    if-eqz v18, :cond_0

    .line 2278
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2283
    .end local v14           #data:Ljava/lang/String;
    .end local v23           #temp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 2287
    :cond_3
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2288
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 2289
    .local v21, sb:Ljava/lang/StringBuilder;
    const-string v2, "sourceid IN (\'"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2290
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 2291
    .local v17, l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2292
    const-string v2, "\',\'"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2294
    .end local v17           #l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2295
    const-string v2, ")"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2297
    const-string v3, "raw_contacts"

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "sourceid"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "account_type"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, "contact_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "aggregation_needed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "=0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "contact_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "<>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

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

    move-result-object v20

    .line 2302
    .local v20, raw_c:Landroid/database/Cursor;
    if-eqz v20, :cond_7

    .line 2303
    :cond_5
    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2304
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2305
    .local v22, source_id:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2306
    .local v10, AccountType:Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/htc/util/contacts/SNLinkUtils;->findPositionByUserId(Ljava/util/List;Ljava/lang/String;)I

    move-result v16

    .line 2307
    .local v16, index:I
    if-ltz v16, :cond_5

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_5

    .line 2309
    invoke-static {v10}, Lcom/htc/util/contacts/SNLinkUtils;->getLoginIdOfSNAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2311
    .local v19, loginId:Ljava/lang/String;
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 2312
    .local v14, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v2, v14, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v14, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2313
    const/4 v2, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 2315
    .local v12, contact_id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_5

    cmp-long v2, v12, p4

    if-eqz v2, :cond_5

    .line 2316
    move-object/from16 v0, p6

    invoke-virtual {v0, v12, v13}, Lcom/android/providers/contacts/ContactMatcher;->keepIn(J)V

    goto :goto_2

    .line 2322
    .end local v10           #AccountType:Ljava/lang/String;
    .end local v12           #contact_id:J
    .end local v14           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v16           #index:I
    .end local v19           #loginId:Ljava/lang/String;
    .end local v22           #source_id:Ljava/lang/String;
    :cond_6
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2325
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v20           #raw_c:Landroid/database/Cursor;
    .end local v21           #sb:Ljava/lang/StringBuilder;
    :cond_7
    return-void
.end method

.method private lookupNoteMatchesForSNContacts(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "db"
    .parameter "rawContactId"
    .parameter "contactId"
    .parameter "matcher"
    .parameter "source_id"
    .parameter "AccountType"

    .prologue
    .line 2187
    invoke-static/range {p8 .. p8}, Lcom/htc/util/contacts/SNLinkUtils;->getLoginIdOfSNAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2189
    .local v17, loginId:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2222
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    const-string v3, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id) JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id)"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "data1"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string v5, "contact_id"

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id<>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "contact_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "<>"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "mimetype_id"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdNote:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "aggregation_needed"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "=0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "aggregation_mode"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " <> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2200
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    .line 2202
    :cond_2
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2203
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2204
    .local v13, data:Ljava/lang/String;
    invoke-static {v13}, Lcom/htc/util/contacts/SNLinkUtils;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v16

    .line 2205
    .local v16, list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    if-eqz v16, :cond_2

    .line 2206
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 2207
    .local v15, l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v2, v15, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v17, :cond_3

    iget-object v2, v15, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2208
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 2210
    .local v11, contact_id:J
    const-wide/16 v2, 0x0

    cmp-long v2, v11, v2

    if-lez v2, :cond_3

    cmp-long v2, v11, p4

    if-eqz v2, :cond_3

    .line 2211
    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/ContactMatcher;->keepIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 2219
    .end local v11           #contact_id:J
    .end local v13           #data:Ljava/lang/String;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #l:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v16           #list:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private lookupSourceIdMatchesForSNContacts(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "db"
    .parameter "rawContactId"
    .parameter "contactId"
    .parameter "matcher"
    .parameter "source_id"
    .parameter "AccountType"

    .prologue
    .line 2226
    const/4 v12, 0x0

    .line 2227
    .local v12, mappingAccountType:Ljava/lang/String;
    const-string v1, "com.htc.htctwitter"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2228
    const-string v12, "com.twitter.android.auth.login"

    .line 2234
    :cond_0
    :goto_0
    if-nez v12, :cond_3

    .line 2259
    :cond_1
    :goto_1
    return-void

    .line 2229
    :cond_2
    const-string v1, "com.twitter.android.auth.login"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2230
    const-string v12, "com.htc.htctwitter"

    goto :goto_0

    .line 2238
    :cond_3
    const-string v2, "raw_contacts"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "contact_id"

    aput-object v4, v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sourceid = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "account_type"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = \'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "aggregation_needed"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=0"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "aggregation_mode"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " <> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2245
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 2247
    :cond_4
    :goto_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2248
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 2250
    .local v10, contact_id:J
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-lez v1, :cond_4

    cmp-long v1, v10, p4

    if-eqz v1, :cond_4

    .line 2251
    move-object/from16 v0, p6

    invoke-virtual {v0, v10, v11}, Lcom/android/providers/contacts/ContactMatcher;->keepIn(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 2256
    .end local v10           #contact_id:J
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private markAggregated(J)V
    .locals 2
    .parameter "rawContactId"

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1301
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1302
    return-void
.end method

.method private markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 12
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 730
    const-string v1, "raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAggregationModeQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 734
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 736
    .local v10, rawContactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 738
    .local v8, aggregationMode:I
    if-nez v8, :cond_0

    .line 739
    const/4 v0, 0x1

    invoke-virtual {p0, v10, v11, v8, v0}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    .end local v8           #aggregationMode:I
    .end local v10           #rawContactId:J
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 745
    return-void

    .line 743
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V
    .locals 15
    .parameter "db"
    .parameter "selection"
    .parameter "candidates"
    .parameter "matcher"
    .parameter "algorithm"
    .parameter "limit"

    .prologue
    .line 2114
    const-string v1, "name_lookup INNER JOIN view_raw_contacts ON (name_lookup.raw_contact_id = view_raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$ContactNameLookupQuery;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 2118
    .local v10, c:Landroid/database/Cursor;
    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2119
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 2121
    .local v12, contactId:Ljava/lang/Long;
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2123
    .local v14, rawcontactId:Ljava/lang/Long;
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2124
    .local v8, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 2129
    .local v7, nameType:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mCount:I
    invoke-static/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$200(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)I

    move-result v0

    if-ge v13, v0, :cond_0

    .line 2130
    #getter for: Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->mList:Ljava/util/ArrayList;
    invoke-static/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->access$300(Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;

    .line 2133
    .local v11, candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v5, v11, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mLookupType:I

    iget-object v6, v11, Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;->mName:Ljava/lang/String;

    move-object/from16 v0, p4

    move/from16 v9, p5

    invoke-virtual/range {v0 .. v9}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JJILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2129
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2140
    .end local v7           #nameType:I
    .end local v8           #name:Ljava/lang/String;
    .end local v11           #candidate:Lcom/android/providers/contacts/ContactAggregator$NameMatchCandidate;
    .end local v12           #contactId:Ljava/lang/Long;
    .end local v13           #i:I
    .end local v14           #rawcontactId:Ljava/lang/Long;
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 2142
    return-void

    .line 2140
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private pickBestMatchBasedOnData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 7
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const-wide/16 v5, -0x2

    const-wide/16 v2, -0x1

    .line 1605
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 1606
    .local v0, bestMatch:J
    cmp-long v4, v0, v5

    if-nez v4, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return-wide v2

    .line 1609
    :cond_1
    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 1611
    invoke-direct/range {p0 .. p5}, Lcom/android/providers/contacts/ContactAggregator;->pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J

    move-result-wide v0

    .line 1612
    cmp-long v4, v0, v5

    if-eqz v4, :cond_0

    :cond_2
    move-wide v2, v0

    .line 1617
    goto :goto_0
.end method

.method private pickBestMatchBasedOnExceptions(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J
    .locals 16
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1402
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    if-nez v2, :cond_0

    .line 1403
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/ContactAggregator;->prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1408
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1409
    const-wide/16 v2, -0x1

    .line 1457
    :goto_0
    return-wide v2

    .line 1412
    :cond_1
    const-string v3, "agg_exceptions JOIN raw_contacts raw_contacts1  ON (agg_exceptions.raw_contact_id1 = raw_contacts1._id)  JOIN raw_contacts raw_contacts2  ON (agg_exceptions.raw_contact_id2 = raw_contacts2._id) "

    sget-object v4, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id1="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " OR "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "raw_contact_id2"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p2

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

    move-result-object v10

    .line 1419
    .local v10, c:Landroid/database/Cursor;
    if-eqz v10, :cond_7

    .line 1422
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1423
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 1424
    .local v15, type:I
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1425
    .local v13, rawContactId1:J
    const-wide/16 v11, -0x1

    .line 1426
    .local v11, contactId:J
    cmp-long v2, p2, v13

    if-nez v2, :cond_4

    .line 1427
    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1429
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1437
    :cond_3
    :goto_2
    const-wide/16 v2, -0x1

    cmp-long v2, v11, v2

    if-eqz v2, :cond_2

    .line 1438
    const/4 v2, 0x1

    if-ne v15, v2, :cond_5

    .line 1439
    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/ContactMatcher;->keepIn(J)V

    .line 1445
    :goto_3
    sget-wide v2, Lcom/android/providers/contacts/ContactsProvider2;->LinkMethod:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->isSNLogin()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1447
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v10, v1, v15}, Lcom/android/providers/contacts/ContactAggregator;->ProcessNoteDataForSNContacts(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteDatabase;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1452
    .end local v11           #contactId:J
    .end local v13           #rawContactId1:J
    .end local v15           #type:I
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1432
    .restart local v11       #contactId:J
    .restart local v13       #rawContactId1:J
    .restart local v15       #type:I
    :cond_4
    const/4 v2, 0x5

    :try_start_1
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1434
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    goto :goto_2

    .line 1441
    :cond_5
    move-object/from16 v0, p4

    invoke-virtual {v0, v11, v12}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 1452
    .end local v11           #contactId:J
    .end local v13           #rawContactId1:J
    .end local v15           #type:I
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1457
    :cond_7
    const/16 v2, 0x64

    const/4 v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatchAndIgnoreMy(IZ)J

    move-result-wide v2

    goto/16 :goto_0
.end method

.method private pickBestMatchBasedOnSecondaryData(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)J
    .locals 9
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x1

    .line 1628
    const/16 v0, 0x46

    invoke-virtual {p5, v0}, Lcom/android/providers/contacts/ContactMatcher;->prepareSecondaryMatchCandidates(I)Ljava/util/List;

    move-result-object v8

    .line 1630
    .local v8, secondaryContactIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    .line 1631
    :cond_0
    const-wide/16 v0, -0x1

    .line 1653
    :goto_0
    return-wide v0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 1634
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 1636
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1637
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1638
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v7, v0, :cond_3

    .line 1639
    if-eqz v7, :cond_2

    .line 1640
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1642
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1638
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1647
    :cond_3
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v1, ") AND name_type IN (0,1,2)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->matchAllCandidates(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;ILjava/lang/String;)V

    .line 1653
    const/16 v0, 0x32

    invoke-virtual {p5, v0, v5}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatchAndIgnoreMy(IZ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private prefetchAggregationExceptionIds(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 14
    .parameter "db"

    .prologue
    const/4 v13, 0x1

    const/4 v3, 0x0

    .line 1346
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1347
    const-string v1, "agg_exceptions"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$AggregateExceptionPrefetchQuery;->COLUMNS:[Ljava/lang/String;

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1352
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1353
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1354
    .local v9, rawContactId1:J
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1355
    .local v11, rawContactId2:J
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1356
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIds:Ljava/util/HashSet;

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1359
    .end local v9           #rawContactId1:J
    .end local v11           #rawContactId2:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1362
    iput-boolean v13, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 1363
    return-void
.end method

.method private processDisplayNameCandidate(JLjava/lang/String;ILjava/lang/String;Z)V
    .locals 8
    .parameter "rawContactId"
    .parameter "displayName"
    .parameter "displayNameSource"
    .parameter "type"
    .parameter "verified"

    .prologue
    .line 2949
    sget-wide v1, Lcom/android/providers/contacts/ContactsProvider2;->LinkMethod:J

    .line 2950
    .local v1, mLinkMethod:J
    const/4 v0, -0x1

    .line 2953
    .local v0, index:I
    const/4 v3, 0x0

    .line 2954
    .local v3, replace:Z
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v4, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 2956
    const/4 v3, 0x1

    .line 2978
    :cond_0
    :goto_0
    const/16 v4, 0x28

    if-ne p4, v4, :cond_1

    .line 2979
    const-wide/16 v4, 0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_1

    .line 2980
    invoke-static {p5}, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->findAutoNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 2984
    :cond_1
    if-eqz v3, :cond_2

    .line 2986
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-wide p1, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    .line 2987
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-object p3, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    .line 2988
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput p4, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    .line 2989
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput-boolean p6, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    .line 2990
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iput v0, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->bestNameAccount:I

    .line 2993
    :cond_2
    return-void

    .line 2957
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2958
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v4, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-nez v4, :cond_4

    if-eqz p6, :cond_4

    .line 2960
    const/4 v3, 0x1

    goto :goto_0

    .line 2961
    :cond_4
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-boolean v4, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->verified:Z

    if-ne v4, p6, :cond_0

    .line 2963
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v4, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ge v4, p4, :cond_5

    .line 2965
    const/4 v3, 0x1

    goto :goto_0

    .line 2966
    :cond_5
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v4, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayNameSource:I

    if-ne v4, p4, :cond_0

    const/16 v4, 0x28

    if-ne p4, v4, :cond_0

    .line 2967
    const-wide/16 v4, 0x1

    cmp-long v4, v1, v4

    if-eqz v4, :cond_0

    .line 2968
    invoke-static {p5}, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->findAutoNameIndex(Ljava/lang/String;)I

    move-result v0

    .line 2969
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget v4, v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->bestNameAccount:I

    if-le v0, v4, :cond_0

    .line 2970
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 22
    .parameter "qb"
    .parameter "db"
    .parameter "projection"
    .parameter
    .parameter "maxSuggestions"
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 3403
    .local p4, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 3404
    .local v20, sb:Ljava/lang/StringBuilder;
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3405
    const-string v2, " IN ("

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3406
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_1

    .line 3407
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 3408
    .local v18, matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    if-eqz v12, :cond_0

    .line 3409
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3411
    :cond_0
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3406
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 3413
    .end local v18           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_1
    const-string v2, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3415
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3416
    const-string v2, " AND _id IN "

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/ContactsProvider2;->appendContactFilterAsNestedQuery(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3421
    :cond_2
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 3422
    .local v11, foundIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/providers/contacts/ContactAggregator$ContactIdQuery;->COLUMNS:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3425
    .local v10, cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3426
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 3429
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3433
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3434
    .local v16, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    :cond_4
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3435
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v14

    .line 3436
    .local v14, id:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3437
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 3443
    .end local v14           #id:J
    :cond_5
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, p5

    if-le v2, v0, :cond_7

    .line 3444
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v17

    .line 3450
    .local v17, limitedMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3451
    const-string v2, "_id"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3452
    const-string v2, " IN ("

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    const/4 v12, 0x0

    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_8

    .line 3454
    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 3455
    .restart local v18       #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    if-eqz v12, :cond_6

    .line 3456
    const-string v2, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3458
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3453
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 3446
    .end local v17           #limitedMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    .end local v18           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_7
    move-object/from16 v17, p4

    .restart local v17       #limitedMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    goto :goto_3

    .line 3460
    :cond_8
    const-string v2, ")"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3463
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id"

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3466
    new-instance v21, Ljava/util/ArrayList;

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3467
    .local v21, sortedContactIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 3468
    .restart local v18       #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 3471
    .end local v18           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    :cond_9
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3474
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    move-object/from16 v19, v0

    .line 3475
    .local v19, positionMap:[I
    const/4 v12, 0x0

    :goto_6
    move-object/from16 v0, v19

    array-length v2, v0

    if-ge v12, v2, :cond_a

    .line 3476
    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v14

    .line 3477
    .restart local v14       #id:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aput v2, v19, v12

    .line 3475
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 3480
    .end local v14           #id:J
    :cond_a
    new-instance v2, Lcom/android/providers/contacts/ReorderingCursorWrapper;

    move-object/from16 v0, v19

    invoke-direct {v2, v10, v0}, Lcom/android/providers/contacts/ReorderingCursorWrapper;-><init>(Landroid/database/Cursor;[I)V

    return-object v2
.end method

.method private setContactIdAndMarkAggregated(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1309
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1310
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdAndMarkAggregatedUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1311
    return-void
.end method

.method private setPresenceContactId(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1315
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1316
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mPresenceContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1317
    return-void
.end method

.method private splitAutomaticallyAggregatedRawContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 9
    .parameter "txContext"
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v8, 0x0

    .line 1148
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    .line 1149
    const-string v6, "SELECT COUNT(_id) FROM raw_contacts WHERE contact_id=?"

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, v6, v7}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 1153
    .local v0, count:I
    const/4 v6, 0x2

    if-ge v0, v6, :cond_1

    .line 1191
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    const-string v3, "SELECT _id FROM raw_contacts WHERE contact_id=?   AND _id NOT IN (SELECT raw_contact_id1 FROM agg_exceptions WHERE type=1 UNION SELECT raw_contact_id2 FROM agg_exceptions WHERE type=1)"

    .line 1175
    .local v3, query:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1178
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_2

    .line 1179
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_3

    .line 1186
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1188
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-lez v6, :cond_0

    .line 1189
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto :goto_0

    .line 1182
    :cond_3
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1183
    .local v4, rawContactId:J
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->createNewContactForRawContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1178
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1186
    .end local v4           #rawContactId:J
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "contactId"

    .prologue
    const/4 v3, 0x1

    .line 3304
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->computeLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    move-result-object v0

    .line 3306
    .local v0, lookupKey:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3307
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3311
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3313
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3314
    return-void

    .line 3309
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mLookupKeyUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    const-wide/16 v2, -0x1

    .line 1699
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1702
    const/16 v4, 0x46

    const/4 v5, 0x0

    invoke-virtual {p4, v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatch(IZ)J

    move-result-wide v0

    .line 1703
    .local v0, bestMatch:J
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 1713
    .end local v0           #bestMatch:J
    :goto_0
    return-wide v0

    .line 1708
    .restart local v0       #bestMatch:J
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1710
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1711
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    move-wide v0, v2

    .line 1713
    goto :goto_0
.end method

.method private updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 13
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 1976
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v10, 0x2

    iget-wide v11, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdEmail:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    aput-object v11, v0, v7

    .line 1977
    const-string v1, "data dataA JOIN data dataB ON (dataA.data13=dataB.data13) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$EmailLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "dataA.raw_contact_id=? AND dataA.mimetype_id=? AND dataA.data13 NOT NULL AND LENGTH(dataA.data13) > 0 AND dataB.mimetype_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1981
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1982
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1985
    .local v1, contactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1986
    .local v3, rawcontactId:J
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1987
    .local v5, matchFrom:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, matchTo:Ljava/lang/String;
    move-object/from16 v0, p4

    .line 1988
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithEmailMatch(JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1993
    .end local v1           #contactId:J
    .end local v3           #rawcontactId:J
    .end local v5           #matchFrom:Ljava/lang/String;
    .end local v6           #matchTo:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1995
    return-void
.end method

.method private updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 14
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    .line 1751
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1752
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const/4 v4, 0x2

    iget-wide v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mMimeTypeIdIdentity:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v5, v1, v2

    .line 1753
    const-string v2, "data dataA JOIN data dataB ON (dataA.data2=dataB.data2 AND dataA.data1=dataB.data1) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v3, Lcom/android/providers/contacts/ContactAggregator$IdentityLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v4, "dataA.raw_contact_id=? AND dataA.mimetype_id=? AND dataA.data2 NOT NULL AND dataA.data1 NOT NULL AND dataB.mimetype_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v5, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs3:[Ljava/lang/String;

    const-string v6, "contact_id"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1757
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1758
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1760
    .local v10, contactId:J
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1762
    .local v12, rawcontactId:J
    move-object/from16 v0, p4

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/providers/contacts/ContactMatcher;->matchIdentity(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1765
    .end local v10           #contactId:J
    .end local v12           #rawcontactId:J
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1768
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 1807
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v9

    .line 1808
    const-string v1, "name_lookup nameA JOIN name_lookup nameB ON (nameA.normalized_name=nameB.normalized_name) JOIN raw_contacts ON (nameB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "nameA.raw_contact_id=? AND aggregation_needed=0 AND contact_id IN default_directory"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1812
    .local v10, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1813
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1815
    .local v1, contactId:J
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1817
    .local v3, rawcontactId:J
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1818
    .local v6, name:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1819
    .local v5, nameTypeA:I
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1822
    .local v7, nameTypeB:I
    const/4 v9, 0x0

    move-object v0, p4

    move-object v8, v6

    invoke-virtual/range {v0 .. v9}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JJILjava/lang/String;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1835
    .end local v1           #contactId:J
    .end local v3           #rawcontactId:J
    .end local v5           #nameTypeA:I
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #nameTypeB:I
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1837
    return-void
.end method

.method private updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 19
    .parameter "db"
    .parameter "query"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    .line 1907
    invoke-virtual/range {p3 .. p3}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;->clear()V

    .line 1908
    new-instance v2, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/ContactAggregator;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v3, v1}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;-><init>(Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/NameSplitter;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;)V

    .line 1910
    .local v2, builder:Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 1911
    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1935
    :goto_0
    return-void

    .line 1915
    :cond_0
    const-string v4, "name_lookup JOIN raw_contacts ON (raw_contact_id = raw_contacts._id)"

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$NameLookupMatchQueryWithParameter;->COLUMNS:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->getSelection()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Lcom/android/providers/contacts/ContactAggregator;->PRIMARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1919
    .local v18, c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1920
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1921
    .local v4, contactId:J
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1922
    .local v9, name:Ljava/lang/String;
    invoke-virtual {v2, v9}, Lcom/android/providers/contacts/ContactAggregator$NameLookupSelectionBuilder;->getLookupType(Ljava/lang/String;)I

    move-result v8

    .line 1923
    .local v8, nameTypeA:I
    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1925
    .local v10, nameTypeB:I
    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    move-object/from16 v3, p4

    move-object v11, v9

    invoke-virtual/range {v3 .. v12}, Lcom/android/providers/contacts/ContactMatcher;->matchName(JJILjava/lang/String;ILjava/lang/String;I)V

    .line 1927
    const/4 v3, 0x3

    if-ne v8, v3, :cond_1

    const/4 v3, 0x3

    if-ne v10, v3, :cond_1

    .line 1928
    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v11, p4

    move-wide v12, v4

    invoke-virtual/range {v11 .. v17}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithNicknameMatch(JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1933
    .end local v4           #contactId:J
    .end local v8           #nameTypeA:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #nameTypeB:I
    :catchall_0
    move-exception v3

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V
    .locals 11
    .parameter "db"
    .parameter "rawContactId"
    .parameter "matcher"

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 2039
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v8

    .line 2040
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getUseStrictPhoneNumberComparisonParameter()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    .line 2041
    const-string v1, "phone_lookup phoneA JOIN data dataA ON (dataA._id=phoneA.data_id) JOIN phone_lookup phoneB ON (phoneA.min_match=phoneB.min_match) JOIN data dataB ON (dataB._id=phoneB.data_id) JOIN raw_contacts ON (dataB.raw_contact_id = raw_contacts._id)"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$PhoneLookupQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "dataA.raw_contact_id=? AND PHONE_NUMBERS_EQUAL(dataA.data1, dataB.data1,?) AND aggregation_needed=0 AND contact_id IN default_directory AND dataA.data2 = 2 AND dataB.data2 = 2"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs2:[Ljava/lang/String;

    sget-object v8, Lcom/android/providers/contacts/ContactAggregator;->SECONDARY_HIT_LIMIT_STRING:Ljava/lang/String;

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2045
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2046
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 2049
    .local v1, contactId:J
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2050
    .local v3, rawcontactId:J
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2051
    .local v5, matchFrom:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .local v6, matchTo:Ljava/lang/String;
    move-object v0, p4

    .line 2052
    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/ContactMatcher;->updateScoreWithPhoneNumberMatch(JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2057
    .end local v1           #contactId:J
    .end local v3           #rawcontactId:J
    .end local v5           #matchFrom:Ljava/lang/String;
    .end local v6           #matchTo:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2059
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"
    .parameter "candidates"
    .parameter "matcher"

    .prologue
    .line 3595
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 3596
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 3597
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 3598
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 3599
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->loadNameMatchCandidates(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Z)V

    .line 3600
    invoke-direct {p0, p1, p4, p5}, Lcom/android/providers/contacts/ContactAggregator;->lookupApproximateNameMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    .line 3601
    return-void
.end method

.method private updateMatchScoresForSuggestionsBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "db"
    .parameter "candidates"
    .parameter "matcher"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;",
            "Lcom/android/providers/contacts/ContactMatcher;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3606
    .local p4, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;>;"
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;

    .line 3607
    .local v1, parameter:Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;
    const-string v2, "name"

    iget-object v3, v1, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;->kind:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3608
    iget-object v2, v1, Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    goto :goto_0

    .line 3613
    .end local v1           #parameter:Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;
    :cond_1
    return-void
.end method


# virtual methods
.method public HtcEndAggregateInTransaction(Lcom/android/providers/contacts/NotifyDialerScheduler;)V
    .locals 2
    .parameter "mContactNotifyScheduler"

    .prologue
    .line 675
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v1, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 681
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 682
    .local v0, mSendIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1, v0}, Lcom/android/providers/contacts/NotifyDialerScheduler;->pendingSuggestionNofication(Ljava/util/ArrayList;)V

    .line 683
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForArrange:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method public HtcFindMatchingContactsForMyContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;
    .locals 2
    .parameter "db"
    .parameter "raw_contactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/ContactMatcher$MatchScore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3546
    new-instance v0, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v0}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 3548
    .local v0, matcher:Lcom/android/providers/contacts/ContactMatcher;
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnDataMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)J

    .line 3550
    invoke-virtual {v0, p2, p3}, Lcom/android/providers/contacts/ContactMatcher;->keepOut(J)V

    .line 3552
    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public HtcQueryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .parameter "qb"
    .parameter "projection"
    .parameter "raw_contactId"
    .parameter "maxSuggestions"
    .parameter "filter"
    .parameter "selection"
    .parameter "removeFilter"

    .prologue
    .line 3383
    const-string v1, "raw_contacts"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 3384
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    sget-object v1, Lcom/android/providers/contacts/ContactsProvider2;->sRawContactsProjectionMap:Lcom/android/providers/contacts/ProjectionMap;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 3385
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3386
    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 3389
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 3391
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-direct {p0, v3, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->HtcFindMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v7

    .local v7, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    move-object v6, p2

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p8

    .line 3392
    invoke-direct/range {v1 .. v10}, Lcom/android/providers/contacts/ContactAggregator;->HtcQueryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;J[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 17
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 789
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v1, :cond_0

    .line 817
    :goto_0
    return-void

    .line 793
    :cond_0
    new-instance v11, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 794
    .local v11, candidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
    new-instance v12, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v12}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 796
    .local v12, matcher:Lcom/android/providers/contacts/ContactMatcher;
    const-wide/16 v9, 0x0

    .line 797
    .local v9, contactId:J
    const/4 v13, 0x0

    .line 798
    .local v13, accountName:Ljava/lang/String;
    const/4 v14, 0x0

    .line 799
    .local v14, accountType:Ljava/lang/String;
    const/16 v16, 0x0

    .line 800
    .local v16, dataSet:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 801
    const-string v2, "raw_contacts"

    sget-object v3, Lcom/android/providers/contacts/ContactAggregator$RawContactIdAndAccountQuery;->COLUMNS:[Ljava/lang/String;

    const-string v4, "_id=?"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 805
    .local v15, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 807
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 808
    .end local v14           #accountType:Ljava/lang/String;
    .local v6, accountType:Ljava/lang/String;
    const/4 v1, 0x2

    :try_start_1
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 809
    .end local v13           #accountName:Ljava/lang/String;
    .local v7, accountName:Ljava/lang/String;
    const/4 v1, 0x3

    :try_start_2
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 812
    .end local v16           #dataSet:Ljava/lang/String;
    .local v8, dataSet:Ljava/lang/String;
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    .line 815
    invoke-direct/range {v1 .. v12}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    goto :goto_0

    .line 812
    .end local v6           #accountType:Ljava/lang/String;
    .end local v7           #accountName:Ljava/lang/String;
    .end local v8           #dataSet:Ljava/lang/String;
    .restart local v13       #accountName:Ljava/lang/String;
    .restart local v14       #accountType:Ljava/lang/String;
    .restart local v16       #dataSet:Ljava/lang/String;
    :catchall_0
    move-exception v1

    move-object v6, v14

    .end local v14           #accountType:Ljava/lang/String;
    .restart local v6       #accountType:Ljava/lang/String;
    move-object v7, v13

    .end local v13           #accountName:Ljava/lang/String;
    .restart local v7       #accountName:Ljava/lang/String;
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v1

    .end local v7           #accountName:Ljava/lang/String;
    .restart local v13       #accountName:Ljava/lang/String;
    :catchall_1
    move-exception v1

    move-object v7, v13

    .end local v13           #accountName:Ljava/lang/String;
    .restart local v7       #accountName:Ljava/lang/String;
    goto :goto_2

    :catchall_2
    move-exception v1

    goto :goto_2

    .end local v6           #accountType:Ljava/lang/String;
    .end local v7           #accountName:Ljava/lang/String;
    .restart local v13       #accountName:Ljava/lang/String;
    .restart local v14       #accountType:Ljava/lang/String;
    :cond_1
    move-object/from16 v8, v16

    .end local v16           #dataSet:Ljava/lang/String;
    .restart local v8       #dataSet:Ljava/lang/String;
    move-object v6, v14

    .end local v14           #accountType:Ljava/lang/String;
    .restart local v6       #accountType:Ljava/lang/String;
    move-object v7, v13

    .end local v13           #accountName:Ljava/lang/String;
    .restart local v7       #accountName:Ljava/lang/String;
    goto :goto_1
.end method

.method public aggregateInTransaction(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 33
    .parameter "txContext"
    .parameter "db"

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v2, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v18

    .line 536
    .local v18, count:I
    if-eqz v18, :cond_0

    .line 540
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    .line 541
    .local v31, start:J
    sget-boolean v2, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v2, :cond_2

    .line 542
    const-string v2, "ContactAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact aggregation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_2
    const/16 v2, 0xabb

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    move/from16 v0, v18

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 547
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 549
    .local v30, selectionArgs:[Ljava/lang/String;
    const/16 v24, 0x0

    .line 550
    .local v24, index:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const-string v3, "SELECT _id,contact_id, account_type,account_name, data_set FROM raw_contacts WHERE _id IN("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v27

    .line 553
    .local v27, rawContactId:J
    if-lez v24, :cond_3

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 557
    add-int/lit8 v25, v24, 0x1

    .end local v24           #index:I
    .local v25, index:I
    invoke-static/range {v27 .. v28}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v30, v24

    move/from16 v24, v25

    .end local v25           #index:I
    .restart local v24       #index:I
    goto :goto_1

    .line 560
    .end local v27           #rawContactId:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v29, v0

    .line 563
    .local v29, rawContactIds:[J
    move/from16 v0, v18

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 564
    .local v17, contactIds:[J
    move/from16 v0, v18

    new-array v15, v0, [Ljava/lang/String;

    .line 565
    .local v15, accountTypes:[Ljava/lang/String;
    move/from16 v0, v18

    new-array v14, v0, [Ljava/lang/String;

    .line 566
    .local v14, accountNames:[Ljava/lang/String;
    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 567
    .local v19, dataSets:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/ContactAggregator;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 569
    .local v16, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v18

    .line 570
    const/16 v24, 0x0

    .line 571
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 572
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v29, v24

    .line 573
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v17, v24

    .line 574
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v24

    .line 575
    const/4 v2, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v14, v24

    .line 576
    const/4 v2, 0x4

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v19, v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 580
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 583
    const/16 v22, 0x0

    .local v22, i:I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 584
    aget-wide v5, v29, v22

    aget-object v7, v15, v22

    aget-object v8, v14, v22

    aget-object v9, v19, v22

    aget-wide v10, v17, v22

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/contacts/ContactAggregator;->mCandidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v13}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;)V

    .line 583
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    .line 580
    .end local v22           #i:I
    :catchall_0
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2

    .line 588
    .restart local v22       #i:I
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v20, v2, v31

    .line 589
    .local v20, elapsedTime:J
    const/16 v2, 0xabb

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 591
    sget-boolean v2, Lcom/android/providers/contacts/ContactAggregator;->VERBOSE_LOGGING:Z

    if-eqz v2, :cond_0

    .line 592
    if-nez v18, :cond_7

    const-string v26, ""

    .line 593
    .local v26, performance:Ljava/lang/String;
    :goto_4
    const-string v2, "ContactAggregator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Contact aggregation complete: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    .end local v26           #performance:Ljava/lang/String;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    int-to-long v3, v0

    div-long v3, v20, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms per contact"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_4
.end method

.method protected appendLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sb"
    .parameter "accountTypeWithDataSet"
    .parameter "accountName"
    .parameter "rawContactId"
    .parameter "sourceId"
    .parameter "displayName"

    .prologue
    .line 2935
    invoke-static/range {p1 .. p7}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 2937
    return-void
.end method

.method checkSocialNetworkLargePhoto()V
    .locals 6

    .prologue
    .line 1273
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdMarkedForAggregated:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdMarkedForAggregated:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1274
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdMarkedForAggregated:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1276
    .local v2, map:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1277
    .local v0, LContactId:Ljava/lang/Long;
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v3}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/htc/util/contacts/ContactsUtility;->handleSocialNetworkLargePhoto(Landroid/content/Context;J)V

    goto :goto_0

    .line 1280
    .end local v0           #LContactId:Ljava/lang/Long;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #map:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdMarkedForAggregated:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1281
    return-void
.end method

.method public clearPendingAggregations()V
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 689
    return-void
.end method

.method public computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)Z
    .locals 3
    .parameter "db"
    .parameter "contactId"
    .parameter "statement"

    .prologue
    .line 2620
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2621
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, p4}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)Z

    move-result v0

    return v0
.end method

.method protected computeLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;
    .locals 10
    .parameter "db"
    .parameter "contactId"

    .prologue
    .line 3317
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3318
    .local v9, sb:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3319
    const-string v1, "view_raw_contacts"

    sget-object v2, Lcom/android/providers/contacts/ContactAggregator$LookupKeyQuery;->COLUMNS:[Ljava/lang/String;

    const-string v3, "contact_id=?"

    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3322
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3323
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v9

    invoke-static/range {v0 .. v6}, Lcom/android/providers/contacts/ContactLookupKey;->appendToLookupKey(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3331
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 3333
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public insertContact(Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 3
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 767
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsQueryByRawContactId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Landroid/database/sqlite/SQLiteStatement;)Z

    .line 768
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactInsert:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 3641
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mCancel:Z

    .line 3642
    return-void
.end method

.method public invalidateAggregationExceptionCache()V
    .locals 1

    .prologue
    .line 1336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregationExceptionIdsValid:Z

    .line 1337
    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    return v0
.end method

.method public markForAggregation(JIZ)V
    .locals 4
    .parameter "rawContactId"
    .parameter "aggregationMode"
    .parameter "force"

    .prologue
    .line 697
    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    if-nez p3, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 711
    .local v0, effectiveAggregationMode:I
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    return-void

    .line 703
    .end local v0           #effectiveAggregationMode:I
    :cond_0
    move v0, p3

    .restart local v0       #effectiveAggregationMode:I
    goto :goto_0

    .line 706
    .end local v0           #effectiveAggregationMode:I
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 707
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mMarkForAggregation:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 708
    move v0, p3

    .restart local v0       #effectiveAggregationMode:I
    goto :goto_0
.end method

.method public markNewForAggregation(JI)V
    .locals 3
    .parameter "rawContactId"
    .parameter "aggregationMode"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactsMarkedForAggregation:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    return-void
.end method

.method public onRawContactInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)J
    .locals 3
    .parameter "txContext"
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 753
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->insertContact(Landroid/database/sqlite/SQLiteDatabase;J)J

    move-result-wide v0

    .line 754
    .local v0, contactId:J
    invoke-virtual {p0, p3, p4, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->setContactId(JJ)V

    .line 755
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 759
    sget-object v2, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyInsertContact(J)V

    .line 761
    return-wide v0
.end method

.method public processNoteAfterLoginIdInsert(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 12
    .parameter "transactionContext"
    .parameter "db"
    .parameter "sACCOUNT_TYPE"

    .prologue
    .line 2378
    new-instance v11, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v11}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 2379
    .local v11, matcher:Lcom/android/providers/contacts/ContactMatcher;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2381
    .local v10, mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v1, "raw_contacts"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "contact_id"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "sourceid"

    aput-object v3, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_type = \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "aggregation_needed"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2386
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_2

    move-object v5, v10

    .line 2387
    .end local v10           #mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v5, mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2388
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2389
    invoke-virtual {v11}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 2390
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v0, p0

    move-object v1, p2

    move-object v6, v11

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/contacts/ContactAggregator;->lookupNoteMatchesForSNContacts(Landroid/database/sqlite/SQLiteDatabase;JJLcom/android/providers/contacts/ContactMatcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    invoke-virtual {v11}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches()Ljava/util/ArrayList;

    move-result-object v5

    .line 2392
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2393
    const/4 v0, 0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/ContactAggregator;->joinNoteAndSourceIdMatchContacts(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)V

    goto :goto_0

    .line 2396
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2398
    :goto_1
    return-void

    .end local v5           #mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v10       #mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_2
    move-object v5, v10

    .end local v10           #mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v5       #mIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    goto :goto_1
.end method

.method public queryAggregationSuggestions(Landroid/database/sqlite/SQLiteQueryBuilder;[Ljava/lang/String;JILjava/lang/String;Ljava/util/ArrayList;)Landroid/database/Cursor;
    .locals 7
    .parameter "qb"
    .parameter "projection"
    .parameter "contactId"
    .parameter "maxSuggestions"
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteQueryBuilder;",
            "[",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    .line 3361
    .local p7, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/ContactAggregator$AggregationSuggestionParameter;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3362
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3364
    :try_start_0
    invoke-direct {p0, v2, p3, p4, p7}, Lcom/android/providers/contacts/ContactAggregator;->findMatchingContacts(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    .local v4, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p5

    move-object v6, p6

    .line 3365
    invoke-direct/range {v0 .. v6}, Lcom/android/providers/contacts/ContactAggregator;->queryMatchingContacts(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3367
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    .end local v4           #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 3632
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mScheduler:Lcom/android/providers/contacts/ContactAggregationScheduler;

    if-eqz v0, :cond_0

    .line 3633
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mScheduler:Lcom/android/providers/contacts/ContactAggregationScheduler;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->stop()V

    .line 3635
    :cond_0
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x32

    .line 3666
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v0, :cond_1

    .line 3698
    :cond_0
    :goto_0
    return-void

    .line 3670
    :cond_1
    iput-boolean v12, p0, Lcom/android/providers/contacts/ContactAggregator;->mCancel:Z

    .line 3672
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3673
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;-><init>(Lcom/android/providers/contacts/ContactAggregator$1;)V

    .line 3674
    .local v3, candidates:Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;
    new-instance v4, Lcom/android/providers/contacts/ContactMatcher;

    invoke-direct {v4}, Lcom/android/providers/contacts/ContactMatcher;-><init>()V

    .line 3676
    .local v4, matcher:Lcom/android/providers/contacts/ContactMatcher;
    new-array v5, v11, [J

    .line 3677
    .local v5, rawContactIds:[J
    new-array v6, v11, [J

    .line 3678
    .local v6, contactIds:[J
    new-array v7, v11, [Ljava/lang/String;

    .line 3679
    .local v7, accountTypes:[Ljava/lang/String;
    new-array v8, v11, [Ljava/lang/String;

    .line 3680
    .local v8, accountNames:[Ljava/lang/String;
    new-array v9, v11, [Ljava/lang/String;

    .line 3681
    .local v9, dataSets:[Ljava/lang/String;
    new-instance v1, Lcom/android/providers/contacts/TransactionContext;

    invoke-direct {v1, v12}, Lcom/android/providers/contacts/TransactionContext;-><init>(Z)V

    .line 3682
    .local v1, txContext:Lcom/android/providers/contacts/TransactionContext;
    :cond_2
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mCancel:Z

    if-nez v0, :cond_0

    move-object v0, p0

    .line 3684
    :try_start_0
    invoke-direct/range {v0 .. v9}, Lcom/android/providers/contacts/ContactAggregator;->aggregateBatch(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/ContactAggregator$MatchCandidateList;Lcom/android/providers/contacts/ContactMatcher;[J[J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 3687
    :catch_0
    move-exception v10

    .line 3688
    .local v10, e:Landroid/database/sqlite/SQLiteDiskIOException;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregator;->interrupt()V

    goto :goto_0

    .line 3690
    .end local v10           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catch_1
    move-exception v10

    .line 3691
    .local v10, e:Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregator;->interrupt()V

    goto :goto_0

    .line 3693
    .end local v10           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v10

    .line 3694
    .local v10, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Lcom/android/providers/contacts/ContactAggregator;->interrupt()V

    goto :goto_0
.end method

.method public schedule()V
    .locals 1

    .prologue
    .line 3621
    iget-boolean v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 3622
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mScheduler:Lcom/android/providers/contacts/ContactAggregationScheduler;

    if-eqz v0, :cond_0

    .line 3623
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mScheduler:Lcom/android/providers/contacts/ContactAggregationScheduler;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactAggregationScheduler;->schedule()V

    .line 3626
    :cond_0
    return-void
.end method

.method public setContactId(JJ)V
    .locals 2
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1292
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1293
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 1294
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 501
    iput-boolean p1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    .line 502
    return-void
.end method

.method public triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/ContactAggregator;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;JZ)V

    .line 601
    return-void
.end method

.method public triggerAggregation(Lcom/android/providers/contacts/TransactionContext;JZ)V
    .locals 20
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "markFixPrimaryForDisableMode"

    .prologue
    .line 606
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getAggregationMode(J)I

    move-result v6

    .line 611
    .local v6, aggregationMode:I
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 652
    :pswitch_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/android/providers/contacts/ContactAggregator;->markForAggregation(JIZ)V

    goto :goto_0

    .line 613
    :pswitch_1
    invoke-static {}, Lcom/android/providers/contacts/HtcCustomOpenHelper;->getMyContactCardRawId()J

    move-result-wide v18

    cmp-long v18, p2, v18

    if-nez v18, :cond_4

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->HtcFindMatchingContactsForMyContact(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/util/List;

    move-result-object v7

    .line 616
    .local v7, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    if-lez v18, :cond_0

    .line 617
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v10, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v16, rawList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 620
    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 621
    .local v13, matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual {v13}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getRawListIds()Ljava/util/ArrayList;

    move-result-object v17

    .line 622
    .local v17, raw_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 623
    .local v14, raw:J
    invoke-virtual {v13}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 619
    .end local v14           #raw:J
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 628
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    .end local v17           #raw_ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-static {v0, v10, v1}, Lcom/htc/util/contacts/ContactsUtility;->importToMyContact(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 632
    .end local v7           #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    .end local v10           #contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11           #i:I
    .end local v16           #rawList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    if-eqz p4, :cond_0

    .line 634
    invoke-virtual/range {p1 .. p3}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v18

    if-nez v18, :cond_0

    .line 636
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/MergeScheduleUtils;->getHTCSyncStart()Z

    move-result v18

    if-nez v18, :cond_0

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactAccountType:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactAccountType:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mRawContactAccountType:Landroid/database/sqlite/SQLiteStatement;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v5

    .line 640
    .local v5, accountType:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v18, "com.anddroid.contacts.sim"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 641
    invoke-virtual/range {p1 .. p3}, Lcom/android/providers/contacts/TransactionContext;->addNeedFixPrimaryDisableAggregationContacts(J)V

    goto/16 :goto_0

    .line 657
    .end local v5           #accountType:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v8

    .line 659
    .local v8, contactId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-eqz v18, :cond_0

    .line 660
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v9}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V

    goto/16 :goto_0

    .line 666
    .end local v8           #contactId:J
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-wide/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->aggregateContact(Lcom/android/providers/contacts/TransactionContext;Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateAggregateData(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 3
    .parameter "txContext"
    .parameter "contactId"

    .prologue
    .line 820
    iget-boolean v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mEnabled:Z

    if-nez v1, :cond_0

    .line 836
    :goto_0
    return-void

    .line 824
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 825
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0, v0, p2, p3, v1}, Lcom/android/providers/contacts/ContactAggregator;->computeAggregateData(Landroid/database/sqlite/SQLiteDatabase;JLandroid/database/sqlite/SQLiteStatement;)Z

    .line 826
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    sget v2, Lcom/android/providers/contacts/ContactAggregator$ContactReplaceSqlStatement;->CONTACT_ID:I

    invoke-virtual {v1, v2, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 827
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mContactUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 829
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateContactVisible(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 830
    invoke-virtual {p0, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->updateAggregatedStatusUpdate(J)V

    .line 833
    sget-object v1, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v1, p2, p3}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    goto :goto_0
.end method

.method protected updateAggregatedStatusUpdate(J)V
    .locals 2
    .parameter "contactId"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 840
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 841
    iget-object v0, p0, Lcom/android/providers/contacts/ContactAggregator;->mAggregatedPresenceReplace:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 842
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/ContactAggregator;->updateLastStatusUpdateId(J)V

    .line 843
    return-void
.end method

.method public updateAggregationAfterVisibilityChange(J)V
    .locals 18
    .parameter "contactId"

    .prologue
    .line 1232
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1233
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p1

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactInDefaultDirectory(Landroid/database/sqlite/SQLiteDatabase;J)Z

    move-result v17

    .line 1234
    .local v17, visible:Z
    if-eqz v17, :cond_0

    .line 1235
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 1268
    :goto_0
    return-void

    .line 1239
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1240
    const-string v4, "raw_contacts"

    sget-object v5, Lcom/android/providers/contacts/ContactAggregator$RawContactIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v6, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 1243
    .local v12, cursor:Landroid/database/Cursor;
    :cond_1
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1244
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    .line 1245
    .local v15, rawContactId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 1247
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnIdentityMatch(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnNameMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v11

    .line 1251
    .local v11, bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1252
    .local v14, matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual {v14}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1265
    .end local v11           #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    .end local v15           #rawContactId:J
    :catchall_0
    move-exception v4

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1255
    .restart local v11       #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    .restart local v13       #i$:Ljava/util/Iterator;
    .restart local v15       #rawContactId:J
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    invoke-virtual {v4}, Lcom/android/providers/contacts/ContactMatcher;->clear()V

    .line 1256
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnEmailMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/providers/contacts/ContactAggregator;->updateMatchScoresBasedOnPhoneMatches(Landroid/database/sqlite/SQLiteDatabase;JLcom/android/providers/contacts/ContactMatcher;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mMatcher:Lcom/android/providers/contacts/ContactMatcher;

    const/16 v5, 0x32

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactMatcher;->pickBestMatches(I)Ljava/util/List;

    move-result-object v11

    .line 1260
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/providers/contacts/ContactMatcher$MatchScore;

    .line 1261
    .restart local v14       #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    invoke-virtual {v14}, Lcom/android/providers/contacts/ContactMatcher$MatchScore;->getContactId()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/providers/contacts/ContactAggregator;->markContactForAggregation(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 1265
    .end local v11           #bestMatches:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/ContactMatcher$MatchScore;>;"
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #matchScore:Lcom/android/providers/contacts/ContactMatcher$MatchScore;
    .end local v15           #rawContactId:J
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method public updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 15
    .parameter "db"
    .parameter "contactId"

    .prologue
    .line 3191
    const/4 v11, 0x0

    .line 3193
    .local v11, lookupKeyUpdateNeeded:Z
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->clear()V

    .line 3195
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v8

    .line 3196
    const-string v3, "view_raw_contacts"

    sget-object v4, Lcom/android/providers/contacts/ContactAggregator$DisplayNameQuery;->COLUMNS:[Ljava/lang/String;

    const-string v5, "contact_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3199
    .local v10, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3200
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3201
    .local v3, rawContactId:J
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3202
    .local v5, displayName:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 3203
    .local v6, displayNameSource:I
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 3204
    .local v12, nameVerified:I
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3210
    .local v7, accountTypeAndDataSet:Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v2, v3, v8

    if-lez v2, :cond_0

    .line 3211
    if-eqz v12, :cond_1

    const/4 v8, 0x1

    :goto_1
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/providers/contacts/ContactAggregator;->processDisplayNameCandidate(JLjava/lang/String;ILjava/lang/String;Z)V

    .line 3219
    :cond_0
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->isNull(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    or-int/2addr v11, v2

    .line 3220
    goto :goto_0

    .line 3211
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 3222
    .end local v3           #rawContactId:J
    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #displayNameSource:I
    .end local v7           #accountTypeAndDataSet:Ljava/lang/String;
    .end local v12           #nameVerified:I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3225
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v8, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    const-wide/16 v13, -0x1

    cmp-long v2, v8, v13

    if-eqz v2, :cond_3

    .line 3231
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHtcDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-wide v13, v9, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->rawContactId:J

    invoke-virtual {v2, v8, v13, v14}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3232
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-object v2, v2, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3233
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHtcDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3237
    :goto_2
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHtcDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x3

    move-wide/from16 v0, p2

    invoke-virtual {v2, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3238
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHtcDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3242
    :cond_3
    if-eqz v11, :cond_4

    .line 3243
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 3245
    :cond_4
    return-void

    .line 3222
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3235
    :cond_5
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mHtcDisplayNameUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/providers/contacts/ContactAggregator;->mDisplayNameCandidate:Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;

    iget-object v9, v9, Lcom/android/providers/contacts/ContactAggregator$DisplayNameCandidate;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 3182
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 3183
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3188
    :goto_0
    return-void

    .line 3187
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updateHasPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 6
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 3254
    iget-object v3, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v3, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 3255
    .local v0, contactId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 3276
    :goto_0
    return-void

    .line 3259
    :cond_0
    const-string v3, "UPDATE contacts SET has_phone_number=(SELECT (CASE WHEN COUNT(*)=0 THEN 0 ELSE 1 END) FROM data JOIN raw_contacts ON (data.raw_contact_id = raw_contacts._id) WHERE mimetype_id=? AND data1 NOT NULL AND contact_id=?) WHERE _id=?"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 3269
    .local v2, hasPhoneNumberUpdate:Landroid/database/sqlite/SQLiteStatement;
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3270
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3271
    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3272
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3274
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v3
.end method

.method public updateLastStatusUpdateId(J)V
    .locals 5
    .parameter "contactId"

    .prologue
    .line 849
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, contactIdString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "UPDATE contacts SET status_update_id=(SELECT data._id FROM status_updates JOIN data   ON (status_update_data_id=data._id) JOIN raw_contacts   ON (data.raw_contact_id=raw_contacts._id) WHERE contact_id=? ORDER BY status_ts DESC,status LIMIT 1) WHERE contacts._id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    return-void
.end method

.method public updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 4
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 3295
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p2, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 3296
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3301
    :goto_0
    return-void

    .line 3300
    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/android/providers/contacts/ContactAggregator;->updateLookupKeyForContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_0
.end method

.method public updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 34
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 3013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v21

    .line 3014
    .local v21, contactId:J
    const-wide/16 v6, 0x0

    cmp-long v4, v21, v6

    if-nez v4, :cond_0

    .line 3101
    :goto_0
    return-void

    .line 3018
    :cond_0
    const-wide/16 v18, -0x1

    .line 3020
    .local v18, bestPhotoId:J
    const-wide/16 v16, 0x0

    .line 3021
    .local v16, bestPhotoFileId:J
    const/16 v31, -0x1

    .line 3022
    .local v31, photoPriority:I
    const/16 v25, -0x1

    .line 3023
    .local v25, index:I
    const/4 v14, -0x1

    .line 3024
    .local v14, bestPhotoAccount:I
    const-wide/16 v12, -0x1

    .line 3027
    .local v12, alphabetaBestPhotoId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v6, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v6}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v29

    .line 3029
    .local v29, photoMimeType:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "raw_contacts JOIN data ON(data.raw_contact_id=raw_contacts._id AND (mimetype_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v29

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " AND "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "data15"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " NOT NULL))"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3034
    .local v5, tables:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 3035
    sget-object v6, Lcom/android/providers/contacts/ContactAggregator$PhotoIdQuery;->COLUMNS:[Ljava/lang/String;

    const-string v7, "contact_id=?"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/providers/contacts/ContactAggregator;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 3038
    .local v20, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 3039
    .local v15, bestPhotoEntry:Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
    :goto_1
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3040
    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 3041
    .local v23, dataId:J
    const/4 v4, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    .line 3042
    .local v27, photoFileId:J
    const/4 v4, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v32, 0x1

    .line 3043
    .local v32, superPrimary:Z
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/contacts/ContactAggregator;->getPhotoMetadata(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    move-result-object v26

    .line 3061
    .local v26, photoEntry:Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 3062
    .local v33, type:Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Lcom/android/providers/contacts/HtcUtils/LinkPriorityRule;->findAutoPhotoIndex(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v25

    .line 3063
    move/from16 v0, v25

    if-le v0, v14, :cond_1

    .line 3064
    move-object/from16 v15, v26

    .line 3065
    move/from16 v14, v25

    .line 3066
    move-wide/from16 v18, v23

    .line 3067
    move-wide/from16 v16, v27

    .line 3069
    :cond_1
    move-wide/from16 v12, v23

    .line 3071
    goto :goto_1

    .line 3042
    .end local v26           #photoEntry:Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
    .end local v32           #superPrimary:Z
    .end local v33           #type:Ljava/lang/String;
    :cond_2
    const/16 v32, 0x0

    goto :goto_2

    .line 3073
    .end local v23           #dataId:J
    .end local v27           #photoFileId:J
    :cond_3
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 3077
    const/4 v4, -0x1

    if-ne v14, v4, :cond_4

    const-wide/16 v6, -0x1

    cmp-long v4, v18, v6

    if-nez v4, :cond_4

    .line 3078
    move-wide/from16 v18, v12

    .line 3082
    :cond_4
    const-wide/16 v6, -0x1

    cmp-long v4, v18, v6

    if-nez v4, :cond_5

    .line 3083
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3088
    :goto_3
    const-wide/16 v6, 0x0

    cmp-long v4, v16, v6

    if-nez v4, :cond_6

    .line 3089
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 3094
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x3

    move-wide/from16 v0, v21

    invoke-virtual {v4, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3098
    sget-object v4, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    goto/16 :goto_0

    .line 3073
    :catchall_0
    move-exception v4

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    throw v4

    .line 3085
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    move-wide/from16 v0, v18

    invoke-virtual {v4, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_3

    .line 3091
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/providers/contacts/ContactAggregator;->mPhotoIdUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x2

    move-wide/from16 v0, v16

    invoke-virtual {v4, v6, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    goto :goto_4
.end method

.method protected updateStarred(J)V
    .locals 4
    .parameter "rawContactId"

    .prologue
    .line 3341
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getContactId(J)J

    move-result-wide v0

    .line 3342
    .local v0, contactId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3353
    :goto_0
    return-void

    .line 3346
    :cond_0
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 3347
    iget-object v2, p0, Lcom/android/providers/contacts/ContactAggregator;->mStarredUpdate:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 3350
    sget-object v2, Lcom/android/providers/contacts/ContactAggregator;->mNotifyDialerScheduler:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-virtual {v2, v0, v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->notifyModifyContact(J)V

    goto :goto_0
.end method

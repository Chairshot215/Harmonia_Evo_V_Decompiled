.class public Lcom/android/providers/contacts/LegacyContactImporter;
.super Ljava/lang/Object;
.source "LegacyContactImporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/LegacyContactImporter$DeletedRawContactInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$DeletedPeopleQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$CallsQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhotoIdUpdate;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhotoInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhotosQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$HasPhoneNumberUpdate;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhoneLookupInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhoneInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$PhonesQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$PostalInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$ImInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$EmailInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$ContactMethodsQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$OrganizationInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$OrganizationsQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$NoteInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$StructuredNameInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$ContactsInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$RawContactsInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;,
        Lcom/android/providers/contacts/LegacyContactImporter$GroupsInsert;,
        Lcom/android/providers/contacts/LegacyContactImporter$GroupsQuery;
    }
.end annotation


# static fields
.field private static final DATABASE_MIN_SIZE:J = 0x5L

.field private static final DATABASE_NAME:Ljava/lang/String; = "contacts.db"

.field private static final DATABASE_SIZE_MULTIPLIER:J = 0x4L

.field public static final DEFAULT_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final DELAY_BETWEEN_ATTEMPTS:I = 0x7d0

.field private static final INSERT_BATCH_SIZE:I = 0xc8

.field private static final MAX_ATTEMPTS:I = 0x5

.field public static final TAG:Ljava/lang/String; = "LegacyContactImporter"


# instance fields
.field protected mBatchCounter:I

.field protected mContactCount:I

.field protected final mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

.field protected final mContext:Landroid/content/Context;

.field protected mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field protected mEmailMimetypeId:J

.field private mEstimatedStorageRequirement:J

.field protected mEventMimetypeId:J

.field protected mGroupMembershipMimetypeId:J

.field protected mImMimetypeId:J

.field protected mImportPeopleIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

.field protected mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

.field protected mNoteMimetypeId:J

.field protected mOrganizationMimetypeId:J

.field protected mPhoneMimetypeId:J

.field protected mPhoneticNameAvailable:Z

.field protected mPhotoMimetypeId:J

.field protected mPostalMimetypeId:J

.field private mResolver:Landroid/content/ContentResolver;

.field protected mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected mStructuredNameMimetypeId:J

.field protected mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsProvider2;)V
    .locals 2
    .parameter "context"
    .parameter "contactsProvider"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImportPeopleIdList:Ljava/util/ArrayList;

    .line 110
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    .line 113
    iput-object p1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    .line 115
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    .line 116
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->getNameLookupBuilder()Lcom/android/providers/contacts/NameLookupBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    .line 117
    return-void
.end method

.method private checkForImportFailureTest()V
    .locals 5

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT COUNT(*) FROM settings WHERE key=\'TEST\'"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 256
    .local v0, isTest:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 257
    new-instance v2, Landroid/database/sqlite/SQLiteException;

    const-string v3, "Testing import failure."

    invoke-direct {v2, v3}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_0
    return-void
.end method

.method private importPhotos()V
    .locals 11

    .prologue
    const/4 v3, 0x0

    .line 1178
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data15,data_sync1) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1179
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE contacts SET photo_id=? WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1180
    .local v10, photoIdUpdate:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "photos"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PhotosQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1183
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-virtual {p0, v8, v9, v10}, Lcom/android/providers/contacts/LegacyContactImporter;->insertPhoto(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1187
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1188
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1189
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1187
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1188
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1189
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1191
    return-void
.end method

.method private updateDisplayNamesAndLookupKeys()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1371
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1374
    .local v6, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1375
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1376
    .local v7, rawContactId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)Ljava/lang/String;

    .line 1377
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/providers/contacts/ContactsProvider2;->updateLookupKeyForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1380
    .end local v7           #rawContactId:J
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1382
    return-void
.end method


# virtual methods
.method protected addPredefinedData()V
    .locals 0

    .prologue
    .line 1484
    return-void
.end method

.method protected bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V
    .locals 0
    .parameter "insert"
    .parameter "index"
    .parameter "string"

    .prologue
    .line 1451
    if-nez p3, :cond_0

    .line 1452
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 1456
    :goto_0
    return-void

    .line 1454
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected getAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "accountType"
    .parameter "originalName"

    .prologue
    .line 1480
    return-object p2
.end method

.method protected getAccountType(I)Ljava/lang/String;
    .locals 1
    .parameter "ext_account"

    .prologue
    .line 1476
    const-string v0, "com.google"

    return-object v0
.end method

.method public getEstimatedStorageRequirement()J
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    return-wide v0
.end method

.method protected importCalls()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 1337
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "calls"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$CallsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1340
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1341
    invoke-virtual {p0, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->insertCall(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1344
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1346
    return-void
.end method

.method protected importContactMethods()V
    .locals 15

    .prologue
    const/4 v3, 0x0

    .line 914
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 915
    .local v9, emailInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 916
    .local v10, imInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data14) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 917
    .local v14, postalInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "contact_methods"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$ContactMethodsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 920
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 923
    .local v12, personId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImportPeopleIdList:Ljava/util/ArrayList;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 928
    .local v11, kind:I
    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 930
    :pswitch_0
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertEmail(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 943
    .end local v11           #kind:I
    .end local v12           #personId:J
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 944
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 945
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 946
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 934
    .restart local v11       #kind:I
    .restart local v12       #personId:J
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, v8, v10}, Lcom/android/providers/contacts/LegacyContactImporter;->insertIm(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    goto :goto_0

    .line 938
    :pswitch_2
    invoke-virtual {p0, v8, v14}, Lcom/android/providers/contacts/LegacyContactImporter;->insertPostal(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 943
    .end local v11           #kind:I
    .end local v12           #personId:J
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 944
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 945
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 946
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 949
    return-void

    .line 928
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public importContacts()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v12, 0x400

    const-wide/16 v10, 0x5

    const/4 v6, 0x1

    .line 120
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContext:Landroid/content/Context;

    const-string v8, "contacts.db"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 123
    const-string v7, "LegacyContactImporter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Legacy contacts database does not exist at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    :goto_0
    return v6

    .line 127
    :cond_1
    const-string v7, "LegacyContactImporter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Importing contacts from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/4 v7, 0x5

    if-ge v2, v7, :cond_4

    .line 131
    const/4 v7, 0x0

    const/4 v8, 0x1

    :try_start_0
    invoke-static {v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    iput-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importContactsFromLegacyDb()V

    .line 133
    const-string v7, "LegacyContactImporter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Imported legacy contacts: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v7}, Lcom/android/providers/contacts/ContactsProvider2;->notifyChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_0

    .line 147
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v7, "LegacyContactImporter"

    const-string v8, "Database import exception. Will retry in 2000ms"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_2

    .line 147
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 129
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v7, :cond_3

    .line 147
    iget-object v7, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    throw v6

    .line 152
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    .line 153
    .local v3, oldDatabaseSize:J
    const-wide/16 v6, 0x4

    mul-long/2addr v6, v3

    div-long/2addr v6, v12

    div-long/2addr v6, v12

    iput-wide v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    .line 154
    iget-wide v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    cmp-long v6, v6, v10

    if-gez v6, :cond_5

    .line 155
    iput-wide v10, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEstimatedStorageRequirement:J

    .line 158
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method protected importContactsFromLegacyDb()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    .line 175
    .local v0, version:I
    const/16 v1, 0x4e

    if-ge v0, v1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 179
    :cond_0
    const/16 v1, 0x50

    if-ge v0, v1, :cond_1

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getDatabaseHelper()Landroid/database/sqlite/SQLiteOpenHelper;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iput-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 184
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 187
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->wipeUserData()V

    .line 190
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mStructuredNameMimetypeId:J

    .line 191
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mNoteMimetypeId:J

    .line 192
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mOrganizationMimetypeId:J

    .line 193
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneMimetypeId:J

    .line 194
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEmailMimetypeId:J

    .line 195
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImMimetypeId:J

    .line 196
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPostalMimetypeId:J

    .line 197
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/photo"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhotoMimetypeId:J

    .line 198
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mGroupMembershipMimetypeId:J

    .line 201
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v1, v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEventMimetypeId:J

    .line 203
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->getNameSplitter()Lcom/android/providers/contacts/NameSplitter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    .line 205
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->checkForImportFailureTest()V

    .line 215
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsProvider2;->wipeData()V

    .line 217
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importGroups()V

    .line 218
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importPeople()V

    .line 219
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importOrganizations()V

    .line 220
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importPhones()V

    .line 221
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importContactMethods()V

    .line 222
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importPhotos()V

    .line 223
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importGroupMemberships()V

    .line 224
    invoke-direct {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->updateDisplayNamesAndLookupKeys()V

    .line 226
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importOtherData()V

    .line 231
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importDeletedPeople()V

    .line 233
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateAllVisible()V

    .line 235
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    iget-object v1, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 240
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->importCalls()V

    .line 243
    invoke-virtual {p0}, Lcom/android/providers/contacts/LegacyContactImporter;->addPredefinedData()V

    goto/16 :goto_0

    .line 237
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method protected importDeletedPeople()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1418
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO raw_contacts(account_name,account_type,sourceid,deleted,aggregation_mode) VALUES (?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1419
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "_deleted_people"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$DeletedPeopleQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1422
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1423
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertDeletedPerson(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1426
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1427
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1426
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1427
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1429
    return-void
.end method

.method protected importGroupMemberships()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 1255
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1256
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groupmembership"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$GroupMembershipQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1259
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertGroupMembership(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1263
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1264
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1263
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1264
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1266
    return-void
.end method

.method protected importGroups()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 310
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO groups(_id,title,notes,system_id,dirty,group_visible,account_name,account_type,sourceid) VALUES (?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 311
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "groups"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$GroupsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 314
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertGroup(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 319
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 318
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 319
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 321
    return-void
.end method

.method protected importOrganizations()V
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 789
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data4,data2,data3) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 790
    .local v9, insert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "organizations"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$OrganizationsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 793
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertOrganization(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 797
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 798
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 797
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 798
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 800
    return-void
.end method

.method protected importOtherData()V
    .locals 0

    .prologue
    .line 1488
    return-void
.end method

.method protected importPeople()V
    .locals 15

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO raw_contacts(_id,contact_id,custom_ringtone,dirty,last_time_contacted,send_to_voicemail,starred,times_contacted,sync1,sync2,account_name,account_type,sourceid,display_name) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v13

    .line 542
    .local v13, rawContactInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO contacts(_id,custom_ringtone,last_time_contacted,send_to_voicemail,starred,times_contacted,name_raw_contact_id) VALUES (?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 543
    .local v9, contactInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1,data4,data2,data5,data3,data6,data10,data9,data8,data7,data11) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v14

    .line 545
    .local v14, structuredNameInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,data1) VALUES (?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 547
    .local v12, noteInsert:Landroid/database/sqlite/SQLiteStatement;
    :try_start_0
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_DISPLAY_NAME_WITH_PHONETIC_NAME:[Ljava/lang/String;

    .line 550
    .local v2, columns:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "people"

    const-string v3, "name IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 553
    .local v8, c:Landroid/database/Cursor;
    :goto_1
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p0, v8, v13}, Lcom/android/providers/contacts/LegacyContactImporter;->insertRawContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J

    .line 555
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 556
    invoke-virtual {p0, v8, v12}, Lcom/android/providers/contacts/LegacyContactImporter;->insertNote(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 557
    iget v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 560
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 580
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 581
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 582
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 583
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 547
    :cond_0
    :try_start_3
    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_DISPLAY_NAME_WITHOUT_PHONETIC_NAME:[Ljava/lang/String;

    goto :goto_0

    .line 560
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #c:Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 563
    iget-boolean v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITH_PHONETIC_NAME:[Ljava/lang/String;

    .line 566
    :goto_2
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "people"

    const-string v3, "name IS NOT NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    .line 569
    :goto_3
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 570
    invoke-virtual {p0, v8, v13}, Lcom/android/providers/contacts/LegacyContactImporter;->insertRawContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v10

    .line 571
    .local v10, id:J
    invoke-virtual {p0, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 572
    invoke-virtual {p0, v8, v14}, Lcom/android/providers/contacts/LegacyContactImporter;->insertStructuredName(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 573
    invoke-virtual {p0, v8, v12}, Lcom/android/providers/contacts/LegacyContactImporter;->insertNote(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V

    .line 574
    iget v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactCount:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    .line 577
    .end local v10           #id:J
    :catchall_2
    move-exception v0

    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 563
    :cond_2
    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PeopleQuery;->COLUMNS_WITHOUT_PHONETIC_NAME:[Ljava/lang/String;

    goto :goto_2

    .line 577
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 580
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 581
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 582
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 583
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 585
    return-void
.end method

.method protected importPhones()V
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 1074
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO data(raw_contact_id,mimetype_id,is_primary,is_super_primary,data1,data2,data3,data4,) VALUES (?,?,?,?,?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v10

    .line 1075
    .local v10, phoneInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "INSERT INTO phone_lookup(raw_contact_id,data_id,normalized_number,min_match) VALUES (?,?,?,?)"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v11

    .line 1077
    .local v11, phoneLookupInsert:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "UPDATE contacts SET has_phone_number=1 WHERE _id=?"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v9

    .line 1079
    .local v9, hasPhoneUpdate:Landroid/database/sqlite/SQLiteStatement;
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mSourceDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "phones"

    sget-object v2, Lcom/android/providers/contacts/LegacyContactImporter$PhonesQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1082
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0, v8, v10, v11, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->insertPhone(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1086
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1087
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1088
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1089
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    throw v0

    .line 1086
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1087
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1088
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1089
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 1091
    return-void
.end method

.method protected insert(Landroid/database/sqlite/SQLiteStatement;)J
    .locals 4
    .parameter "insertStatement"

    .prologue
    .line 1460
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 1461
    .local v0, rowId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1462
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Insert failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1465
    :cond_0
    iget v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mBatchCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mBatchCounter:I

    .line 1466
    iget v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mBatchCounter:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_1

    .line 1467
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1468
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1469
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1470
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mBatchCounter:I

    .line 1472
    :cond_1
    return-wide v0
.end method

.method protected insertCall(Landroid/database/Cursor;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1354
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "_id"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1355
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "number"

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "date"

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1357
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "duration"

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1358
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "new"

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1359
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "type"

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1360
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "name"

    const/4 v2, 0x6

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "numberlabel"

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    const-string v1, "numbertype"

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1367
    return-void
.end method

.method protected insertContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 7
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 641
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 642
    .local v0, id:J
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 643
    const/4 v2, 0x2

    const/16 v3, 0x9

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 645
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v4, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 647
    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 649
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {p2, v6, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 651
    const/4 v2, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 653
    const/4 v2, 0x7

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 655
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 656
    return-void
.end method

.method protected insertDeletedPerson(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 4
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v1, 0x1

    .line 1434
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1435
    .local v0, account:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1447
    :goto_0
    return-void

    .line 1439
    :cond_0
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1440
    const/4 v1, 0x2

    const-string v2, "com.google"

    invoke-virtual {p2, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1441
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1443
    const/4 v1, 0x4

    const-wide/16 v2, 0x1

    invoke-virtual {p2, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1444
    const/4 v1, 0x5

    const-wide/16 v2, 0x3

    invoke-virtual {p2, v1, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1446
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto :goto_0
.end method

.method protected insertEmail(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 13
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v12, 0x5

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v8, 0x6

    .line 953
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 954
    .local v1, personId:J
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 956
    .local v5, email:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 957
    iget-wide v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mEmailMimetypeId:J

    invoke-virtual {p2, v10, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 958
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v11, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 959
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v9, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 960
    invoke-virtual {p0, p2, v12, v5}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 961
    const/16 v0, 0x8

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v0, v6}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 962
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v8, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 963
    const/4 v0, 0x7

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p2, v0, v6}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 965
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v9, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 968
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v3

    .line 969
    .local v3, dataId:J
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForEmail(JJLjava/lang/String;)Ljava/lang/String;

    .line 970
    return-void
.end method

.method protected insertGroup(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x7

    .line 326
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 328
    .local v1, id:J
    invoke-virtual {p2, v4, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 329
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v5, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 330
    const/4 v3, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 331
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v7, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 332
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {p2, v8, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 333
    const/4 v3, 0x6

    const-wide/16 v4, 0x1

    invoke-virtual {p2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 335
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 337
    invoke-virtual {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 338
    const/16 v3, 0x8

    const-string v4, "com.google"

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 339
    const/16 v3, 0x9

    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p2, v3, v4}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 345
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 346
    return-void

    .line 341
    :cond_0
    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 342
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 343
    const/16 v3, 0x9

    invoke-virtual {p2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0
.end method

.method protected insertGroupMembership(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 18
    .parameter "c"
    .parameter "insert"

    .prologue
    .line 1271
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 1273
    .local v14, personId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mImportPeopleIdList:Ljava/util/ArrayList;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1277
    :cond_0
    const-wide/16 v12, 0x0

    .line 1278
    .local v12, groupId:J
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1279
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1280
    .local v10, account:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1281
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1283
    .local v16, syncId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "groups"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const-string v5, "sourceid=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1287
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1288
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 1291
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1294
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-nez v2, :cond_2

    .line 1295
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1296
    .local v17, values:Landroid/content/ContentValues;
    const-string v2, "account_name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    const-string v2, "account_type"

    const-string v3, "com.google"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    const-string v2, "group_visible"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1299
    const-string v2, "sourceid"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mTargetDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "groups"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v12

    .line 1307
    .end local v10           #account:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #syncId:Ljava/lang/String;
    .end local v17           #values:Landroid/content/ContentValues;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v14, v15}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1308
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mGroupMembershipMimetypeId:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1309
    const/4 v2, 0x3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v12, v13}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1310
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto/16 :goto_0

    .line 1291
    .restart local v10       #account:Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v16       #syncId:Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1304
    .end local v10           #account:Ljava/lang/String;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v16           #syncId:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    goto :goto_1
.end method

.method protected insertIm(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x6

    .line 975
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 977
    .local v0, personId:J
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 978
    iget-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImMimetypeId:J

    invoke-virtual {p2, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 979
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v6, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 980
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v7, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 981
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v8, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 982
    const/16 v2, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 983
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v4, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 984
    const/4 v2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 985
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 986
    return-void
.end method

.method protected insertNote(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 6
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v5, 0x2

    .line 732
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 734
    .local v2, notes:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 743
    :goto_0
    return-void

    .line 738
    :cond_0
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 739
    .local v0, id:J
    const/4 v3, 0x1

    invoke-virtual {p2, v3, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 740
    iget-wide v3, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mNoteMimetypeId:J

    invoke-virtual {p2, v5, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 741
    const/4 v3, 0x3

    invoke-virtual {p0, p2, v3, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 742
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto :goto_0
.end method

.method protected insertOrganization(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    .line 805
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 807
    .local v0, id:J
    iget-object v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImportPeopleIdList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 821
    :goto_0
    return-void

    .line 811
    :cond_0
    invoke-virtual {p2, v5, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 812
    iget-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mOrganizationMimetypeId:J

    invoke-virtual {p2, v6, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 813
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v4, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 814
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v7, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 816
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v8, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 817
    const/4 v2, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 818
    const/4 v2, 0x7

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 819
    const/16 v2, 0x8

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 820
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    goto :goto_0
.end method

.method protected insertPhone(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter "c"
    .parameter "phoneInsert"
    .parameter "phoneLookupInsert"
    .parameter "hasPhoneUpdate"

    .prologue
    .line 1096
    const-wide/16 v4, -0x1

    .line 1097
    .local v4, lastUpdatedContact:J
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1099
    .local v2, id:J
    iget-object v8, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImportPeopleIdList:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1134
    :cond_0
    :goto_0
    return-void

    .line 1103
    :cond_1
    const/4 v8, 0x2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1104
    .local v7, number:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1105
    .local v6, normalizedNumber:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1106
    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1108
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {p2, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1109
    const/4 v8, 0x2

    iget-wide v9, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneMimetypeId:J

    invoke-virtual {p2, v8, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1110
    const/4 v8, 0x3

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1111
    const/4 v8, 0x4

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1112
    const/4 v8, 0x5

    invoke-virtual {p0, p2, v8, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1113
    const/4 v8, 0x6

    const/4 v9, 0x1

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1114
    const/4 v8, 0x7

    const/4 v9, 0x3

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1115
    const/16 v8, 0x8

    invoke-virtual {p0, p2, v8, v6}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1117
    const/4 v8, 0x4

    const/4 v9, 0x4

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, p2, v8, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1119
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    .line 1120
    .local v0, dataId:J
    if-eqz v6, :cond_0

    .line 1121
    const/4 v8, 0x1

    invoke-virtual {p3, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1122
    const/4 v8, 0x2

    invoke-virtual {p3, v8, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1123
    const/4 v8, 0x3

    invoke-virtual {p3, v8, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1124
    const/4 v8, 0x4

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p3, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 1126
    invoke-virtual {p0, p3}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1128
    cmp-long v8, v4, v2

    if-eqz v8, :cond_0

    .line 1129
    move-wide v4, v2

    .line 1130
    const/4 v8, 0x1

    invoke-virtual {p4, v8, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1131
    invoke-virtual {p4}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0
.end method

.method protected insertPhoto(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 11
    .parameter "c"
    .parameter "insert"
    .parameter "photoIdUpdate"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1196
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1202
    .local v1, personId:J
    iget-object v5, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImportPeopleIdList:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1206
    invoke-virtual {p2, v7, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1207
    iget-wide v5, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhotoMimetypeId:J

    invoke-virtual {p2, v8, v5, v6}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1208
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-virtual {p2, v9, v5}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 1210
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, account:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1212
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v10, v5}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1217
    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v3

    .line 1218
    .local v3, rowId:J
    invoke-virtual {p3, v7, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1219
    invoke-virtual {p3, v8, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 1220
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 1214
    .end local v3           #rowId:J
    :cond_2
    invoke-virtual {p2, v10}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_1
.end method

.method protected insertPostal(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x6

    .line 991
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 993
    .local v0, personId:J
    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 994
    iget-wide v2, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mPostalMimetypeId:J

    invoke-virtual {p2, v5, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 995
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v6, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 996
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v7, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 998
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v8, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 999
    const/16 v2, 0x8

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1000
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v4, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1001
    const/4 v2, 0x7

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 1002
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 1003
    return-void
.end method

.method protected insertRawContact(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)J
    .locals 9
    .parameter "c"
    .parameter "insert"

    .prologue
    .line 589
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 591
    .local v4, id:J
    iget-object v6, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mImportPeopleIdList:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    const/4 v6, 0x1

    invoke-virtual {p2, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 594
    const/4 v6, 0x2

    invoke-virtual {p2, v6, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 595
    const/4 v6, 0x3

    const/16 v7, 0x9

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 597
    const/4 v6, 0x4

    const/16 v7, 0xf

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 599
    const/4 v6, 0x5

    const/4 v7, 0x4

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 601
    const/4 v6, 0x6

    const/16 v7, 0xa

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 603
    const/4 v6, 0x7

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 605
    const/16 v6, 0x8

    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {p2, v6, v7, v8}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 607
    const/16 v6, 0x9

    const/16 v7, 0xd

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 609
    const/16 v6, 0xa

    const/16 v7, 0xe

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 611
    const/16 v6, 0xe

    const/4 v7, 0x1

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 615
    const-string v6, "extra_group"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 616
    .local v3, extra_group_index:I
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 618
    .local v2, extra_group:I
    const/16 v6, 0xb

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, account:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->getAccountType(I)Ljava/lang/String;

    move-result-object v1

    .line 621
    .local v1, accountType:Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->getAccountName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 624
    const/16 v6, 0xb

    invoke-virtual {p0, p2, v6, v0}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 626
    const/16 v6, 0xc

    invoke-virtual {p0, p2, v6, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 628
    const/16 v6, 0xd

    const/16 v7, 0xc

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, p2, v6, v7}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 634
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    .line 635
    return-wide v4

    .line 630
    :cond_0
    const/16 v6, 0xb

    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 631
    const/16 v6, 0xc

    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 632
    const/16 v6, 0xd

    invoke-virtual {p2, v6}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_0
.end method

.method protected insertStructuredName(Landroid/database/Cursor;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 22
    .parameter "c"
    .parameter "insert"

    .prologue
    .line 661
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 662
    .local v8, name:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 668
    .local v4, id:J
    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 669
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mStructuredNameMimetypeId:J

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 670
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v8}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 672
    new-instance v21, Lcom/android/providers/contacts/NameSplitter$Name;

    invoke-direct/range {v21 .. v21}, Lcom/android/providers/contacts/NameSplitter$Name;-><init>()V

    .line 673
    .local v21, splitName:Lcom/android/providers/contacts/NameSplitter$Name;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v8}, Lcom/android/providers/contacts/NameSplitter;->split(Lcom/android/providers/contacts/NameSplitter$Name;Ljava/lang/String;)V

    .line 675
    const/4 v3, 0x4

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/contacts/NameSplitter$Name;->getPrefix()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 677
    const/4 v3, 0x5

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/contacts/NameSplitter$Name;->getGivenNames()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 679
    const/4 v3, 0x6

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/contacts/NameSplitter$Name;->getMiddleName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 681
    const/4 v3, 0x7

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/contacts/NameSplitter$Name;->getFamilyName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 683
    const/16 v3, 0x8

    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/contacts/NameSplitter$Name;->getSuffix()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    const/4 v9, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v3, v0, v9, v10}, Lcom/android/providers/contacts/NameSplitter;->join(Lcom/android/providers/contacts/NameSplitter$Name;ZZ)Ljava/lang/String;

    move-result-object v19

    .line 686
    .local v19, joined:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 688
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mPhoneticNameAvailable:Z

    if-eqz v3, :cond_2

    .line 689
    const/16 v3, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 690
    .local v20, phoneticName:Ljava/lang/String;
    if-eqz v20, :cond_2

    .line 691
    const/16 v3, 0x20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    .line 692
    .local v18, index:I
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_4

    .line 693
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 701
    .end local v18           #index:I
    .end local v20           #phoneticName:Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/providers/contacts/NameSplitter;->guessNameStyle(Lcom/android/providers/contacts/NameSplitter$Name;)V

    .line 703
    invoke-virtual/range {v21 .. v21}, Lcom/android/providers/contacts/NameSplitter$Name;->getFullNameStyle()I

    move-result v17

    .line 704
    .local v17, fullNameStyle:I
    const/16 v3, 0x9

    move/from16 v0, v17

    int-to-long v9, v0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 706
    const/16 v3, 0xa

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 708
    const/16 v3, 0xb

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 710
    const/16 v3, 0xc

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/providers/contacts/LegacyContactImporter;->bindString(Landroid/database/sqlite/SQLiteStatement;ILjava/lang/String;)V

    .line 712
    const/16 v3, 0xd

    move-object/from16 v0, v21

    iget v9, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticNameStyle:I

    int-to-long v9, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 715
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/LegacyContactImporter;->insert(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v6

    .line 717
    .local v6, dataId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameLookupBuilder:Lcom/android/providers/contacts/NameLookupBuilder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mNameSplitter:Lcom/android/providers/contacts/NameSplitter;

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/android/providers/contacts/NameSplitter;->getAdjustedFullNameStyle(I)I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/android/providers/contacts/NameLookupBuilder;->insertNameLookup(JJLjava/lang/String;I)V

    .line 720
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    if-nez v3, :cond_3

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 723
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/providers/contacts/LegacyContactImporter;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticMiddleName:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-wide v10, v4

    move-wide v12, v6

    invoke-virtual/range {v9 .. v16}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->insertNameLookupForPhoneticName(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 695
    .end local v6           #dataId:J
    .end local v17           #fullNameStyle:I
    .restart local v18       #index:I
    .restart local v20       #phoneticName:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticFamilyName:Ljava/lang/String;

    .line 696
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    iput-object v3, v0, Lcom/android/providers/contacts/NameSplitter$Name;->phoneticGivenName:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method protected wipeUserData()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/providers/contacts/LegacyContactImporter;->mContactsProvider:Lcom/android/providers/contacts/ContactsProvider2;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsProvider2;->wipeData()V

    .line 168
    return-void
.end method

.class public Lcom/android/htccontacts/model/GoogleAccountType;
.super Lcom/android/htccontacts/model/BaseAccountType;
.source "GoogleAccountType.java"


# static fields
.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final COLUMNS:[Ljava/lang/String; = null

.field protected static final FLAGS_RELATION:I = 0x2061

.field private static final mExtensionPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "com.google.android.apps.plus"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/htccontacts/model/GoogleAccountType;->mExtensionPackages:Ljava/util/List;

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "sourceid"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "should_sync"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "auto_add"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "favorites"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htccontacts/model/GoogleAccountType;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "resPackageName"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/htccontacts/model/BaseAccountType;-><init>()V

    .line 70
    const-string v0, "com.google"

    iput-object v0, p0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/android/htccontacts/model/AccountType;->resPackageName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/android/htccontacts/model/AccountType;->summaryResPackageName:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 85
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 88
    invoke-direct {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindRelation(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 91
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/model/GoogleAccountType;->addDataKindHtcEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    .line 93
    return-void
.end method

.method private addDataKindRelation(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 8
    .parameter "context"

    .prologue
    const v2, 0x7f0a005c

    const/16 v7, 0xe

    const/4 v4, 0x1

    .line 147
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/relation"

    const/16 v3, 0xa0

    const v5, 0x7f030077

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/GoogleAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 149
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$RelationActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$RelationActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 150
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 152
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 153
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 154
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/GoogleAccountType;->buildRelationType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 172
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 175
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    return-object v6
.end method

.method public static final attempStarred(Landroid/content/Context;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 0
    .parameter "context"
    .parameter "state"

    .prologue
    .line 266
    return-void
.end method

.method private static final attempStarredGroupMembershlp(Lcom/android/htccontacts/model/EntityDelta;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 20
    .parameter "state"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "context"
    .parameter "allowRecur"

    .prologue
    .line 313
    const-string v10, "Starred in Android"

    .line 315
    .local v10, STARRED_IN_ANDROID:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 317
    .local v4, resolver:Landroid/content/ContentResolver;
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/htccontacts/model/GoogleAccountType;->COLUMNS:[Ljava/lang/String;

    const-string v7, "title = ? AND account_name =? AND account_type =?  AND favorites = 1"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p1, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 323
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 324
    .local v15, myContactsExists:Z
    const-wide/16 v13, -0x1

    .line 326
    .local v13, groupSourceId:J
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 327
    const/4 v5, 0x0

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 328
    const/4 v15, 0x1

    .line 330
    :cond_0
    const/4 v5, 0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    int-to-long v13, v5

    .line 331
    if-eqz v15, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v5, v13, v5

    if-lez v5, :cond_3

    .line 339
    :cond_1
    if-eqz v15, :cond_4

    if-nez p0, :cond_4

    .line 394
    :cond_2
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 396
    return-void

    .line 335
    :cond_3
    const-wide/16 v13, -0x1

    goto :goto_0

    .line 343
    :cond_4
    :try_start_1
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 344
    .local v19, values:Landroid/content/ContentValues;
    const-string v5, "mimetype"

    const-string v6, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    if-nez v15, :cond_6

    .line 348
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 349
    .local v16, newGroup:Landroid/content/ContentValues;
    const-string v5, "title"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v5, "account_name"

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v5, "account_type"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v5, "favorites"

    const-string v6, "1"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v5, "group_visible"

    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcom/htc/util/contacts/ContactsUtility;->isVisibleForAccountType(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 355
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v17, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const-string v6, "title=? AND account_name=?  AND account_type=?  AND favorites =1 "

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v10, v7, v8

    const/4 v8, 0x1

    aput-object p1, v7, v8

    const/4 v8, 0x2

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :try_start_2
    const-string v5, "com.android.contacts"

    move-object/from16 v0, v17

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v18

    .line 371
    .local v18, results:[Landroid/content/ContentProviderResult;
    const-string v5, "data1"

    const/4 v6, 0x1

    aget-object v6, v18, v6

    iget-object v6, v6, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_2 .. :try_end_2} :catch_1

    .line 390
    .end local v16           #newGroup:Landroid/content/ContentValues;
    .end local v17           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v18           #results:[Landroid/content/ContentProviderResult;
    :cond_5
    :goto_2
    if-eqz p0, :cond_2

    .line 391
    :try_start_3
    invoke-static/range {v19 .. v19}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/htccontacts/model/EntityDelta;->addEntry(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 394
    .end local v19           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    .line 372
    .restart local v16       #newGroup:Landroid/content/ContentValues;
    .restart local v17       #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v19       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    .line 373
    .local v12, e:Landroid/os/RemoteException;
    :try_start_4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Problem querying for groups"

    invoke-direct {v5, v6, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 374
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 376
    .local v12, e:Landroid/content/OperationApplicationException;
    if-eqz p4, :cond_2

    .line 377
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/android/htccontacts/model/GoogleAccountType;->attempStarredGroupMembershlp(Lcom/android/htccontacts/model/EntityDelta;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 383
    .end local v12           #e:Landroid/content/OperationApplicationException;
    .end local v16           #newGroup:Landroid/content/ContentValues;
    .end local v17           #operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_6
    const-wide/16 v5, -0x1

    cmp-long v5, v13, v5

    if-eqz v5, :cond_5

    .line 384
    const-string v5, "data1"

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private static final clearStarredMemberInfo(Lcom/android/htccontacts/model/EntityDelta;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 15
    .parameter "state"
    .parameter "accountName"
    .parameter "accountType"
    .parameter "context"

    .prologue
    .line 270
    const-string v6, "Starred in Android"

    .line 271
    .local v6, STARRED_IN_ANDROID:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 272
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 273
    .local v11, memberValuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v11, :cond_1

    .line 306
    :cond_0
    return-void

    .line 276
    :cond_1
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/htccontacts/model/GoogleAccountType;->COLUMNS:[Ljava/lang/String;

    const-string v3, "title = ? AND account_name =? AND account_type =?  AND favorites = 1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 282
    .local v7, cursor:Landroid/database/Cursor;
    const-wide/16 v13, -0x1

    .line 283
    .local v13, starredGroupId:J
    if-eqz v7, :cond_3

    .line 285
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 286
    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v13

    .line 289
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 293
    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 294
    .local v8, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v1, "data1"

    invoke-virtual {v8, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 295
    .local v12, rowId:Ljava/lang/String;
    const/4 v9, -0x1

    .line 297
    .local v9, gId:I
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 302
    :goto_1
    int-to-long v1, v9

    cmp-long v1, v1, v13

    if-nez v1, :cond_4

    .line 303
    invoke-virtual {v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 289
    .end local v8           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v9           #gId:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #rowId:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 298
    .restart local v8       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v9       #gId:I
    .restart local v10       #i$:Ljava/util/Iterator;
    .restart local v12       #rowId:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static final createMyContactsIfNotExist(Landroid/accounts/Account;Landroid/content/Context;)V
    .locals 0
    .parameter "account"
    .parameter "context"

    .prologue
    .line 230
    return-void
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 127
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 131
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildEmailType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 141
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a005f

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    return-object v0
.end method

.method protected addDataKindEvent(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 9
    .parameter "context"

    .prologue
    const v2, 0x7f0a005b

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 182
    new-instance v0, Lcom/android/htccontacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/16 v3, 0x96

    const/4 v5, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/htccontacts/model/DataKind;-><init>(Ljava/lang/String;IIZI)V

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/model/GoogleAccountType;->addKind(Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v6

    .line 184
    .local v6, kind:Lcom/android/htccontacts/model/DataKind;
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/htccontacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionHeader:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 185
    new-instance v0, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/htccontacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->actionBody:Lcom/android/htccontacts/model/AccountType$StringInflater;

    .line 187
    const-string v0, "data2"

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 188
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 189
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 190
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 191
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v8, v4}, Lcom/android/htccontacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/htccontacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4, v7}, Lcom/android/htccontacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v7}, Lcom/android/htccontacts/model/GoogleAccountType;->buildEventType(IZ)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 199
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 202
    iget-object v0, v6, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v4}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    return-object v6
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 102
    invoke-super {p0, p1}, Lcom/android/htccontacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v0

    .line 104
    .local v0, kind:Lcom/android/htccontacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    .line 106
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/model/GoogleAccountType;->buildPhoneType(I)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 118
    iget-object v1, v0, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/htccontacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0a005e

    invoke-direct {v2, v3, v4, v5}, Lcom/android/htccontacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public getExtensionPackageNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    sget-object v0, Lcom/android/htccontacts/model/GoogleAccountType;->mExtensionPackages:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 209
    const v0, -0x763d3e

    return v0
.end method

.method public getSideBarColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 214
    const v0, -0xa44b4c

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method

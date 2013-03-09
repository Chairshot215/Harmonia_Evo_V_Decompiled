.class public Lcom/android/phone/SimContacts;
.super Lcom/android/phone/ADNList;
.source "SimContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;,
        Lcom/android/phone/SimContacts$NamePhoneTypePair;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google.GAIA"

.field private static final COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final DIALOG_IMPORT_ALL:I = 0x64

.field protected static final EMAIL_COLUMN:I = 0x6

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field private static final IMPORT_CHUNK_SIZE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "SimContacts"

.field private static final MENU_IMPORT_ALL:I = 0x2

.field private static final MENU_IMPORT_ONE:I = 0x1

.field private static final MSG_IMPORT_COMPLETE:I = 0x1

.field protected static final NAME_COLUMN:I = 0x0

.field protected static final NUMBER_COLUMN:I = 0x1

.field static final sEmptyContentValues:Landroid/content/ContentValues;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mHandler:Landroid/os/Handler;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    .line 81
    sget-object v0, Lcom/android/internal/telephony/IccContract$IccPhonebook;->COLUMN_NAMES:[Ljava/lang/String;

    sput-object v0, Lcom/android/phone/SimContacts;->COLUMN_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/ADNList;-><init>()V

    .line 122
    new-instance v0, Lcom/android/phone/SimContacts$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SimContacts$1;-><init>(Lcom/android/phone/SimContacts;)V

    iput-object v0, p0, Lcom/android/phone/SimContacts;->mHandler:Landroid/os/Handler;

    .line 466
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimContacts;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SimContacts;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SimContacts;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/phone/SimContacts;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/util/ArrayList;)Z
    .locals 24
    .parameter "cursor"
    .parameter "resolver"
    .parameter "account"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/content/ContentResolver;",
            "Landroid/accounts/Account;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 192
    .local p3, test:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v18, Lcom/android/phone/SimContacts$NamePhoneTypePair;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/android/phone/SimContacts$NamePhoneTypePair;-><init>(Ljava/lang/String;)V

    .line 194
    .local v18, namePhoneTypePair:Lcom/android/phone/SimContacts$NamePhoneTypePair;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 195
    .local v17, name:Ljava/lang/String;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/phone/SimContacts$NamePhoneTypePair;->phoneType:I

    move/from16 v21, v0

    .line 196
    .local v21, phoneType:I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 197
    .local v20, phoneNumber:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, emailAddresses:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    const-string v2, ","

    invoke-virtual {v13, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 205
    .local v12, emailAddressArray:[Ljava/lang/String;
    :goto_0
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v19, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 209
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v16, 0x0

    .line 210
    .local v16, myGroupsId:Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 211
    const-string v2, "account_name"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 212
    const-string v2, "account_type"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 215
    const-string v2, "com.google.GAIA"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    sget-object v3, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v5, "sourceid"

    aput-object v5, v4, v2

    const-string v5, "title=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "System Group: My Contacts"

    aput-object v7, v6, v2

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 221
    .local v23, tmpCursor:Landroid/database/Cursor;
    if-eqz v23, :cond_0

    :try_start_0
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 222
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v16

    .line 225
    :cond_0
    if-eqz v23, :cond_1

    .line 226
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 233
    .end local v23           #tmpCursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 236
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 237
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 238
    const-string v2, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 239
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 242
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 243
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 244
    const-string v2, "data2"

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 245
    const-string v2, "data1"

    move-object/from16 v0, v20

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 246
    const-string v2, "is_primary"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 247
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    if-eqz v13, :cond_5

    if-eqz v12, :cond_5

    .line 250
    move-object v8, v12

    .local v8, arr$:[Ljava/lang/String;
    array-length v15, v8

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_2
    if-ge v14, v15, :cond_5

    aget-object v11, v8, v14

    .line 251
    .local v11, emailAddress:Ljava/lang/String;
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 252
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 253
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 254
    const-string v2, "data2"

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 255
    const-string v2, "data1"

    invoke-virtual {v9, v2, v11}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 256
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 202
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v9           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v11           #emailAddress:Ljava/lang/String;
    .end local v12           #emailAddressArray:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #myGroupsId:Ljava/lang/String;
    .end local v19           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    const/4 v12, 0x0

    .restart local v12       #emailAddressArray:[Ljava/lang/String;
    goto/16 :goto_0

    .line 225
    .restart local v9       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v16       #myGroupsId:Ljava/lang/String;
    .restart local v19       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v23       #tmpCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    if-eqz v23, :cond_3

    .line 226
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 231
    .end local v23           #tmpCursor:Landroid/database/Cursor;
    :cond_4
    sget-object v2, Lcom/android/phone/SimContacts;->sEmptyContentValues:Landroid/content/ContentValues;

    invoke-virtual {v9, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 260
    :cond_5
    if-eqz v16, :cond_6

    .line 261
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 262
    const-string v2, "raw_contact_id"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 263
    const-string v2, "mimetype"

    const-string v3, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 264
    const-string v2, "group_sourceid"

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 265
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_6
    const/16 v22, 0x1

    .line 271
    .local v22, success:Z
    :try_start_1
    const-string v2, "com.android.contacts"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_3
    return v22

    .line 272
    :catch_0
    move-exception v10

    .line 273
    .local v10, e:Landroid/os/RemoteException;
    const-string v2, "SimContacts"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/16 v22, 0x0

    .line 278
    goto :goto_3

    .line 275
    .end local v10           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v10

    .line 276
    .local v10, e:Landroid/content/OperationApplicationException;
    const-string v2, "SimContacts"

    const-string v3, "%s: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/16 v22, 0x0

    goto :goto_3
.end method

.method private importOneSimContact(I)V
    .locals 8
    .parameter "position"

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 285
    .local v2, resolver:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v1, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v5, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    invoke-static {v5, v2, v6, v1}, Lcom/android/phone/SimContacts;->actuallyImportOneSimContact(Landroid/database/Cursor;Landroid/content/ContentResolver;Landroid/accounts/Account;Ljava/util/ArrayList;)Z

    move-result v3

    .line 291
    .local v3, success:Z
    if-eqz v3, :cond_0

    const v0, 0x7f0e00a2

    .line 292
    .local v0, msgId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 293
    .local v4, toast:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 298
    .end local v0           #msgId:I
    .end local v1           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #success:Z
    .end local v4           #toast:Landroid/widget/Toast;
    :goto_1
    return-void

    .line 291
    .restart local v1       #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #success:Z
    :cond_0
    const v0, 0x7f0e00a4

    goto :goto_0

    .line 296
    .end local v1           #operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v3           #success:Z
    :cond_1
    const-string v5, "SimContacts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to move the cursor to the position \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected getCursorColumns(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 449
    sget-object v0, Lcom/android/phone/SimContacts;->COLUMN_NAMES:[Ljava/lang/String;

    return-object v0
.end method

.method protected newAdapter()Landroid/widget/CursorAdapter;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 324
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    const v2, 0x7f030053

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "name"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x1020014

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 391
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 400
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 393
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    .line 394
    .local v0, menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    instance-of v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 395
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local v0           #menuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 396
    .local v1, position:I
    invoke-direct {p0, v1}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 397
    const/4 v2, 0x1

    goto :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreate(Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 307
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 308
    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, accountType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 311
    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/SimContacts;->mAccount:Landroid/accounts/Account;

    .line 315
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/SimContacts;->registerForContextMenu(Landroid/view/View;)V

    .line 316
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v4, 0x0

    .line 406
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_1

    move-object v0, p3

    .line 407
    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 409
    .local v0, itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    const v3, 0x1020014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 410
    .local v1, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 411
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 413
    :cond_0
    const/4 v2, 0x1

    const v3, 0x7f0e03da

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 415
    .end local v0           #itemInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v1           #textView:Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 344
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 345
    const/4 v0, 0x2

    const v1, 0x7f0e03db

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 346
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/phone/ADNList;->onDestroy()V

    .line 321
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->unregisterForContextMenu(Landroid/view/View;)V

    .line 322
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 424
    packed-switch p1, :pswitch_data_0

    .line 443
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_0
    return v2

    .line 426
    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getSelectedItemPosition()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, phoneNumber:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    const-string v4, "tel"

    const/4 v5, 0x0

    invoke-static {v4, v1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 435
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1080

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 437
    invoke-virtual {p0, v0}, Lcom/android/phone/SimContacts;->startActivity(Landroid/content/Intent;)V

    .line 438
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->finish()V

    goto :goto_0

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 419
    invoke-direct {p0, p3}, Lcom/android/phone/SimContacts;->importOneSimContact(I)V

    .line 420
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 360
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 386
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    :goto_0
    return v4

    .line 362
    :pswitch_0
    const-string v5, "ANALYTIC_Phone"

    const-string v6, "[SimContacts]Import all"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const v5, 0x7f0e03db

    invoke-virtual {p0, v5}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, title:Ljava/lang/CharSequence;
    const v5, 0x7f0e03dc

    invoke-virtual {p0, v5}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, message:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 367
    .local v0, count:I
    new-instance v2, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;-><init>(Lcom/android/phone/SimContacts;I)V

    .line 369
    .local v2, thread:Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;
    new-instance v5, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v5, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 370
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v3}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v4}, Lcom/htc/app/HtcProgressDialog;->setProgressStyle(I)V

    .line 373
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v6, -0x2

    const v7, 0x7f0e0256

    invoke-virtual {p0, v7}, Lcom/android/phone/SimContacts;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Lcom/htc/app/HtcProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 375
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/app/HtcProgressDialog;->setProgress(I)V

    .line 376
    iget-object v5, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    .line 377
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5, v0}, Lcom/htc/app/HtcProgressDialog;->setMax(I)V

    .line 379
    :cond_0
    iget-object v5, p0, Lcom/android/phone/SimContacts;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v5}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 381
    invoke-virtual {v2}, Lcom/android/phone/SimContacts$HtcImportAllSimContactsThread;->start()V

    goto :goto_0

    .line 360
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 454
    const/16 v0, 0x64

    if-ne v0, p1, :cond_0

    .line 455
    const v0, 0x7f0e03db

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 457
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/ADNList;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 458
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 351
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 352
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/ADNList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 355
    :cond_0
    invoke-super {p0, p1}, Lcom/android/phone/ADNList;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 353
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected resolveIntent()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 330
    invoke-virtual {p0}, Lcom/android/phone/SimContacts;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 333
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/telephony/IccContract$IccPhonebook;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 335
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/phone/ADNList;->mInitialSelection:I

    .line 339
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

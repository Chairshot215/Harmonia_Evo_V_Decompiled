.class public Lcom/google/android/talk/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/DatabaseUtils$RetrieveAccountAvatarTask;,
        Lcom/google/android/talk/DatabaseUtils$AvatarData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_CONNECTION_STATUS_PROJECTION:[Ljava/lang/String;

.field private static final ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

.field public static final AVATAR_PROJECTION:[Ljava/lang/String;

.field private static CONTACT_COLUMN_ID:I

.field private static CONTACT_COLUMN_NICKNAME:I

.field private static final CONTACT_NICKNAME_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "username"

    aput-object v1, v0, v3

    const-string v1, "account_connStatus"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_CONNECTION_STATUS_PROJECTION:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    .line 62
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "data"

    aput-object v1, v0, v3

    const-string v1, "hash"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->AVATAR_PROJECTION:[Ljava/lang/String;

    .line 351
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 354
    sput v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_COLUMN_ID:I

    .line 424
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "nickname"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/talk/DatabaseUtils;->CONTACT_NICKNAME_PROJECTION:[Ljava/lang/String;

    .line 427
    sput v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_COLUMN_NICKNAME:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    return-void
.end method

.method static final IsUserInRosterList(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 9
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    .line 357
    const/4 v7, 0x0

    .line 359
    .local v7, retVal:Z
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v0, "account"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 365
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 366
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 368
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 376
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v7, 0x1

    .line 380
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 386
    :goto_0
    return v7

    .line 380
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 383
    :cond_1
    const-string v0, "IsUserInRosterList"

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static computeAvatarHash([B)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 280
    :try_start_0
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 287
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 288
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/talk/DatabaseUtils;->encodeHex([B)Ljava/lang/String;

    move-result-object v2

    .end local v0           #digest:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 282
    :catch_0
    move-exception v1

    .line 283
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 284
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static decodeAvatar([B)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "data"

    .prologue
    .line 238
    if-nez p0, :cond_0

    .line 239
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    const/16 v3, 0x10

    .line 292
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 294
    .local v0, hex:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 295
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v3, :cond_0

    .line 296
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getAccountIdForUsername(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 9
    .parameter "resolver"
    .parameter "username"

    .prologue
    const/4 v1, 0x0

    .line 147
    const-string v3, "username=?"

    .line 149
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 150
    .local v4, selectionArgs:[Ljava/lang/String;
    aput-object p1, v4, v1

    .line 152
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 158
    .local v6, c:Landroid/database/Cursor;
    const-wide/16 v7, 0x0

    .line 160
    .local v7, retVal:J
    if-eqz v6, :cond_1

    .line 162
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 166
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 172
    :goto_0
    return-wide v7

    .line 166
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 169
    :cond_1
    const-string v0, "getAccountIdForUsername"

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAccountIds(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 8
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 104
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v6, accountIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 113
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 115
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 121
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 125
    :cond_2
    return-object v6

    .line 121
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAllAccountInfos(Landroid/content/ContentResolver;)Ljava/util/List;
    .locals 9
    .parameter "resolver"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/talk/TalkApp$AccountInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v7, accountStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/talk/TalkApp$AccountInfo;>;"
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI_WITH_STATUS:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_CONNECTION_STATUS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 84
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 86
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    :cond_0
    new-instance v6, Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-direct {v6}, Lcom/google/android/talk/TalkApp$AccountInfo;-><init>()V

    .line 89
    .local v6, a:Lcom/google/android/talk/TalkApp$AccountInfo;
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->accountId:J

    .line 90
    invoke-static {v8}, Lcom/google/android/talk/DatabaseUtils;->isSignedIn(Landroid/database/Cursor;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->signedIn:Z

    .line 91
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    .line 92
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 96
    .end local v6           #a:Lcom/google/android/talk/TalkApp$AccountInfo;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 100
    :cond_2
    return-object v7

    .line 96
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getAvatarFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "cursor"
    .parameter "dataColumn"

    .prologue
    .line 245
    invoke-static {p0, p1}, Lcom/google/android/talk/DatabaseUtils;->loadAvatarData(Landroid/database/Cursor;I)[B

    move-result-object v0

    .line 246
    .local v0, rawData:[B
    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->decodeAvatar([B)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static final getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 10
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    .line 392
    const-wide/16 v7, 0x0

    .line 394
    .local v7, pid:J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    .local v9, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    const-string v0, "account"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 400
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 401
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 403
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 409
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 411
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    sget v0, Lcom/google/android/talk/DatabaseUtils;->CONTACT_COLUMN_ID:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 415
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 421
    :goto_0
    return-wide v7

    .line 415
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 418
    :cond_1
    const-string v0, "getIdForContact"

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;
    .locals 9
    .parameter "resolver"
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 432
    const/4 v7, 0x0

    .line 434
    .local v7, nickname:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    const-string v0, "account"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 440
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 441
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 443
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->CONTACT_NICKNAME_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 449
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 451
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    sget v0, Lcom/google/android/talk/DatabaseUtils;->CONTACT_COLUMN_NICKNAME:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 455
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 461
    :goto_0
    return-object v7

    .line 455
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 458
    :cond_1
    const-string v0, "getNicknameForContact"

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUsernameForAccountId(Landroid/content/ContentResolver;Ljava/lang/Long;)Ljava/lang/String;
    .locals 8
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v0, 0x1

    .line 176
    const-string v3, "_id=?"

    .line 178
    .local v3, selection:Ljava/lang/String;
    new-array v4, v0, [Ljava/lang/String;

    .line 179
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 181
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->ACCOUNT_ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 187
    .local v7, c:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 189
    .local v6, accountName:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 191
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 195
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 201
    :goto_0
    return-object v6

    .line 195
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 198
    :cond_1
    const-string v0, "getUsernameForAccountId"

    invoke-static {v0}, Lcom/google/android/talk/DatabaseUtils;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isSignedIn(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 142
    const/4 v1, 0x2

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 143
    .local v0, connectionStatus:I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadAvatarData(Landroid/database/Cursor;I)[B
    .locals 1
    .parameter "cursor"
    .parameter "dataColumn"

    .prologue
    .line 234
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 499
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DatabaseUtils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    return-void
.end method

.method private static logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 503
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Databaseutils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method public static final pruneOldMessageHistory(Landroid/content/ContentResolver;)V
    .locals 23
    .parameter "resolver"

    .prologue
    .line 465
    const-string v20, "gtalk_chat_message_lifetime"

    const-wide/32 v21, 0x240c8400

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 468
    .local v5, chatMsgLifetime:J
    const-string v20, "gtalk_otr_message_lifetime"

    const-wide/32 v21, 0x5265c00

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 471
    .local v10, otrMsgLifetime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 472
    .local v8, now:J
    sub-long v16, v8, v5

    .line 473
    .local v16, ts:J
    sub-long v18, v8, v10

    .line 475
    .local v18, ts2:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .local v4, buf:Ljava/lang/StringBuilder;
    const-string v20, "date"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 479
    .local v14, selection:Ljava/lang/String;
    const/16 v20, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 480
    const-string v20, "date"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x3c

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 481
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 483
    .local v15, selection2:Ljava/lang/String;
    const-string v20, "talk"

    const-string v21, "[Databaseutils] pruneOldMessageHistory"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-object v20, Lcom/google/android/gsf/TalkContract$Messages;->CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v14, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    .line 487
    .local v12, result:I
    sget-object v20, Lcom/google/android/gsf/TalkContract$Messages;->OTR_MESSAGES_CONTENT_URI:Landroid/net/Uri;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v15, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    .line 491
    .local v13, result2:I
    invoke-static {}, Lcom/google/android/talk/TalkApp;->queryDebugLevel()I

    move-result v7

    .line 492
    .local v7, logLevel:I
    const/16 v20, 0x1

    move/from16 v0, v20

    if-lt v7, v0, :cond_0

    .line 493
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "pruneOldMessageHistory: deleted "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " messages and "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " OTR messages"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/talk/DatabaseUtils;->log(Ljava/lang/String;)V

    .line 496
    :cond_0
    return-void
.end method

.method public static queryAvatarCursorForUser(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 7
    .parameter "resolver"
    .parameter "username"
    .parameter "accountId"

    .prologue
    const/4 v0, 0x1

    .line 207
    invoke-static {p2, p3, v0}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v6

    .line 208
    .local v6, cache:Lcom/google/android/talk/AvatarCache;
    invoke-virtual {v6}, Lcom/google/android/talk/AvatarCache;->getAvatarUri()Landroid/net/Uri;

    move-result-object v1

    .line 209
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/talk/DatabaseUtils;->AVATAR_PROJECTION:[Ljava/lang/String;

    const-string v3, "contact=?"

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final removeChatsByContactId(Landroid/content/ContentResolver;J)I
    .locals 6
    .parameter "cr"
    .parameter "contactId"

    .prologue
    .line 315
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 316
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "is_active"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 318
    sget-object v1, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "contact_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static saveAvatar(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/graphics/Bitmap;)V
    .locals 10
    .parameter "resolver"
    .parameter "username"
    .parameter "accountId"
    .parameter "avatar"

    .prologue
    const/4 v9, 0x1

    .line 252
    invoke-static {p2, p3, v9}, Lcom/google/android/talk/AvatarCache;->getInstance(JZ)Lcom/google/android/talk/AvatarCache;

    move-result-object v0

    .line 253
    .local v0, cache:Lcom/google/android/talk/AvatarCache;
    invoke-virtual {v0}, Lcom/google/android/talk/AvatarCache;->getAvatarUri()Landroid/net/Uri;

    move-result-object v4

    .line 254
    .local v4, uri:Landroid/net/Uri;
    if-nez p4, :cond_1

    .line 256
    const-string v6, "contact=?"

    new-array v7, v9, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {p0, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 260
    .local v1, count:I
    if-eq v1, v9, :cond_0

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' returned "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; expected 1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/talk/DatabaseUtils;->log(Ljava/lang/String;)V

    .line 275
    .end local v1           #count:I
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 265
    .local v3, os:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {p4, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 266
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 268
    .local v2, data:[B
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 269
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "contact"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v6, "data"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 271
    const-string v6, "hash"

    invoke-static {v2}, Lcom/google/android/talk/DatabaseUtils;->computeAvatarHash([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0, v4, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

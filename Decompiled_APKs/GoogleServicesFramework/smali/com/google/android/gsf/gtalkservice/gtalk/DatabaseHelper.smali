.class public Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;,
        Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String;

.field private static final CONTACT_PROJECTION:[Ljava/lang/String;

.field private static final GROUP_MEMBERS_PROJECTION:[Ljava/lang/String;

.field public static final OTR_PROJECTION:[Ljava/lang/String;

.field private static final STATUS_MESSAGE_PROJECTION:[Ljava/lang/String;

.field private static sAddAcccountLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "nickname"

    aput-object v1, v0, v3

    const-string v1, "type"

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->CONTACT_PROJECTION:[Ljava/lang/String;

    .line 51
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "groupId"

    aput-object v1, v0, v2

    const-string v1, "nickname"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->GROUP_MEMBERS_PROJECTION:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "last_login_state"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "username"

    aput-object v1, v0, v2

    const-string v1, "otr"

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->OTR_PROJECTION:[Ljava/lang/String;

    .line 72
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "status"

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->STATUS_MESSAGE_PROJECTION:[Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->sAddAcccountLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private static final addAccount(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 8
    .parameter "resolver"
    .parameter "username"

    .prologue
    .line 123
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addAccount (in Talk db) username="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 125
    new-instance v5, Landroid/content/ContentValues;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 126
    .local v5, values:Landroid/content/ContentValues;
    move-object v2, p1

    .line 128
    .local v2, accountName:Ljava/lang/String;
    const-string v6, "name"

    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v6, "username"

    invoke-virtual {v5, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :try_start_0
    sget-object v6, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v6, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 133
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 134
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 141
    .end local v4           #uri:Landroid/net/Uri;
    :goto_0
    return-wide v0

    .line 137
    :catch_0
    move-exception v3

    .line 138
    .local v3, e:Landroid/database/SQLException;
    const-string v6, "GTalkService"

    const-string v7, "addAccount caught "

    invoke-static {v6, v7, v3}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v3           #e:Landroid/database/SQLException;
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static final addAccountIfNotExist(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 10
    .parameter "resolver"
    .parameter "username"

    .prologue
    const/4 v2, 0x0

    .line 82
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAccountIfNotExist: username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 84
    :cond_0
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 85
    .local v4, selectionArgs:[Ljava/lang/String;
    aput-object p1, v4, v2

    .line 86
    const-wide/16 v6, 0x0

    .line 88
    .local v6, accountId:J
    sget-object v9, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->sAddAcccountLock:Ljava/lang/Object;

    monitor-enter v9

    .line 89
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    const-string v3, "username=?"

    const-string v5, "name ASC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v8

    .line 95
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 97
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 100
    sget-boolean v0, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAccountIfNotExist: found account for username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " accountId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :cond_1
    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 113
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-nez v0, :cond_2

    .line 114
    invoke-static {p0, p1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->addAccount(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v6

    .line 116
    :cond_2
    monitor-exit v9

    .line 118
    return-wide v6

    .line 106
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 116
    .end local v8           #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 109
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_3
    :try_start_3
    const-string v0, "addAccountIfNotExist"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method public static addContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)Landroid/net/Uri;
    .locals 4
    .parameter "resolver"
    .parameter "accountId"
    .parameter "contactList"
    .parameter "username"
    .parameter "nickname"
    .parameter "type"
    .parameter "subscriptionStatus"
    .parameter "subscriptionType"

    .prologue
    .line 264
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 266
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "username"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v2, "nickname"

    invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v2, "account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    const-string v2, "contactList"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 270
    const-string v2, "type"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 271
    const-string v2, "subscriptionStatus"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    const-string v2, "subscriptionType"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 277
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 280
    :goto_0
    return-object v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "addContact caught "

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 280
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static applyDatabaseOperationOnRosterEntries(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;)V
    .locals 6
    .parameter
    .parameter "runnable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;",
            "Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    .local p0, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 395
    .local v0, count:I
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyDatabaseOperationOnRosterEntries for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " entries,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", runnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 400
    :cond_0
    if-nez v0, :cond_2

    .line 414
    :cond_1
    return-void

    .line 404
    :cond_2
    invoke-interface {p1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;->getMaxSelectionArgs()I

    move-result v1

    .line 405
    .local v1, maxSelectionArgs:I
    const/4 v2, 0x0

    .line 407
    .local v2, offset:I
    :goto_0
    if-lez v0, :cond_1

    .line 408
    if-le v0, v1, :cond_3

    move v3, v1

    .line 409
    .local v3, subCount:I
    :goto_1
    invoke-static {p1, p0, v2, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->applyDatabaseOperationOnSubsetOfRosterEntries(Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;Ljava/util/ArrayList;II)V

    .line 411
    add-int/2addr v2, v3

    .line 412
    sub-int/2addr v0, v3

    .line 413
    goto :goto_0

    .end local v3           #subCount:I
    :cond_3
    move v3, v0

    .line 408
    goto :goto_1
.end method

.method private static applyDatabaseOperationOnSubsetOfRosterEntries(Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;Ljava/util/ArrayList;II)V
    .locals 6
    .parameter "runnable"
    .parameter
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 421
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyDatabaseOperationOnSubsetOfRosterEntries: offset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 425
    :cond_0
    new-array v3, p3, [Ljava/lang/String;

    .line 426
    .local v3, selectionArgs:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 430
    .local v0, buf:Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    if-le p3, v4, :cond_1

    .line 431
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    add-int/lit8 v4, p3, -0x1

    if-ge v2, v4, :cond_1

    .line 432
    add-int v4, v2, p2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterEntry;

    .line 433
    .local v1, entry:Lorg/jivesoftware/smack/RosterEntry;
    const-string v4, "username"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 431
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v1           #entry:Lorg/jivesoftware/smack/RosterEntry;
    .end local v2           #i:I
    :cond_1
    add-int/lit8 v2, p3, -0x1

    .line 439
    .restart local v2       #i:I
    add-int v4, v2, p2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smack/RosterEntry;

    .line 440
    .restart local v1       #entry:Lorg/jivesoftware/smack/RosterEntry;
    const-string v4, "username"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v1}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;->setSelection(Ljava/lang/String;)V

    .line 444
    invoke-interface {p0, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;->setSelectionArgs([Ljava/lang/String;)V

    .line 445
    invoke-interface {p0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;->run()V

    .line 446
    return-void
.end method

.method public static final clearAllChats(Landroid/content/ContentResolver;J)I
    .locals 2
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 868
    invoke-static {p0, p1, p2, v1, v1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->clearChatsForAccount(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 872
    .local v0, numChatsCleared:I
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->deleteGroupchatContacts(Landroid/content/ContentResolver;J)V

    .line 873
    return v0
.end method

.method static final clearChatsForAccount(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .parameter "resolver"
    .parameter "accountId"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 824
    const/4 v2, 0x0

    .line 825
    .local v2, numChatsCleared:I
    sget-object v4, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 827
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 828
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "is_active"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p0, v3, v0, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 831
    const-string v4, "GTalkService"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 832
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clearChatsForAccount: uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return v2

    .line 834
    :catch_0
    move-exception v1

    .line 835
    .local v1, e:Landroid/database/SQLException;
    const-string v4, "GTalkService"

    const-string v5, "clearChatsForAccount caught "

    invoke-static {v4, v5, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static closeChatForContactId(Landroid/content/ContentResolver;J)V
    .locals 5
    .parameter "resolver"
    .parameter "pid"

    .prologue
    const/4 v4, 0x0

    .line 809
    sget-object v3, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 810
    .local v2, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 811
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "is_active"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 813
    .local v1, result:I
    sget-boolean v3, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v3, :cond_0

    .line 814
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeChatForContactId, contact_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 816
    :cond_0
    return-void
.end method

.method private static constructWhereClause(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .parameter "username"
    .parameter "accountId"

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 456
    .local v0, whereClause:Ljava/lang/StringBuilder;
    const-string v1, "account"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 459
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    if-eqz p0, :cond_0

    .line 462
    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v1, "username"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 468
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static deleteContact(Landroid/content/ContentResolver;JLjava/lang/String;)I
    .locals 5
    .parameter "resolver"
    .parameter "accountId"
    .parameter "username"

    .prologue
    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteContact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", account="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 311
    invoke-static {p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->constructWhereClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, whereClause:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 316
    :goto_0
    return v2

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "deleteContact caught "

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static deleteContacts(Landroid/content/ContentResolver;JLjava/util/ArrayList;)V
    .locals 6
    .parameter "resolver"
    .parameter "accountId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/RosterEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 382
    .local p3, rosterEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/jivesoftware/smack/RosterEntry;>;"
    new-instance v0, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/16 v5, 0x64

    move-object v1, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V

    .line 388
    .local v0, runnable:Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DeleteContactsOperationRunable;
    invoke-static {p3, v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->applyDatabaseOperationOnRosterEntries(Ljava/util/ArrayList;Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper$DatabaseOperationRunnable;)V

    .line 389
    return-void
.end method

.method static final deleteGroupMember(Landroid/content/ContentResolver;JLjava/lang/String;)Z
    .locals 8
    .parameter "resolver"
    .parameter "groupId"
    .parameter "nickname"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 631
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "nickname"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 632
    .local v4, whereClause:Ljava/lang/StringBuilder;
    const-string v7, "=?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    new-array v2, v5, [Ljava/lang/String;

    .line 635
    .local v2, selectionArgs:[Ljava/lang/String;
    aput-object p3, v2, v6

    .line 637
    sget-object v7, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 639
    .local v3, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 641
    .local v1, result:I
    if-lez v1, :cond_0

    .line 644
    .end local v1           #result:I
    :goto_0
    return v5

    .restart local v1       #result:I
    :cond_0
    move v5, v6

    .line 641
    goto :goto_0

    .line 642
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 643
    .local v0, e:Landroid/database/SQLException;
    const-string v5, "GTalkService"

    const-string v7, "deleteGroupMember caught "

    invoke-static {v5, v7, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 644
    goto :goto_0
.end method

.method static final deleteGroupchatContacts(Landroid/content/ContentResolver;J)V
    .locals 7
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/16 v6, 0x3d

    .line 560
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "account"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 566
    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v4, "type"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 570
    :try_start_0
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 571
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 572
    .local v1, count:I
    sget-boolean v4, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v4, :cond_0

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteGroupchatContacts: acct="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", deleted "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 576
    .end local v1           #count:I
    .end local v3           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 577
    .local v2, e:Landroid/database/SQLException;
    const-string v4, "GTalkService"

    const-string v5, "deleteGroupchatContacts caught "

    invoke-static {v4, v5, v2}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final getContactTypeForUser(Landroid/content/ContentResolver;Ljava/lang/String;J)I
    .locals 9
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x2

    .line 225
    const/4 v7, 0x0

    .line 227
    .local v7, retVal:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v0, "account"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v0, "=?"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-array v4, v1, [Ljava/lang/String;

    .line 233
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 234
    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 236
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 242
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 244
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 248
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_1
    return v7

    .line 248
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static final getGroupMemberList(Landroid/content/ContentResolver;J)Ljava/util/List;
    .locals 9
    .parameter "resolver"
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 650
    sget-object v0, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 652
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->GROUP_MEMBERS_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 656
    .local v6, c:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .local v8, retVal:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_1

    .line 659
    :try_start_0
    const-string v0, "nickname"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 660
    .local v7, nicknameCol:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 664
    .end local v7           #nicknameCol:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .restart local v7       #nicknameCol:I
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 671
    .end local v7           #nicknameCol:I
    :goto_1
    return-object v8

    .line 667
    :cond_1
    const-string v0, "getGroupMemberList"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static final getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 10
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    const/4 v1, 0x0

    .line 147
    const-wide/16 v7, 0x0

    .line 149
    .local v7, pid:J
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .local v9, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v0, "account"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 156
    .local v4, selectionArgs:[Ljava/lang/String;
    aput-object p1, v4, v1

    .line 158
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 166
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 170
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 176
    :goto_0
    return-wide v7

    .line 170
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 173
    :cond_1
    const-string v0, "getIdForContact"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNewestStatusFromHistory(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "accountId"
    .parameter "contact"

    .prologue
    const/4 v4, 0x0

    .line 1004
    invoke-static {p1, p2, p3}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByContact(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1007
    .local v1, uri:Landroid/net/Uri;
    const-string v3, "msg_type IN (13,14)"

    .line 1010
    .local v3, whereClause:Ljava/lang/String;
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "body"

    aput-object v5, v2, v0

    const/4 v0, 0x1

    const-string v5, "date"

    aput-object v5, v2, v0

    const/4 v0, 0x2

    const-string v5, "type"

    aput-object v5, v2, v0

    const/4 v0, 0x3

    const-string v5, "msg_type"

    aput-object v5, v2, v0

    const-string v5, "date DESC LIMIT 1"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1020
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 1022
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    const-string v0, "body"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1026
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1030
    :cond_0
    :goto_0
    return-object v4

    .line 1026
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static final getNicknameCursor(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/database/Cursor;
    .locals 8
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v0, "username"

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v7, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=? AND "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v0, "account"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const/16 v0, 0x3d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 188
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 189
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 191
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->CONTACT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public static final getNicknameForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "resolver"
    .parameter "user"
    .parameter "accountId"

    .prologue
    .line 205
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getNicknameCursor(Landroid/content/ContentResolver;Ljava/lang/String;J)Landroid/database/Cursor;

    move-result-object v0

    .line 207
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 209
    .local v1, retVal:Ljava/lang/String;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 213
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 216
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-static {p1}, Lorg/jivesoftware/smack/util/StringUtils;->parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    :cond_1
    return-object v1

    .line 213
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method static getOffTheRecordCursor(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "resolver"
    .parameter "account"
    .parameter "contact"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 758
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    .local v6, buf:Ljava/lang/StringBuilder;
    const-string v0, "account"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    const-string v0, "username"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 763
    .local v4, selectionArgs:[Ljava/lang/String;
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 764
    aput-object p3, v4, v9

    .line 766
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 767
    .local v3, selection:Ljava/lang/String;
    sget-object v1, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->OTR_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 774
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 775
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOffTheRecordCursor: query url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI_CONTACTS_BAREBONE:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selection is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    selectionArg: [0] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", [1] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v4, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_0
    return-object v7
.end method

.method public static getStatusMessage(Landroid/content/ContentResolver;JLjava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "resolver"
    .parameter "accountId"
    .parameter "from"

    .prologue
    const/4 v4, 0x0

    .line 967
    invoke-static {p0, p3, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 969
    .local v8, fromContactId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_1

    .line 991
    :cond_0
    :goto_0
    return-object v4

    .line 973
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 974
    .local v6, buf:Ljava/lang/StringBuilder;
    const-string v0, "contact_id"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 975
    sget-object v1, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->STATUS_MESSAGE_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 981
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 983
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 984
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 987
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static final insertGroupMember(Landroid/content/ContentResolver;JLjava/lang/String;)Z
    .locals 12
    .parameter "resolver"
    .parameter "groupId"
    .parameter "nickname"

    .prologue
    .line 584
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v0, "nickname"

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 585
    .local v11, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "=?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    .line 588
    .local v4, selectionArgs:[Ljava/lang/String;
    const/4 v0, 0x0

    aput-object p3, v4, v0

    .line 590
    sget-object v0, Lcom/google/android/gsf/TalkContract$GroupMembers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 592
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->GROUP_MEMBERS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 598
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 600
    .local v7, doAdd:Z
    if-eqz v6, :cond_2

    .line 602
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 603
    const/4 v7, 0x1

    .line 606
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 612
    :goto_0
    if-eqz v7, :cond_1

    .line 614
    new-instance v10, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 615
    .local v10, values1:Landroid/content/ContentValues;
    const-string v0, "nickname"

    invoke-virtual {v10, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    move-object v9, v10

    .line 619
    .local v9, values:Landroid/content/ContentValues;
    :try_start_1
    invoke-virtual {p0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 625
    .end local v9           #values:Landroid/content/ContentValues;
    .end local v10           #values1:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    return v7

    .line 606
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 609
    :cond_2
    const-string v0, "insertGroupMember"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    .restart local v9       #values:Landroid/content/ContentValues;
    .restart local v10       #values1:Landroid/content/ContentValues;
    :catch_0
    move-exception v8

    .line 621
    .local v8, e:Landroid/database/SQLException;
    const-string v0, "GTalkService"

    const-string v2, "insertGroupMember caught "

    invoke-static {v0, v2, v8}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static isAccountLastOnline(Landroid/content/ContentResolver;J)Z
    .locals 11
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x1

    .line 686
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .local v9, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "_id"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 689
    sget-object v1, Lcom/google/android/gsf/TalkContract$Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 695
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 697
    .local v8, lastOnline:Z
    if-eqz v6, :cond_2

    .line 699
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 701
    .local v7, lastLoginState:I
    if-lez v7, :cond_1

    move v8, v10

    .line 705
    .end local v7           #lastLoginState:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 711
    :goto_1
    return v8

    .line 701
    .restart local v7       #lastLoginState:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 705
    .end local v7           #lastLoginState:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 708
    :cond_2
    const-string v0, "isAccountLastOnline"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static isOffTheRecordWithContact(Landroid/content/ContentResolver;JLjava/lang/String;)Z
    .locals 5
    .parameter "resolver"
    .parameter "account"
    .parameter "contact"

    .prologue
    const/4 v3, 0x1

    .line 742
    const/4 v2, 0x0

    .line 743
    .local v2, retVal:Z
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getOffTheRecordCursor(Landroid/content/ContentResolver;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 745
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 747
    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 748
    .local v1, otr:I
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 750
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 754
    .end local v1           #otr:I
    :cond_0
    return v2

    .restart local v1       #otr:I
    :cond_1
    move v2, v3

    .line 748
    goto :goto_0

    .line 750
    .end local v1           #otr:I
    :catchall_0
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3
.end method

.method private static final log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1034
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DbHelper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method private static final logEmptyCursor(Ljava/lang/String;)V
    .locals 3
    .parameter "function"

    .prologue
    .line 1038
    const-string v0, "GTalkService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DbHelper] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": empty cursor, possibly low memory"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public static presenceHasUser(Landroid/content/ContentResolver;J)Z
    .locals 9
    .parameter "resolver"
    .parameter "contactId"

    .prologue
    const/4 v2, 0x0

    .line 479
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 480
    .local v8, whereClause:Ljava/lang/StringBuilder;
    const-string v0, "contact_id"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 481
    sget-object v1, Lcom/google/android/gsf/TalkContract$Presence;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 487
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 489
    .local v7, exists:Z
    if-eqz v6, :cond_0

    .line 491
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 493
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 498
    :goto_0
    return v7

    .line 493
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 496
    :cond_0
    const-string v0, "presenceHasUser"

    invoke-static {v0}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->logEmptyCursor(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final pruneChats(Landroid/content/ContentResolver;JJJJZZ)I
    .locals 11
    .parameter "resolver"
    .parameter "accountId"
    .parameter "expire"
    .parameter "expireHard"
    .parameter "expireForChatsOnOtherClient"
    .parameter "closeChatIfTimeStampIsZero"
    .parameter "respectUnreadStatus"

    .prologue
    .line 891
    const/4 v5, 0x0

    .line 894
    .local v5, numChatsCleared:I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 898
    .local v2, buf:Ljava/lang/StringBuilder;
    const-string v9, "_id"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in (select "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    const-string v9, "contact_id"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " from chats where ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    const-string v9, "groupchat"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=1 AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v9, "last_unread_message"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is NULL AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const-string v9, "local"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=0 AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    const-string v9, "last_message_date"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 904
    const-string v9, "))"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 909
    .local v7, selection:Ljava/lang/String;
    sget-object v9, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v7, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 910
    .local v6, result:I
    const-string v9, "GTalkService"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 911
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pruneChats: delete temp contacts, selection="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 915
    :cond_0
    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 928
    if-eqz p9, :cond_1

    .line 929
    const-string v9, "last_message_date"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=0 OR "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :cond_1
    const-string v9, "("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    const-string v9, "local"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=0 AND ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 933
    const-string v9, "last_message_date"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p5

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 935
    const-string v9, " OR ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    if-eqz p10, :cond_2

    .line 937
    const-string v9, "last_unread_message"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is NULL AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    :cond_2
    const-string v9, "last_message_date"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 941
    const-string v9, ") OR ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    const-string v9, "otherClient"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "=1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    const-string v9, "last_message_date"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, p7

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 945
    const-string v9, ")))"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 949
    sget-object v9, Lcom/google/android/gsf/TalkContract$Chats;->CONTENT_URI_BY_ACCOUNT:Landroid/net/Uri;

    invoke-static {v9, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 951
    .local v8, uriChatsByAccount:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 952
    .local v3, cv:Landroid/content/ContentValues;
    const-string v9, "is_active"

    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 953
    const/4 v9, 0x0

    invoke-virtual {p0, v8, v3, v7, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 954
    const-string v9, "GTalkService"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Lcom/google/android/gsf/gtalkservice/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 955
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pruneChats: delete "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", selection is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", result="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    .end local v2           #buf:Ljava/lang/StringBuilder;
    .end local v3           #cv:Landroid/content/ContentValues;
    .end local v6           #result:I
    .end local v7           #selection:Ljava/lang/String;
    .end local v8           #uriChatsByAccount:Landroid/net/Uri;
    :cond_3
    :goto_0
    return v5

    .line 959
    :catch_0
    move-exception v4

    .line 960
    .local v4, e:Landroid/database/SQLException;
    const-string v9, "GTalkService"

    const-string v10, "pruneChats caught "

    invoke-static {v9, v10, v4}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final removeOldGroupchatsFromDb(Landroid/content/ContentResolver;J)V
    .locals 4
    .parameter "resolver"
    .parameter "accountId"

    .prologue
    const/4 v3, 0x0

    .line 843
    sget-boolean v1, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "removeOldGroupchatsFromDb"

    invoke-static {v1}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 846
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 847
    .local v0, buf:Ljava/lang/StringBuilder;
    const-string v1, "is_muc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    invoke-static {p1, p2}, Lcom/google/android/gsf/TalkContract$Messages;->getContentUriByAccount(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 854
    const-string v1, "groupchat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, p2, v1, v3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->clearChatsForAccount(Landroid/content/ContentResolver;JLjava/lang/String;[Ljava/lang/String;)I

    .line 859
    invoke-static {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->deleteGroupchatContacts(Landroid/content/ContentResolver;J)V

    .line 860
    return-void
.end method

.method public static final rosterHasContact(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 4
    .parameter "resolver"
    .parameter "contact"
    .parameter "accountId"

    .prologue
    .line 257
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->getIdForContact(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAccountStatus(Landroid/content/ContentResolver;JII)V
    .locals 5
    .parameter "resolver"
    .parameter "accountId"
    .parameter "presenceStatus"
    .parameter "connectionStatus"

    .prologue
    .line 544
    sget-object v1, Lcom/google/android/gsf/TalkContract$AccountStatus;->CONTENT_URI:Landroid/net/Uri;

    .line 545
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 547
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "account"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 548
    const-string v3, "presenceStatus"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    const-string v3, "connStatus"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    .line 554
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GTalkService"

    const-string v4, "setAccountStatus caught "

    invoke-static {v3, v4, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static setEtag(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;)V
    .locals 5
    .parameter "resolver"
    .parameter "column"
    .parameter "accountId"
    .parameter "etag"

    .prologue
    .line 791
    sget-boolean v2, Lcom/google/android/gsf/gtalkservice/LogTag;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update or insert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' to db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 792
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 793
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {v1, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const-string v2, "account"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 796
    :try_start_0
    sget-object v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 800
    sget-object v2, Lcom/google/android/gsf/TalkContract$ContactsEtag;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :cond_1
    :goto_0
    return-void

    .line 802
    :catch_0
    move-exception v0

    .line 803
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "setEtag caught "

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setOtrEtag(Landroid/content/ContentResolver;JLjava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "accountId"
    .parameter "etag"

    .prologue
    .line 786
    const-string v0, "otr_etag"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->setEtag(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;)V

    .line 787
    return-void
.end method

.method public static setPresence(Landroid/content/ContentResolver;Landroid/net/Uri;JI)V
    .locals 4
    .parameter "resolver"
    .parameter "uri"
    .parameter "contactId"
    .parameter "mode"

    .prologue
    .line 526
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "contact_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 529
    const-string v2, "mode"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 533
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contact_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_0

    .line 534
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "GTalkService"

    const-string v3, "setPresence caught "

    invoke-static {v2, v3, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setRosterEtag(Landroid/content/ContentResolver;JLjava/lang/String;)V
    .locals 1
    .parameter "resolver"
    .parameter "accountId"
    .parameter "etag"

    .prologue
    .line 449
    const-string v0, "etag"

    invoke-static {p0, v0, p1, p2, p3}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->setEtag(Landroid/content/ContentResolver;Ljava/lang/String;JLjava/lang/String;)V

    .line 450
    return-void
.end method

.method public static updateContact(Landroid/content/ContentResolver;JJLjava/lang/String;Ljava/lang/String;III)I
    .locals 6
    .parameter "resolver"
    .parameter "accountId"
    .parameter "contactList"
    .parameter "username"
    .parameter "nickname"
    .parameter "type"
    .parameter "subscriptionStatus"
    .parameter "subscriptionType"

    .prologue
    .line 289
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "nickname"

    invoke-virtual {v1, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v3, "contactList"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 293
    const-string v3, "type"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    const-string v3, "subscriptionStatus"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 295
    const-string v3, "subscriptionType"

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 297
    invoke-static {p5, p1, p2}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->constructWhereClause(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 302
    .local v2, whereClause:Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 305
    :goto_0
    return v3

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "GTalkService"

    const-string v4, "updateContact caught "

    invoke-static {v3, v4, v0}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static updateOtrForContacts(Landroid/content/ContentResolver;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .parameter "resolver"
    .parameter "value"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 716
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v7, :cond_0

    .line 717
    const-string v7, "updateOtrForContacts:"

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 719
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    selection="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 720
    const-string v7, "    selectionArgs:"

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 721
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 722
    .local v5, s:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 726
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 727
    .local v6, values:Landroid/content/ContentValues;
    const-string v7, "otr"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 730
    :try_start_0
    sget-object v7, Lcom/google/android/gsf/TalkContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v7, v6, p2, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 732
    .local v4, result:I
    sget-boolean v7, Lcom/google/android/gsf/gtalkservice/LogTag;->sVerbose:Z

    if-eqz v7, :cond_1

    .line 733
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateOtrForContacts for value="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " updated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gsf/gtalkservice/gtalk/DatabaseHelper;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v4           #result:I
    :cond_1
    :goto_1
    return-void

    .line 735
    :catch_0
    move-exception v1

    .line 736
    .local v1, e:Landroid/database/SQLException;
    const-string v7, "GTalkService"

    const-string v8, "updateOtrForContacts caught "

    invoke-static {v7, v8, v1}, Lcom/google/android/gsf/gtalkservice/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

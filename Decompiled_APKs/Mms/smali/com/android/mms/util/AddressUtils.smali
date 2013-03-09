.class public Lcom/android/mms/util/AddressUtils;
.super Ljava/lang/Object;
.source "AddressUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AddressUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static containsEmailAddress([Ljava/lang/String;)Z
    .locals 5
    .parameter "addresses"

    .prologue
    .line 40
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 41
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    const/4 v4, 0x1

    .line 45
    .end local v0           #address:Ljava/lang/String;
    :goto_1
    return v4

    .line 40
    .restart local v0       #address:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    .end local v0           #address:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v12

    .line 50
    .local v12, msgId:Ljava/lang/String;
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    .line 52
    .local v7, builder:Landroid/net/Uri$Builder;
    invoke-virtual {v7, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "addr"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "address"

    aput-object v0, v3, v4

    const-string v0, "charset"

    aput-object v0, v3, v6

    const-string v4, "type=137"

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 58
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_1

    .line 60
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 63
    .local v11, from:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-static {v11}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 65
    .local v8, bytes:[B
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 66
    .local v9, charset:I
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v0, v9, v8}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 71
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 74
    .end local v8           #bytes:[B
    .end local v9           #charset:I
    .end local v11           #from:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 71
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_1
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

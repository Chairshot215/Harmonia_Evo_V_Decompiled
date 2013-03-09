.class public Lcom/htc/cscore/util/CSUtil;
.super Ljava/lang/Object;
.source "CSUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/util/CSUtil$syncFrequency;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.htc.cs.dashboard"

.field private static final CONTENT_URI_CSSHARED:Landroid/net/Uri; = null

.field private static final KEYBOARD:Ljava/lang/String; = "!he(G-9F"

.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_VALUE:Ljava/lang/String; = "value"

.field private static final PATH_CSSHARED:Ljava/lang/String; = "csshared"

.field private static final QUERY_COLUMNS_CSSHARE:[Ljava/lang/String; = null

.field public static final RENEW_DATA_CENTER:Ljava/lang/String; = "com.htc.cs.renew.datacenter"

.field private static final TAG:Ljava/lang/String; = "CSUtil"

.field private static final algorithm:Ljava/lang/String; = "DES"

.field private static final preferenceName:Ljava/lang/String; = "CSShared"

.field public static final preferenceToken:Ljava/lang/String; = "CSToken"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.htc.cs.dashboard"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "csshared"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CurrentGMTTime()J
    .locals 16

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v12, 0xf

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v9, v12

    const/16 v12, 0xb

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v12, 0xc

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v12, 0xd

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    const/16 v12, 0xe

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v12, 0x9

    invoke-virtual {v2, v12}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const-wide/32 v12, 0x36ee80

    div-long/2addr v9, v12

    int-to-long v12, v6

    sub-long v4, v12, v9

    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-gez v12, :cond_0

    if-nez v3, :cond_2

    const-wide/16 v12, 0x18

    add-long/2addr v4, v12

    :cond_0
    :goto_0
    const-wide/16 v12, 0x18

    cmp-long v12, v4, v12

    if-lez v12, :cond_1

    const-wide/16 v12, 0x18

    sub-long/2addr v4, v12

    :cond_1
    const-wide/16 v12, 0x3c

    mul-long/2addr v12, v4

    int-to-long v14, v8

    add-long/2addr v12, v14

    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    int-to-long v14, v11

    add-long/2addr v12, v14

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    int-to-long v14, v7

    add-long v0, v12, v14

    return-wide v0

    :cond_2
    const-wide/16 v12, 0xc

    add-long/2addr v4, v12

    goto :goto_0
.end method

.method private static PreferenceElapsedTime(Landroid/content/Context;)J
    .locals 8

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "com.htc.cs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v5, "CSShared"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "ElapsedTime"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v3

    :catch_0
    move-exception v0

    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static PreferenceServerTime(Landroid/content/Context;)J
    .locals 8

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "com.htc.cs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v5, "CSShared"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v5, "ServerTime"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "serverTime = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v3

    :catch_0
    move-exception v0

    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static clearDeviceToken(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v0}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/htc/cscore/util/CSUtil;->setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    return-void
.end method

.method private static decryptString([B)Ljava/lang/String;
    .locals 8

    if-nez p0, :cond_0

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): decryptedByte = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    const-string v6, "!he(G-9F"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-nez v0, :cond_1

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): byteKey = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "DES"

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): cipher = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    goto :goto_0

    :cond_2
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): InvalidKeyException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    const-string v4, ""

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): IllegalBlockSizeException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    const-string v4, ""

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): BadPaddingException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    const-string v4, ""

    goto :goto_0

    :catch_3
    move-exception v2

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): NoSuchPaddingException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    const-string v4, ""

    goto :goto_0

    :catch_4
    move-exception v2

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): NoSuchAlgorithmException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v4, ""

    goto/16 :goto_0

    :catch_5
    move-exception v2

    const-string v6, "CSUtil"

    const-string v7, ".decryptString(): NoSuchAlgorithmException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v4, ""

    goto/16 :goto_0

    :cond_3
    const-string v4, ""

    goto/16 :goto_0
.end method

.method public static getAccountID(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v0, "com.htc.cs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const-string v6, ""

    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "EmailAddress"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "CSUtil"

    const-string v1, "getAccountID(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v6

    :catch_0
    move-exception v8

    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v0, "CSUtil"

    const-string v1, "getAccountID(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountID() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public static getAuthTicket(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    const/4 v9, 0x0

    :try_start_0
    const-string v0, "com.htc.cs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const-string v8, ""

    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v13, "HashedMasd"

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "CSUtil"

    const-string v1, "getAuthTicket(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v0, "CSUtil"

    const-string v1, "getAuthTicket(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/util/CSUtil;->decryptString([B)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v12, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v7

    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_1

    :catch_1
    move-exception v7

    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAuthTicket() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCMSURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v6, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v0, "com.htc.cs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const-string v6, "t-myatlantis.wwwa.com/$TME$/"

    :try_start_1
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "cmsURI"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "CSUtil"

    const-string v1, " getCMSURI(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v6

    :catch_0
    move-exception v8

    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v0, "CSUtil"

    const-string v1, " getCMSURI(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCMSURI() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public static getCSRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "Region"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    const/4 v3, 0x0

    :try_start_0
    const-string v7, "com.htc.cs"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const-string v7, "CSShared"

    const/4 v8, 0x1

    invoke-virtual {v3, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "PhoneUUID"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "ro.serialno"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    :try_start_1
    const-string v7, ""

    invoke-static {v1, v5, v7}, Lcom/htc/cscore/util/UUIDConverter;->createHandsetUUID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    const-string v7, "CSUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v7

    if-nez v0, :cond_2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    throw v7

    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getDeviceToken(Landroid/content/Context;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 5

    const/4 v4, 0x0

    new-instance v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    const-string v2, "CSToken"

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "AuthKey"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    const-string v2, "emailverified"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    const-string v2, "handsetverified"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    return-object v1
.end method

.method public static getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CSUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ##### getClass() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    :goto_0
    return-object v3

    :cond_0
    iget-object v3, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "CSUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ##### getClass() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "CSUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ##### getClass() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    check-cast v2, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    if-nez v0, :cond_4

    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto/16 :goto_0

    :cond_4
    iget-object v3, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto/16 :goto_0

    :cond_5
    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v3, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->GeneralError:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    goto/16 :goto_0
.end method

.method public static getFirstName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "FirstName"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLastName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "LastName"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLockScreenStatus(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "LockScreen"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNewDataCenter(Lcom/htc/cscore/restapi/exceptions/CSException;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/htc/cscore/restapi/exceptions/CSException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/htc/cscore/restapi/exceptions/WebException;

    invoke-virtual {v1}, Lcom/htc/cscore/restapi/exceptions/WebException;->getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    iget-object v2, v0, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    return-object v2
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "PhoneNumber"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v0, "com.htc.cs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const-string v9, "https://www.htcsense.com/$SS$"

    :try_start_1
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cscore/util/CSUtil;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cscore/util/CSUtil;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "serverName"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v0, "CSUtil"

    const-string v1, "getServerName(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v9

    :catch_0
    move-exception v7

    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const-string v0, "CSUtil"

    const-string v1, "getServerName(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v7

    const-string v0, "CSUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getServerName() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method public static getServerTime(Landroid/content/Context;)J
    .locals 13

    const-wide/16 v10, 0x0

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->PreferenceServerTime(Landroid/content/Context;)J

    move-result-wide v8

    cmp-long v12, v8, v10

    if-nez v12, :cond_0

    :goto_0
    return-wide v10

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->PreferenceElapsedTime(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Lcom/htc/cscore/util/CSUtil;->CurrentGMTTime()J

    move-result-wide v4

    const-string v10, "CSUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "curGMTTime = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v6, v0, v2

    add-long/2addr v8, v6

    move-wide v10, v8

    goto :goto_0
.end method

.method private static getServerVersionNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "serverVersion"

    const-string v5, "0"

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSyncFrequency(Landroid/content/Context;)Lcom/htc/cscore/util/CSUtil$syncFrequency;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v4, "CSShared"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "syncFrequency"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->unknown:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->unknown:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_0
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->manual:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_1
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->push:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_2
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_3
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_two_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_4
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_three_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_5
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_six_hours:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_6
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_twelve_hour:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_7
    sget-object v4, Lcom/htc/cscore/util/CSUtil$syncFrequency;->every_day:Lcom/htc/cscore/util/CSUtil$syncFrequency;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getVersion(Landroid/content/Context;)Lcom/htc/cscore/util/CSVersion;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    new-instance v0, Lcom/htc/cscore/util/CSVersion;

    invoke-direct {v0}, Lcom/htc/cscore/util/CSVersion;-><init>()V

    const-string v4, "com.htc.cs"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v4, v0, Lcom/htc/cscore/util/CSVersion;->CSEngineVersionCode:I

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/cscore/util/CSVersion;->CSEngineVersionName:Ljava/lang/String;

    const-string v4, "DevBuild"

    iput-object v4, v0, Lcom/htc/cscore/util/CSVersion;->HandsetLibraryVersion:Ljava/lang/String;

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getServerVersionNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/htc/cscore/util/CSVersion;->ServerVersionNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    invoke-static {p5}, Lcom/htc/cscore/util/CSUtil;->getDeviceToken(Landroid/content/Context;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    move-result-object v6

    iget-object v0, v6, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x0

    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-ge v8, v0, :cond_3

    :try_start_0
    invoke-static {p5}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p5}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual/range {v0 .. v5}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    const/4 v8, 0x3

    goto :goto_0

    :catch_0
    move-exception v7

    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSUserPreferenceUtil handsetLogin ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v0, "MissingDevice"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ClientInvalidCredentialsException"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "CSUtil.handsetLogin"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x2

    if-le v8, v0, :cond_0

    new-instance v0, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v1, "CSUtil.handsetLogin"

    invoke-direct {v0, v1, v7}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    if-eqz v6, :cond_4

    invoke-static {p5, v6}, Lcom/htc/cscore/util/CSUtil;->setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    :cond_4
    return-object v6
.end method

.method public static hasLocationService(Landroid/content/Context;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "com.htc.cs"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const-string v4, "CSShared"

    invoke-virtual {v1, v4, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "locationService"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string v5, "CSUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isCSAccountExist(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCSActive(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCSFlag:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCSPackageInstalled(Landroid/content/Context;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    const-string v4, "com.htc.cs"

    const/16 v5, 0x2000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcCSFlag:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.htc.cs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static isMmsAppExist(Landroid/content/Context;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v3, "com.android.mms"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPhoneAppExist(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "ro.phone.function"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "1"

    :cond_0
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isSyncStopped(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->isCSPackageInstalled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const-string v4, "CSShared"

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "SyncStatus"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v4, "CSUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isWifiOnlyDevice()Z
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_ONLY_flag:Z

    return v0
.end method

.method public static renewDataCenter(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.cs.renew.datacenter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "serverUri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static renewToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/RestServicesProxy;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/cscore/restapi/exceptions/CSException;
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, 0x0

    :cond_0
    :goto_0
    const/4 v1, 0x2

    if-ge v10, v1, :cond_3

    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/htc/cscore/util/CSUtil;->getAccountID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p5 .. p5}, Lcom/htc/cscore/util/CSUtil;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p5 .. p5}, Lcom/htc/cscore/util/CSUtil;->getAuthTicket(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object/from16 v1, p6

    invoke-virtual/range {v1 .. v6}, Lcom/htc/cscore/restapi/proxy/RestServicesProxy;->HandsetLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/PackageManager;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    :try_end_0
    .catch Lcom/htc/cscore/restapi/exceptions/CSException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    const/4 v10, 0x3

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v1, "MyHTC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSUserPreferenceUtil renewToken ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/htc/cscore/restapi/exceptions/CSException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8}, Lcom/htc/cscore/util/CSUtil;->getExceptionErrorCode(Lcom/htc/cscore/restapi/exceptions/CSException;)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v9

    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->MissingDevice:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    if-eq v9, v1, :cond_1

    sget-object v1, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->InvalidCredentials:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    if-ne v9, v1, :cond_2

    :cond_1
    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v2, "CSUtil.handsetLogin"

    invoke-direct {v1, v2, v8}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    add-int/lit8 v10, v10, 0x1

    const/4 v1, 0x2

    if-le v10, v1, :cond_0

    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CSException;

    const-string v2, "CSUtil.handsetLogin"

    invoke-direct {v1, v2, v8}, Lcom/htc/cscore/restapi/exceptions/CSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    if-eqz v7, :cond_4

    move-object/from16 v0, p5

    invoke-static {v0, v7}, Lcom/htc/cscore/util/CSUtil;->setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V

    :cond_4
    return-object v7
.end method

.method public static setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    .locals 4

    const-string v2, "CSToken"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "AuthKey"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "emailverified"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "handsetverified"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

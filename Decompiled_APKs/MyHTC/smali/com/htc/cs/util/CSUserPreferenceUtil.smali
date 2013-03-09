.class public Lcom/htc/cs/util/CSUserPreferenceUtil;
.super Ljava/lang/Object;
.source "CSUserPreferenceUtil.java"


# static fields
.field private static final KEYBOARD:Ljava/lang/String; = "!he(G-9F"

.field private static final TAG:Ljava/lang/String; = "CSUserPreferenceUtil "

.field private static final algorithm:Ljava/lang/String; = "DES"

.field public static final preferenceName:Ljava/lang/String; = "CSPreference"

.field public static final preferenceNameRest:Ljava/lang/String; = "CSShared"

.field public static final preferenceToken:Ljava/lang/String; = "CSToken"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decryptString([B)Ljava/lang/String;
    .locals 8
    .parameter "decryptedByte"

    .prologue
    .line 908
    if-nez p0, :cond_0

    .line 909
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): decryptedByte = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    const-string v4, ""

    .line 973
    :goto_0
    return-object v4

    .line 912
    :cond_0
    const-string v6, "!he(G-9F"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 913
    .local v0, byteKey:[B
    if-nez v0, :cond_1

    .line 914
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): byteKey = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const-string v4, ""

    goto :goto_0

    .line 918
    :cond_1
    const/4 v3, 0x0

    .line 921
    .local v3, recoveredBytes:[B
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v6, "DES"

    invoke-direct {v5, v0, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 922
    .local v5, spec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "DES"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 923
    .local v1, cipher:Ljavax/crypto/Cipher;
    if-nez v1, :cond_2

    .line 924
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): cipher = null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v4, ""

    goto :goto_0

    .line 927
    :cond_2
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 928
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v3

    .line 967
    const/4 v4, 0x0

    .line 968
    .local v4, recoveredString:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 969
    new-instance v4, Ljava/lang/String;

    .end local v4           #recoveredString:Ljava/lang/String;
    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .restart local v4       #recoveredString:Ljava/lang/String;
    goto :goto_0

    .line 930
    .end local v1           #cipher:Ljavax/crypto/Cipher;
    .end local v4           #recoveredString:Ljava/lang/String;
    .end local v5           #spec:Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v2

    .line 932
    .local v2, e:Ljava/security/InvalidKeyException;
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): InvalidKeyException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 934
    const-string v4, ""

    goto :goto_0

    .line 936
    .end local v2           #e:Ljava/security/InvalidKeyException;
    :catch_1
    move-exception v2

    .line 938
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): IllegalBlockSizeException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    .line 940
    const-string v4, ""

    goto :goto_0

    .line 942
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_2
    move-exception v2

    .line 944
    .local v2, e:Ljavax/crypto/BadPaddingException;
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): BadPaddingException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    .line 946
    const-string v4, ""

    goto :goto_0

    .line 948
    .end local v2           #e:Ljavax/crypto/BadPaddingException;
    :catch_3
    move-exception v2

    .line 950
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): NoSuchPaddingException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 952
    const-string v4, ""

    goto :goto_0

    .line 954
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v2

    .line 956
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): NoSuchAlgorithmException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 958
    const-string v4, ""

    goto/16 :goto_0

    .line 960
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_5
    move-exception v2

    .line 962
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "MyHTC"

    const-string v7, "CSUserPreferenceUtil .decryptString(): NoSuchAlgorithmException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 964
    const-string v4, ""

    goto/16 :goto_0

    .line 971
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v1       #cipher:Ljavax/crypto/Cipher;
    .restart local v4       #recoveredString:Ljava/lang/String;
    .restart local v5       #spec:Ljavax/crypto/spec/SecretKeySpec;
    :cond_3
    const-string v4, ""

    goto/16 :goto_0
.end method

.method private static encryptString(Ljava/lang/String;)[B
    .locals 5
    .parameter "plainText"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    const-string v4, "!he(G-9F"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 84
    .local v0, byteKey:[B
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "DES"

    invoke-direct {v3, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 85
    .local v3, spec:Ljavax/crypto/spec/SecretKeySpec;
    const-string v4, "DES"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 86
    .local v1, cipher:Ljavax/crypto/Cipher;
    if-nez v1, :cond_0

    .line 87
    const/4 v4, 0x0

    .line 90
    :goto_0
    return-object v4

    .line 88
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 90
    .local v2, inputByte:[B
    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    goto :goto_0
.end method

.method public static getAgreeTerm(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 661
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 662
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "AgreeTerm"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 663
    .local v1, value:Z
    return v1
.end method

.method public static getCDMANumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1022
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1023
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "CDMANumber"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, num:Ljava/lang/String;
    return-object v0
.end method

.method public static getCMSURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 756
    sget-object v8, Lcom/htc/cs/util/Keys;->CMS_URI:Ljava/lang/String;

    .line 758
    .local v8, uri:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cs/sync/dashboard/DashboardProvider;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "cmsURI"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 759
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 760
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getCMSURI(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURISharePreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 779
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #uri:Ljava/lang/String;
    .local v9, uri:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 764
    .end local v9           #uri:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #uri:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 765
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 766
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getCMSURI(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getCMSURISharePreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 768
    .end local v8           #uri:Ljava/lang/String;
    .restart local v9       #uri:Ljava/lang/String;
    goto :goto_0

    .line 770
    .end local v9           #uri:Ljava/lang/String;
    .restart local v8       #uri:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 771
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1
    move-object v9, v8

    .line 779
    .end local v8           #uri:Ljava/lang/String;
    .restart local v9       #uri:Ljava/lang/String;
    goto :goto_0

    .line 773
    .end local v9           #uri:Ljava/lang/String;
    .restart local v8       #uri:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 775
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSUserPreferenceUtil getCMSURI() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCMSURISharePreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 744
    const-string v2, "CSShared"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 745
    .local v0, preferencesforRest:Landroid/content/SharedPreferences;
    const-string v2, "cmsURI"

    sget-object v3, Lcom/htc/cs/util/Keys;->CMS_URI:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 746
    .local v1, uri:Ljava/lang/String;
    const-string v2, "MyHTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSUserPreferenceUtil  getCMSURISharePreference: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    return-object v1
.end method

.method public static getCSRegion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 871
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 872
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "Region"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, region:Ljava/lang/String;
    return-object v1
.end method

.method public static getDeviceToken(Landroid/content/Context;)Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 624
    new-instance v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;-><init>()V

    .line 625
    .local v1, tempToken:Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;
    const-string v2, "CSToken"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 626
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "AuthKey"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    .line 627
    const-string v2, "emailverified"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    .line 628
    const-string v2, "handsetverified"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    .line 629
    return-object v1
.end method

.method public static getEmail(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 668
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 669
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "EmailAddress"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, email:Ljava/lang/String;
    return-object v0
.end method

.method public static getFirstName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 674
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 675
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "FirstName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method private static getFromFile(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 9
    .parameter "context"
    .parameter "fileName"

    .prologue
    const/4 v6, 0x0

    .line 878
    const/4 v4, 0x0

    .line 879
    .local v4, outputByte:[B
    const/16 v7, 0x64

    new-array v5, v7, [B

    .line 880
    .local v5, temp:[B
    const/4 v0, 0x0

    .line 883
    .local v0, count:I
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 884
    .local v3, is:Ljava/io/FileInputStream;
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 885
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 893
    if-lez v0, :cond_0

    .line 895
    new-array v4, v0, [B

    .line 896
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 898
    aget-byte v6, v5, v2

    aput-byte v6, v4, v2

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 886
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 887
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v7, "MyHTC"

    const-string v8, "CSUserPreferenceUtil .getFromFile(): FileNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_1
    return-object v6

    .line 889
    :catch_1
    move-exception v1

    .line 890
    .local v1, e:Ljava/io/IOException;
    const-string v7, "MyHTC"

    const-string v8, "CSUserPreferenceUtil .getFromFile(): IOException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #is:Ljava/io/FileInputStream;
    :cond_0
    move-object v6, v4

    .line 902
    goto :goto_1
.end method

.method public static getFullMergeState(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1060
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1061
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "FullMergeState"

    const-string v3, "insync"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1062
    .local v0, fullMergeState:Ljava/lang/String;
    return-object v0
.end method

.method public static getHTCNewsLetter(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .parameter "context"

    .prologue
    .line 617
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 618
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "HTCLetter"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 619
    .local v1, value:Ljava/lang/Boolean;
    return-object v1
.end method

.method public static getHashedPassword(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 983
    const-string v8, ""

    .line 985
    .local v8, hashedPassword:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cs/sync/dashboard/DashboardProvider;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "HashedMasd"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 986
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 987
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getHashedPassword(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 1005
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #hashedPassword:Ljava/lang/String;
    .local v9, hashedPassword:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 990
    .end local v9           #hashedPassword:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #hashedPassword:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 991
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 992
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getHashedPassword(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 993
    .end local v8           #hashedPassword:Ljava/lang/String;
    .restart local v9       #hashedPassword:Ljava/lang/String;
    goto :goto_0

    .line 995
    .end local v9           #hashedPassword:Ljava/lang/String;
    .restart local v8       #hashedPassword:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->decryptString([B)Ljava/lang/String;

    move-result-object v8

    .line 997
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1
    move-object v9, v8

    .line 1005
    .end local v8           #hashedPassword:Ljava/lang/String;
    .restart local v9       #hashedPassword:Ljava/lang/String;
    goto :goto_0

    .line 999
    .end local v9           #hashedPassword:Ljava/lang/String;
    .restart local v8       #hashedPassword:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 1001
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSUserPreferenceUtil getHashedPassword() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getIMCURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 788
    sget-object v8, Lcom/htc/cs/util/Keys;->IMC_URI:Ljava/lang/String;

    .line 790
    .local v8, uri:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cs/sync/dashboard/DashboardProvider;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "imcURI"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 791
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 792
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getIMCURI(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 810
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #uri:Ljava/lang/String;
    .local v9, uri:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 795
    .end local v9           #uri:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #uri:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 796
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 797
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getIMCURI(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 798
    .end local v8           #uri:Ljava/lang/String;
    .restart local v9       #uri:Ljava/lang/String;
    goto :goto_0

    .line 800
    .end local v9           #uri:Ljava/lang/String;
    .restart local v8       #uri:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 802
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1
    move-object v9, v8

    .line 810
    .end local v8           #uri:Ljava/lang/String;
    .restart local v9       #uri:Ljava/lang/String;
    goto :goto_0

    .line 804
    .end local v9           #uri:Ljava/lang/String;
    .restart local v8       #uri:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 806
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSUserPreferenceUtil getIMCURI() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getLanguageCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 686
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 687
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "LanguageCode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public static getLastName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 680
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 681
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "LastName"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public static getLegalDocAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 593
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 594
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "LegalDocAccount"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getLegalDocCheckTime(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 599
    const-string v3, "CSPreference"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 600
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "ExpiredTime"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 601
    .local v1, value:J
    return-wide v1
.end method

.method public static getLegalDocDDay(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 541
    const-string v3, "CSPreference"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 542
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v3, "DDay"

    const-wide/16 v4, 0x0

    invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 543
    .local v1, value:J
    return-wide v1
.end method

.method public static getLegalDocVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 554
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 555
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "LegalDocVersion"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 556
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getLocationService(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 4
    .parameter "context"

    .prologue
    .line 1067
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1068
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "locationService"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1069
    .local v0, LocService:Ljava/lang/Boolean;
    return-object v0
.end method

.method public static getLockScreenStatus(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 476
    const-string v2, "CSShared"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 477
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "LockScreen"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 478
    .local v1, value:Z
    return v1
.end method

.method public static getMarketCountry(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 611
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 612
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "MarketCountry"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 613
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getMarketOptIn(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 605
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 606
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "MarketOpIn"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getModelIDHash(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1102
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1103
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "ModelID"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1104
    .local v1, retValue:I
    return v1
.end method

.method public static getPhoneAreaCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 849
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 850
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "AreaCode"

    const-string v3, "02"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getPhoneCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 844
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 845
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "CountryCode"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getPhoneIDD(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 860
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 861
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "IDD"

    const-string v3, "111"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 862
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getPhoneNDD(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 866
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 867
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "NDD"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 854
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 855
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "PhoneNumber"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public static getPhoneUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 691
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 692
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "PhoneUUID"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public static getProvServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 738
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 739
    .local v1, preferencesforRest:Landroid/content/SharedPreferences;
    const-string v2, "provServer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, name:Ljava/lang/String;
    return-object v0
.end method

.method public static getRebootFlag(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 1125
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1126
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "RebootFlag"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1127
    .local v0, flag:Z
    return v0
.end method

.method public static getSIMSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1015
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1016
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "SIMSerialNumber"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, num:Ljava/lang/String;
    return-object v0
.end method

.method public static getSecurityAnswer(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1034
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1035
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "SecurityAnswer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, answer:Ljava/lang/String;
    return-object v0
.end method

.method public static getSecurityQuestion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1028
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1029
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "SecurityQuestion"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, question:Ljava/lang/String;
    return-object v1
.end method

.method public static getSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "key"

    .prologue
    .line 633
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 634
    .local v0, preferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 635
    .local v1, value:Z
    return v1
.end method

.method public static getSentLegalDocAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 580
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 581
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "SentLegalDocAccount"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getSentLegalDocVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 567
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 568
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "SentLegalDocVersion"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static getServerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 710
    sget-object v8, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    .line 712
    .local v8, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cs/sync/dashboard/DashboardProvider;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "serverName"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 713
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 714
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getServerName(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerNameSharePreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 734
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #name:Ljava/lang/String;
    .local v9, name:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 718
    .end local v9           #name:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #name:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 719
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 720
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getServerName(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-static {p0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->getServerNameSharePreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 722
    .end local v8           #name:Ljava/lang/String;
    .restart local v9       #name:Ljava/lang/String;
    goto :goto_0

    .line 724
    .end local v9           #name:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 726
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1
    move-object v9, v8

    .line 734
    .end local v8           #name:Ljava/lang/String;
    .restart local v9       #name:Ljava/lang/String;
    goto :goto_0

    .line 728
    .end local v9           #name:Ljava/lang/String;
    .restart local v8       #name:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 730
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSUserPreferenceUtil getServerName() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getServerNameSharePreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 697
    const-string v2, "CSShared"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 698
    .local v1, preferencesforRest:Landroid/content/SharedPreferences;
    const-string v2, "serverName"

    sget-object v3, Lcom/htc/cs/util/Keys;->SERVER_URL:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, name:Ljava/lang/String;
    const-string v2, "MyHTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSUserPreferenceUtil  getServerNameSharePreference(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-object v0
.end method

.method public static getServerURL(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1074
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1075
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "serverURL"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, url:Ljava/lang/String;
    return-object v1
.end method

.method public static getStatusURI(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .parameter "context"

    .prologue
    .line 819
    sget-object v8, Lcom/htc/cs/util/Keys;->STATUS_URI:Ljava/lang/String;

    .line 821
    .local v8, uri:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    sget-object v2, Lcom/htc/cs/sync/dashboard/DashboardProvider;->QUERY_COLUMNS_CSSHARE:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "statusURI"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 822
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 823
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getStatusURI(): null == cursor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 840
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v8           #uri:Ljava/lang/String;
    .local v9, uri:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 826
    .end local v9           #uri:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v8       #uri:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 827
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 828
    const-string v0, "MyHTC"

    const-string v1, "CSUserPreferenceUtil getStatusURI(): cursor.moveToFirst() fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v8

    .line 829
    .end local v8           #uri:Ljava/lang/String;
    .restart local v9       #uri:Ljava/lang/String;
    goto :goto_0

    .line 831
    .end local v9           #uri:Ljava/lang/String;
    .restart local v8       #uri:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 832
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_1
    move-object v9, v8

    .line 840
    .end local v8           #uri:Ljava/lang/String;
    .restart local v9       #uri:Ljava/lang/String;
    goto :goto_0

    .line 834
    .end local v9           #uri:Ljava/lang/String;
    .restart local v8       #uri:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 836
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "MyHTC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSUserPreferenceUtil getStatusURI() e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static getSyncCheckInterval(Landroid/content/Context;)J
    .locals 6
    .parameter "context"

    .prologue
    .line 639
    const-string v3, "CSShared"

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 640
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "SyncStatusInterval"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 641
    .local v0, interval:J
    return-wide v0
.end method

.method public static getSyncFrequency(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1009
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1010
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "syncFrequency"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1011
    .local v0, freq:I
    return v0
.end method

.method public static getSyncMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1046
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1047
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "SyncMode"

    const-string v3, "Default"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1048
    .local v1, syncMode:Ljava/lang/String;
    return-object v1
.end method

.method public static getSyncStatusCheckbox(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 1040
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1041
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "Check"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1042
    .local v0, bCheck:Z
    return v0
.end method

.method public static getTriggeredFullMerge(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1081
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1082
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "TriggeredFullMerge"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    .local v0, isTrigger:Ljava/lang/String;
    return-object v0
.end method

.method public static getTriggeredSendSN(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 1088
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1089
    .local v1, preferences:Landroid/content/SharedPreferences;
    const-string v2, "TriggeredSendSN"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    .local v0, isTrigger:Ljava/lang/String;
    return-object v0
.end method

.method public static remove_pref(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 46
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 47
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 48
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    return-void
.end method

.method private static save2File(Landroid/content/Context;[BLjava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "encryptedPassword"
    .parameter "fileName"

    .prologue
    .line 97
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 98
    .local v1, os:Ljava/io/FileOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 99
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    .end local v1           #os:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v2, "MyHTC"

    const-string v3, "CSUserPreferenceUtil .save2File(): FileNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 104
    .local v0, e:Ljava/io/IOException;
    const-string v2, "MyHTC"

    const-string v3, "CSUserPreferenceUtil .save2File(): IOException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static save_pref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "email"
    .parameter "firstName"
    .parameter "lastName"
    .parameter "phoneUUID"
    .parameter "countryCode"
    .parameter "phoneNumber"
    .parameter "password"
    .parameter "syncFreq"

    .prologue
    .line 55
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 56
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 57
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "EmailAddress"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    const-string v4, "FirstName"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    const-string v4, "LastName"

    invoke-interface {v0, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 60
    const-string v4, "PhoneUUID"

    invoke-interface {v0, v4, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 61
    const-string v4, "CountryCode"

    invoke-interface {v0, v4, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    const-string v4, "PhoneNumber"

    invoke-interface {v0, v4, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 68
    const-string v4, "syncFrequency"

    invoke-interface {v0, v4, p8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 71
    const-string v4, "CSShared"

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 72
    .local v3, preferences1:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 73
    .local v1, editor1:Landroid/content/SharedPreferences$Editor;
    const-string v4, "syncFrequency"

    invoke-interface {v1, v4, p8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v4, "PhoneNumber"

    invoke-interface {v1, v4, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    const-string v4, "FirstName"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    const-string v4, "LastName"

    invoke-interface {v1, v4, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 78
    return-void
.end method

.method public static setAgreeTerm(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "value"

    .prologue
    .line 348
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 349
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 350
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AgreeTerm"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 351
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 352
    return-void
.end method

.method public static setCDMANumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "number"

    .prologue
    .line 408
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 409
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 410
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CDMANumber"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 411
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    return-void
.end method

.method public static setCMSURI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "cmsURI"

    .prologue
    .line 259
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 260
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 261
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "cmsURI"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 262
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    const-string v6, "name=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "cmsURI"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 273
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    const-string v5, "cmsURI"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v4, "value"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSUserPreferenceUtil setCMSURI() e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setCSRegion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "region"

    .prologue
    .line 462
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 463
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 464
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Region"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 466
    return-void
.end method

.method public static setCountryCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "countryCode"

    .prologue
    .line 161
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 162
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CountryCode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 166
    return-void
.end method

.method public static setDeviceToken(Landroid/content/Context;Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;)V
    .locals 5
    .parameter "context"
    .parameter "deviceToken"

    .prologue
    .line 453
    const-string v2, "CSFrameWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSUserPreferenceUtil setDeviceToken ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v2, "CSToken"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 455
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "AuthKey"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    const-string v2, "emailverified"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsEmailVerified:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 458
    const-string v2, "handsetverified"

    iget-object v3, p1, Lcom/htc/cscore/restapi/proxy/WebClasses$WDeviceToken;->IsHandsetVerified:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 459
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 460
    return-void
.end method

.method public static setEmail(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "email"

    .prologue
    .line 122
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 123
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 124
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "EmailAddress"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    const-string v6, "name=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "EmailAddress"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 135
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 136
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    const-string v5, "EmailAddress"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "value"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSUserPreferenceUtil setEmail() e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setEncryptedPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "hashedPassword"

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    const-string v4, "name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "HashedMasd"

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 200
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    const-string v3, "HashedMasd"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v2, "value"

    invoke-static {p1}, Lcom/htc/cs/util/CSUserPreferenceUtil;->encryptString(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 203
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MyHTC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CSUserPreferenceUtil setEncryptedPassword() e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setFullMergeState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "fullMergeState"

    .prologue
    .line 1095
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1096
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1097
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "FullMergeState"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1098
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1099
    return-void
.end method

.method public static setHTCNewsLetter(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "context"
    .parameter "tmp"

    .prologue
    .line 503
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 504
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 505
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "HTCLetter"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 506
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 507
    return-void
.end method

.method public static setHashedPassword(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "password"

    .prologue
    .line 190
    invoke-static {p1}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, hashedPassword:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/htc/cs/util/CSUserPreferenceUtil;->setEncryptedPassword(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public static setIMCURI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "imcURI"

    .prologue
    .line 286
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 287
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 288
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "imcURI"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 298
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    const-string v6, "name=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "imcURI"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 299
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 300
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    const-string v5, "imcURI"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string v4, "value"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSUserPreferenceUtil setIMCURI() e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setLegalDocAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 560
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 561
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 562
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LegalDocAccount"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 563
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 564
    return-void
.end method

.method public static setLegalDocCheckTime(Landroid/content/Context;I)V
    .locals 10
    .parameter "context"
    .parameter "day"

    .prologue
    .line 518
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 519
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 521
    .local v1, curGMTTime:J
    const-string v7, "CSPreference"

    const/4 v8, 0x4

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 522
    .local v6, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 524
    .local v5, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "CSFrameWork"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " curGMTTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    mul-int/lit8 v7, p1, 0x18

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long v3, v1, v7

    .line 528
    .local v3, dayExpired:J
    const-string v7, "CSFrameWork"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " dayExpired = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v7, "ExpiredTime"

    invoke-interface {v5, v7, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 530
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 531
    return-void
.end method

.method public static setLegalDocDDay(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "day"

    .prologue
    .line 534
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 535
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 536
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "DDay"

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 538
    return-void
.end method

.method public static setLegalDocVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "version"

    .prologue
    .line 547
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 548
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 549
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LegalDocVersion"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 551
    return-void
.end method

.method public static setLocationService(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "context"
    .parameter "hasLocation"

    .prologue
    .line 416
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 417
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 418
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "locationService"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 420
    return-void
.end method

.method public static setLockScreenStatus(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 4
    .parameter "context"
    .parameter "tmp"

    .prologue
    .line 469
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 470
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 471
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LockScreen"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 473
    return-void
.end method

.method public static setMarketOptIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "tmp"
    .parameter "country"

    .prologue
    .line 510
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 511
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 512
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "MarketOpIn"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 513
    const-string v2, "MarketCountry"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 514
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 515
    return-void
.end method

.method public static setModelIDHash(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "hashCode"

    .prologue
    .line 1109
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1110
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1111
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "ModelID"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1112
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1113
    return-void
.end method

.method public static setName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "firstName"
    .parameter "lastName"

    .prologue
    .line 168
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 169
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "FirstName"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    const-string v4, "LastName"

    invoke-interface {v0, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    const-string v4, "CSShared"

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 174
    .local v3, preferencesforRest:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 175
    .local v1, editorforRest:Landroid/content/SharedPreferences$Editor;
    const-string v4, "FirstName"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    const-string v4, "LastName"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 178
    return-void
.end method

.method public static setPhone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 149
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 150
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "PhoneNumber"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    const-string v4, "CSShared"

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 155
    .local v3, preferencesforRest:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 156
    .local v1, editorforRest:Landroid/content/SharedPreferences$Editor;
    const-string v4, "PhoneNumber"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 158
    return-void
.end method

.method public static setPhoneUUID(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "phoneUUID"

    .prologue
    .line 214
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 215
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 216
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "PhoneUUID"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 218
    const-string v4, "CSShared"

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 219
    .local v3, preferencesforRest:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 220
    .local v1, editorforRest:Landroid/content/SharedPreferences$Editor;
    const-string v4, "PhoneUUID"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 221
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 222
    return-void
.end method

.method public static setProvServeName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serverURI"

    .prologue
    .line 252
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    .local v1, preferencesforRest:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 254
    .local v0, editorforRest:Landroid/content/SharedPreferences$Editor;
    const-string v2, "provServer"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    return-void
.end method

.method public static setRebootFlag(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 1117
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1118
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1119
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "RebootFlag"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1121
    return-void
.end method

.method public static setSIMSerialNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serial"

    .prologue
    .line 400
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 401
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 402
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SIMSerialNumber"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 403
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    return-void
.end method

.method public static setSecurityQuestionAnswer(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "question"
    .parameter "answer"

    .prologue
    .line 355
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 356
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 357
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SecurityQuestion"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 358
    const-string v2, "SecurityAnswer"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 360
    return-void
.end method

.method public static setSendExceptionFlag(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 446
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 447
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 450
    return-void
.end method

.method public static setSentLegalDocAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "account"

    .prologue
    .line 586
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 587
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 588
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SentLegalDocAccount"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 589
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 590
    return-void
.end method

.method public static setSentLegalDocVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "version"

    .prologue
    .line 573
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 574
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 575
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SentLegalDocVersion"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 577
    return-void
.end method

.method public static setServeName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "serverURI"

    .prologue
    .line 225
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 226
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 227
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "serverName"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    const-string v6, "name=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "serverName"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    const-string v5, "serverName"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v4, "value"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSUserPreferenceUtil setServeName() e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setServerTime(Landroid/content/Context;J)V
    .locals 8
    .parameter "context"
    .parameter "svrTime"

    .prologue
    .line 110
    invoke-static {}, Lcom/htc/cs/util/serverClock;->CurrentGMTTime()J

    move-result-wide v2

    .line 111
    .local v2, curGMTTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 113
    .local v0, CurrentElapsedTime:J
    const-string v6, "CSPreference"

    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 114
    .local v5, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 115
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "GMTTime"

    invoke-interface {v4, v6, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v6, "ElapsedTime"

    invoke-interface {v4, v6, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v6, "ServerTime"

    invoke-interface {v4, v6, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 118
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 119
    return-void
.end method

.method public static setServerURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "url"

    .prologue
    .line 363
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 364
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 365
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "serverURL"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    return-void
.end method

.method public static setServerVersionNumber(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "versionNum"

    .prologue
    .line 424
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 425
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 426
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "serverVersion"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 428
    return-void
.end method

.method public static setStatusURI(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "statusURI"

    .prologue
    .line 313
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 314
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 315
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "statusURI"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 325
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    const-string v6, "name=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "statusURI"

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 326
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 327
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "name"

    const-string v5, "statusURI"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v4, "value"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/htc/cs/sync/dashboard/DashboardProvider;->CONTENT_URI_CSSHARED:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "MyHTC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSUserPreferenceUtil setStatusURI() e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSyncCheckInterval(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "interval"

    .prologue
    .line 490
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 491
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 493
    .local v1, curGMTTime:J
    mul-int/lit8 v7, p1, 0x18

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long v4, v1, v7

    .line 495
    .local v4, nextCheckTime:J
    const-string v7, "CSShared"

    const/4 v8, 0x5

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 496
    .local v6, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 498
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "SyncStatusInterval"

    invoke-interface {v3, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 499
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 500
    return-void
.end method

.method public static setSyncFrequency(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "syncFreq"

    .prologue
    .line 387
    const-string v4, "CSShared"

    const/4 v5, 0x5

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 388
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 389
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "syncFrequency"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 390
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    const-string v4, "CSPreference"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 393
    .local v3, preferences1:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 394
    .local v1, editor1:Landroid/content/SharedPreferences$Editor;
    const-string v4, "syncFrequency"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 395
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 396
    return-void
.end method

.method public static setSyncMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "syncMode"

    .prologue
    .line 1052
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1053
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1054
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "SyncMode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1055
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1056
    return-void
.end method

.method public static setSyncStatus(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "fullmergeOn"

    .prologue
    .line 482
    const-string v2, "CSShared"

    const/4 v3, 0x5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 483
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 484
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "SyncStatus"

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 485
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 486
    return-void

    .line 484
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setSyncStatusCheckbox(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "bCheck"

    .prologue
    .line 340
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 341
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "Check"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    return-void
.end method

.method public static setTriggeredFullMerge(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "isTrigger"

    .prologue
    .line 431
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 432
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "TriggeredFullMerge"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    return-void
.end method

.method public static setTriggeredSendSN(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "isTrigger"

    .prologue
    .line 439
    const-string v2, "CSPreference"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 440
    .local v1, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 441
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "TriggeredSendSN"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 442
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    return-void
.end method

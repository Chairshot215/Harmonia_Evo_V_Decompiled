.class public Lcom/htc/cslib/util/CSEngineUtil;
.super Ljava/lang/Object;
.source "CSEngineUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CSEngineUtil"

.field public static final preferenceEngine:Ljava/lang/String; = "CSEngine"

.field private static final preferenceName:Ljava/lang/String; = "CSShared"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentNetwork(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "userContext"

    .prologue
    .line 51
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 52
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 53
    .local v1, info:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getDeviceID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "userContext"

    .prologue
    .line 46
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 47
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getFloatSenseVersion()F
    .locals 3

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 68
    .local v1, senseVersion:F
    :try_start_0
    sget-object v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 72
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getNetwork(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "userContext"

    .prologue
    .line 36
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 37
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "userContext"

    .prologue
    .line 41
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 42
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "userContext"

    .prologue
    .line 31
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 32
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPhoneType(Landroid/content/Context;)I
    .locals 2
    .parameter "userContext"

    .prologue
    .line 26
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 27
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    return v1
.end method

.method public static getProvServeName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "context"

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 94
    .local v1, otherAppsContext:Landroid/content/Context;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    const-string v4, "CSShared"

    const/4 v5, 0x5

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 101
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v4, "provServer"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :goto_0
    return-object v3

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "cslib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CSEngineUtilException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getSignatureForHTTPPut(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 139
    const-string v2, "CSEngine"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, preferences:Landroid/content/SharedPreferences;
    const-string v2, "signature"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, value:Ljava/lang/String;
    return-object v1
.end method

.method public static isCSAccountCreated(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 78
    .local v2, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.htc.cs"

    const/16 v5, 0x2000

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 79
    .local v1, pInfo:Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.htc.cs"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 80
    const/4 v3, 0x1

    .line 85
    .end local v1           #pInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isCSAccountExist(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 57
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.htc.cs"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 58
    .local v0, account:[Landroid/accounts/Account;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 59
    const/4 v1, 0x1

    .line 61
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setSignatureForHTTPPut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "androidApi"
    .parameter "androidVersion"
    .parameter "customerId"
    .parameter "modelId"
    .parameter "romVersion"
    .parameter "senseVersion"
    .parameter "serialNumber"

    .prologue
    .line 111
    const-string v6, "AndroidAPILevel:%s,AndroidVersion:%s,CustomerID:%s,ModelID:%s,ROMVersion:%s,SenseVersion:%s,%s"

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    const/4 v8, 0x4

    aput-object p5, v7, v8

    const/4 v8, 0x5

    aput-object p6, v7, v8

    const/4 v8, 0x6

    aput-object p7, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, payload:Ljava/lang/String;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 123
    .local v2, md:Ljava/security/MessageDigest;
    :try_start_1
    const-string v6, "UTF8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, signature:Ljava/lang/String;
    const-string v6, "CSEngine"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 133
    .local v4, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 134
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "signature"

    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 136
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #md:Ljava/security/MessageDigest;
    .end local v4           #preferences:Landroid/content/SharedPreferences;
    .end local v5           #signature:Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 125
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    .restart local v2       #md:Ljava/security/MessageDigest;
    :catch_1
    move-exception v0

    .line 127
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

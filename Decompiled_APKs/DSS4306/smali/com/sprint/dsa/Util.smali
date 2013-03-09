.class public Lcom/sprint/dsa/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final DEBUG:Z

.field public static EMULATOR:Z

.field public static FACTORY_DEFAULT:Z

.field public static FWVER:Ljava/lang/String;

.field public static MAKE:Ljava/lang/String;

.field public static MODEL:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field public static TEST_URL:Ljava/lang/String;

.field public static nai:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    const-string v0, "DSS"

    sput-object v0, Lcom/sprint/dsa/Util;->TAG:Ljava/lang/String;

    .line 30
    sput-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    .line 31
    sput-boolean v2, Lcom/sprint/dsa/Util;->FACTORY_DEFAULT:Z

    .line 33
    sput-object v1, Lcom/sprint/dsa/Util;->MODEL:Ljava/lang/String;

    .line 34
    sput-object v1, Lcom/sprint/dsa/Util;->MAKE:Ljava/lang/String;

    .line 35
    sput-object v1, Lcom/sprint/dsa/Util;->FWVER:Ljava/lang/String;

    .line 36
    sput-object v1, Lcom/sprint/dsa/Util;->nai:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/sprint/dsa/Util;->TEST_URL:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static currentTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 76
    .local v0, now:Ljava/util/Date;
    invoke-static {v0}, Lcom/sprint/dsa/Util;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter "d"

    .prologue
    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy HH:mm:ss zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .parameter "value"

    .prologue
    .line 138
    const/4 v3, 0x0

    .line 139
    .local v3, pkgName:Ljava/lang/String;
    const/4 v0, 0x0

    .line 142
    .local v0, clsName:Ljava/lang/String;
    const-string v4, "com.sprint.dsa"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    const-string v3, "com.sprint.dsa"

    .line 144
    move-object v0, p0

    .line 164
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    .line 165
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_1
    return-object v1

    .line 146
    :cond_1
    const-string v4, "com.google.android.gsf"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 147
    const-string v3, "com.google.android.gsf"

    .line 148
    move-object v0, p0

    goto :goto_0

    .line 151
    :cond_2
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 152
    .local v2, parts:[Ljava/lang/String;
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    .line 153
    const/4 v4, 0x0

    aget-object v3, v2, v4

    .line 154
    const/4 v4, 0x1

    aget-object v0, v2, v4

    .line 156
    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 168
    .end local v2           #parts:[Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getPackageVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5
    .parameter "context"
    .parameter "pkgName"

    .prologue
    const/4 v3, 0x0

    .line 192
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 194
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 195
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return v3

    .line 196
    :catch_0
    move-exception v0

    .line 198
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getSystemUpdateIntent()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 127
    const-string v2, "com.google.android.gsf"

    .line 128
    .local v2, pkgName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".update.SystemUpdateActivity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, clsName:Ljava/lang/String;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v1, compName:Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v3, update:Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    return-object v3
.end method

.method public static hexMeidToDec(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "input"

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 237
    const/4 v3, 0x0

    .line 238
    .local v3, firstPart:Ljava/lang/StringBuffer;
    const/4 v5, 0x0

    .line 239
    .local v5, secondPart:Ljava/lang/StringBuffer;
    const/16 v2, 0x8

    .line 240
    .local v2, HEX_MEID_1ST_LEN:I
    const/16 v0, 0xa

    .line 241
    .local v0, DEC_MEID_1ST_LEN:I
    const/16 v1, 0x8

    .line 245
    .local v1, DEC_MEID_2ND_LEN:I
    new-instance v3, Ljava/lang/StringBuffer;

    .end local v3           #firstPart:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 246
    .restart local v3       #firstPart:Ljava/lang/StringBuffer;
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #secondPart:Ljava/lang/StringBuffer;
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 249
    .restart local v5       #secondPart:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v9, v6, v7}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v9, v6, v7}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_0

    .line 256
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    if-lt v6, v10, :cond_1

    .line 260
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    .local v4, i:I
    :goto_2
    const/4 v6, 0x6

    if-lt v4, v6, :cond_2

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 254
    .end local v4           #i:I
    :cond_0
    const-string v6, "0"

    invoke-virtual {v3, v9, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 257
    :cond_1
    const-string v6, "0"

    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 261
    .restart local v4       #i:I
    :cond_2
    const-string v6, "0"

    invoke-virtual {v5, v9, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "delim"
    .parameter "values"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sprint/dsa/Util;->join(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "delim"
    .parameter "values"
    .parameter "nullValue"

    .prologue
    .line 101
    if-nez p1, :cond_0

    const-string v3, ""

    .line 116
    :goto_0
    return-object v3

    .line 103
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 105
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 106
    .local v2, value:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-lt v0, v3, :cond_1

    .line 116
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 107
    :cond_1
    aget-object v2, p1, v0

    .line 108
    if-nez v2, :cond_2

    move-object v2, p2

    .line 110
    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 112
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "s"

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, m:Ljava/security/MessageDigest;
    if-nez p0, :cond_0

    const-string v1, ""

    .line 92
    :goto_0
    return-object v1

    .line 83
    :cond_0
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 85
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 86
    .local v1, hash:Ljava/lang/String;
    goto :goto_0

    .line 87
    .end local v1           #hash:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const-string v1, ""

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static setFactoryDefault(Landroid/content/Context;)V
    .locals 8
    .parameter "cx"

    .prologue
    .line 268
    new-instance v4, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v4, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 270
    .local v4, sp:Lcom/sprint/internal/SystemProperties;
    const/16 v5, 0x1e

    :try_start_0
    invoke-virtual {v4, v5}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, MEID:Ljava/lang/String;
    invoke-static {v0}, Lcom/sprint/dsa/Util;->hexMeidToDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, decMEID:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "000000"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 275
    const/16 v5, 0x23

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "000000"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 276
    const/4 v5, 0x2

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 277
    const/16 v5, 0x2b

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V

    .line 278
    new-instance v3, Lcom/sprint/internal/Platform;

    invoke-direct {v3, p0}, Lcom/sprint/internal/Platform;-><init>(Landroid/content/Context;)V

    .line 279
    .local v3, pf:Lcom/sprint/internal/Platform;
    invoke-virtual {v3}, Lcom/sprint/internal/Platform;->reboot()V
    :try_end_0
    .catch Lcom/sprint/internal/SystemPropertiesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0           #MEID:Ljava/lang/String;
    .end local v1           #decMEID:Ljava/lang/String;
    .end local v3           #pf:Lcom/sprint/internal/Platform;
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v2

    .line 281
    .local v2, e:Lcom/sprint/internal/SystemPropertiesException;
    sget-object v5, Lcom/sprint/dsa/Util;->TAG:Ljava/lang/String;

    const-string v6, "System Prop error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showMessageDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "context"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 181
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 184
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 186
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 187
    return-object v1
.end method

.method public static stringEquals(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"
    .parameter "ignoreCase"

    .prologue
    .line 207
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 208
    const/4 v0, 0x1

    .line 217
    :goto_0
    return v0

    .line 210
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 214
    :cond_2
    if-eqz p2, :cond_3

    .line 215
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static stripQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    .line 223
    if-nez p0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-object p0

    .line 225
    :cond_1
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 228
    :cond_2
    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.class public Lcom/sprint/dsa/DsaDiag;
.super Ljava/lang/Object;
.source "DsaDiag.java"


# static fields
.field static final SIX_ZEROS:Ljava/lang/String; = "000000"

.field public static final TAG:Ljava/lang/String; = "DSS"

.field private static availablePrlVersion:Ljava/lang/String;

.field private static availableSoftwareVersion:Ljava/lang/String;

.field private static mdn:Ljava/lang/String;

.field private static systemProperties:Lcom/sprint/internal/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/DsaDiag;->mdn:Ljava/lang/String;

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

.method public static canConnectTo(Ljava/lang/String;I)Z
    .locals 13
    .parameter "url"
    .parameter "port"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 230
    :try_start_0
    const-string v10, "android.os.StrictMode"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 231
    .local v6, strictModeClass:Ljava/lang/Class;
    const-string v10, "android.os.StrictMode$ThreadPolicy"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 232
    .local v7, strictModeThreadPolicyClass:Ljava/lang/Class;
    const-string v10, "LAX"

    invoke-virtual {v7, v10}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 233
    .local v2, laxPolicy:Ljava/lang/Object;
    const-string v10, "setThreadPolicy"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    invoke-virtual {v6, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 234
    .local v3, method_setThreadPolicy:Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 236
    .end local v2           #laxPolicy:Ljava/lang/Object;
    .end local v3           #method_setThreadPolicy:Ljava/lang/reflect/Method;
    .end local v6           #strictModeClass:Ljava/lang/Class;
    .end local v7           #strictModeThreadPolicyClass:Ljava/lang/Class;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v10, 0x2

    if-lt v0, v10, :cond_0

    move v8, v9

    .line 255
    :goto_2
    return v8

    .line 241
    :cond_0
    :try_start_1
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 243
    .local v1, ip:Ljava/net/InetAddress;
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, v1, p1}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 244
    .local v5, socket:Ljava/net/Socket;
    const-wide/16 v10, 0x64

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 245
    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    .line 247
    .local v4, out:Ljava/io/OutputStream;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/io/OutputStream;->write(I)V

    .line 248
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 250
    .end local v1           #ip:Ljava/net/InetAddress;
    .end local v4           #out:Ljava/io/OutputStream;
    .end local v5           #socket:Ljava/net/Socket;
    :catch_0
    move-exception v10

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    .end local v0           #i:I
    :catch_1
    move-exception v10

    goto :goto_0
.end method

.method public static canConnectToDSA1()Z
    .locals 2

    .prologue
    .line 222
    const-string v0, "deviceselfservice.sprint.com"

    const/16 v1, 0x1bb

    invoke-static {v0, v1}, Lcom/sprint/dsa/DsaDiag;->canConnectTo(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static doHaveSignal()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static get4GStatusText(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "cx"

    .prologue
    .line 119
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 121
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 122
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 123
    const-string v2, "not supported"

    .line 125
    .local v2, wimaxStatus:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 124
    .end local v2           #wimaxStatus:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->name()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #wimaxStatus:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getAvailablePrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/sprint/dsa/DsaDiag;->availablePrlVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/sprint/dsa/DsaDiag;->availableSoftwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getMDN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/sprint/dsa/DsaDiag;->mdn:Ljava/lang/String;

    return-object v0
.end method

.method public static getMdn(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 155
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 160
    :goto_0
    return-object v2

    .line 157
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sprint/dsa/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v1

    .line 158
    .local v1, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 159
    .end local v1           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getMeid(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 4
    .parameter "ctx"
    .parameter "asHex"

    .prologue
    .line 185
    sget-boolean v3, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v3, :cond_0

    const-string v3, ""

    .line 195
    :goto_0
    return-object v3

    .line 187
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sprint/dsa/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v2

    .line 188
    .local v2, sp:Lcom/sprint/internal/SystemProperties;
    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, hex:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 190
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 192
    :cond_1
    invoke-static {v1}, Lcom/sprint/dsa/Util;->hexMeidToDec(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 194
    .end local v1           #hex:Ljava/lang/String;
    .end local v2           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_0
.end method

.method public static getMsid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 165
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 170
    :goto_0
    return-object v2

    .line 167
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sprint/dsa/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v1

    .line 168
    .local v1, sp:Lcom/sprint/internal/SystemProperties;
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 169
    .end local v1           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getNai(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 175
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_0

    const-string v2, ""

    .line 180
    :goto_0
    return-object v2

    .line 177
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/sprint/dsa/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v1

    .line 178
    .local v1, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 179
    .end local v1           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    sget-object v0, Lcom/sprint/dsa/DsaDiag;->systemProperties:Lcom/sprint/internal/SystemProperties;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v0, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sprint/dsa/DsaDiag;->systemProperties:Lcom/sprint/internal/SystemProperties;

    .line 38
    :cond_0
    sget-object v0, Lcom/sprint/dsa/DsaDiag;->systemProperties:Lcom/sprint/internal/SystemProperties;

    return-object v0
.end method

.method public static hasSMS()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public static hasVoice()Z
    .locals 2

    .prologue
    .line 130
    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    const-string v0, "SPH-P100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static is4GCapable(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z
    .locals 6
    .parameter "make"
    .parameter "model"
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 105
    const-string v4, "Samsung"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const-string v4, "SPH-D700"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    :cond_0
    :goto_0
    return v2

    .line 109
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    move v2, v3

    goto :goto_0

    .line 110
    :cond_2
    const-string v4, "connectivity"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 112
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 113
    .local v1, info:Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    move v2, v3

    .line 115
    goto :goto_0
.end method

.method public static isAirplaneMode(Landroid/content/Context;)Z
    .locals 4
    .parameter "me"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 67
    const-string v3, "airplane_mode_on"

    .line 66
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 68
    .local v0, isEnabled:Z
    :goto_0
    return v0

    .end local v0           #isEnabled:Z
    :cond_0
    move v0, v1

    .line 66
    goto :goto_0
.end method

.method public static isFactoryDefault(Landroid/content/Context;)Z
    .locals 7
    .parameter "me"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    invoke-static {}, Lcom/sprint/dsa/Device;->getInstance()Lcom/sprint/dsa/Device;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sprint/dsa/Device;->isIden()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 43
    sput-boolean v3, Lcom/sprint/dsa/Util;->FACTORY_DEFAULT:Z

    .line 62
    :cond_0
    :goto_0
    return v3

    .line 46
    :cond_1
    sget-boolean v5, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v5, :cond_2

    sget-boolean v3, Lcom/sprint/dsa/Util;->FACTORY_DEFAULT:Z

    goto :goto_0

    .line 50
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/sprint/dsa/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;

    move-result-object v2

    .line 52
    .local v2, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/sprint/dsa/DsaDiag;->mdn:Ljava/lang/String;

    .line 53
    const/16 v5, 0x23

    invoke-virtual {v2, v5}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, msid:Ljava/lang/String;
    sget-object v5, Lcom/sprint/dsa/DsaDiag;->mdn:Ljava/lang/String;

    const-string v6, "000000"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "000000"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    :cond_3
    move v3, v4

    .line 55
    goto :goto_0

    .line 59
    .end local v1           #msid:Ljava/lang/String;
    .end local v2           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DSS"

    const-string v5, "Unable to get System Properties"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isRoamming(Landroid/content/Context;)Z
    .locals 2
    .parameter "me"

    .prologue
    .line 100
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 101
    .local v0, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    return v1
.end method

.method public static isSamsungTablet()Z
    .locals 2

    .prologue
    .line 140
    const-string v0, "samsung"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "SPH-P100"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAirplaneMode(Landroid/content/Context;Z)V
    .locals 4
    .parameter "me"
    .parameter "isEnabled"

    .prologue
    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 76
    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 75
    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 82
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static setAvailablePrlVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "availablePrlVersion"

    .prologue
    .line 211
    if-eqz p0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/DsaDiag;->availablePrlVersion:Ljava/lang/String;

    .line 215
    :goto_0
    return-void

    .line 214
    :cond_0
    sput-object p0, Lcom/sprint/dsa/DsaDiag;->availablePrlVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static setAvailableSoftwareVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "availableSoftwareVersion"

    .prologue
    .line 200
    if-eqz p0, :cond_0

    const-string v0, "null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    sput-object v0, Lcom/sprint/dsa/DsaDiag;->availableSoftwareVersion:Ljava/lang/String;

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    sput-object p0, Lcom/sprint/dsa/DsaDiag;->availableSoftwareVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public static testSMS(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 11
    .parameter "context"
    .parameter "sPI"
    .parameter "dPI"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, smsNumber:Ljava/lang/String;
    sget-boolean v2, Lcom/sprint/dsa/Util;->EMULATOR:Z

    if-eqz v2, :cond_0

    .line 261
    const-string v1, "9135551212"

    .line 285
    :goto_0
    if-eqz v1, :cond_1

    .line 286
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 288
    .local v0, sms:Landroid/telephony/SmsManager;
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "//voice check"

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move v2, v10

    .line 299
    .end local v0           #sms:Landroid/telephony/SmsManager;
    :goto_1
    return v2

    .line 266
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/sprint/dsa/DsaDiag;->getSystemProperties(Landroid/content/Context;)Lcom/sprint/internal/SystemProperties;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 273
    .local v8, sp:Lcom/sprint/internal/SystemProperties;
    const/4 v2, 0x1

    :try_start_2
    invoke-virtual {v8, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_0

    .line 267
    .end local v8           #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v7

    .line 268
    .local v7, e:Ljava/lang/Exception;
    const-string v2, "DSS"

    const-string v3, "Unable to get System Properties"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v9

    .line 269
    goto :goto_1

    .line 275
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #sp:Lcom/sprint/internal/SystemProperties;
    :catch_1
    move-exception v7

    .line 277
    .local v7, e:Ljava/lang/Throwable;
    new-instance v6, Landroid/content/Intent;

    const-string v2, "SMS_SENT"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v6, broadcast:Landroid/content/Intent;
    const-string v2, "SmsError"

    invoke-virtual {v6, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 281
    const-string v2, "DSS"

    const-string v3, "Reading MDN and msid"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 290
    .end local v6           #broadcast:Landroid/content/Intent;
    .end local v7           #e:Ljava/lang/Throwable;
    .end local v8           #sp:Lcom/sprint/internal/SystemProperties;
    .restart local v0       #sms:Landroid/telephony/SmsManager;
    :catch_2
    move-exception v7

    .line 291
    .restart local v7       #e:Ljava/lang/Throwable;
    new-instance v6, Landroid/content/Intent;

    const-string v2, "SMS_SENT"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 292
    .restart local v6       #broadcast:Landroid/content/Intent;
    const-string v2, "SmsError"

    invoke-virtual {v6, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 295
    const-string v2, "DSS"

    const-string v3, "Error sending voice check SMS"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #sms:Landroid/telephony/SmsManager;
    .end local v6           #broadcast:Landroid/content/Intent;
    .end local v7           #e:Ljava/lang/Throwable;
    :cond_1
    move v2, v9

    .line 299
    goto :goto_1
.end method

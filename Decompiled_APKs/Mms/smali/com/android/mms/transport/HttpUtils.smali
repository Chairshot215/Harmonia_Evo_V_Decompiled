.class public Lcom/android/mms/transport/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final HDR_KEY_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HDR_KEY_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final HDR_KEY_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HDR_KEY_PROFILE:Ljava/lang/String; = "profile"

.field private static final HDR_KEY_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final HDR_VALUE_ACCEPT:Ljava/lang/String; = "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

.field private static final HDR_VALUE_ACCEPT_CHARSET:Ljava/lang/String; = "us-ascii,utf-8,iso-10646-ucs-2,ISO-8859-1"

.field private static final HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String; = null

.field public static final HTTP_GET_METHOD:I = 0x2

.field public static final HTTP_POST_METHOD:I = 0x1

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "HttpUtils"

.field public static mClient:Landroid/net/http/AndroidHttpClient;

.field public static mHttpContext:Lorg/apache/http/protocol/HttpContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    sput-object v0, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 115
    sput-object v0, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 117
    invoke-static {}, Lcom/android/mms/transport/HttpUtils;->getHttpAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transport/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 134
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    return-void
.end method

.method private static addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 721
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 729
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 737
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 739
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 741
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 742
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 743
    return-object v0
.end method

.method private static createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;
    .locals 7
    .parameter "context"

    .prologue
    .line 674
    invoke-static {p0}, Lcom/android/mms/transport/HttpUtils;->getOemUAString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, uaString:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 676
    const-string v3, "Android-Mms/0.1"

    .line 678
    :cond_0
    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    .line 682
    .local v0, client:Landroid/net/http/AndroidHttpClient;
    invoke-virtual {v0}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 683
    .local v1, params:Lorg/apache/http/params/HttpParams;
    const-string v4, "UTF-8"

    invoke-static {v1, v4}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 689
    const v2, 0xea60

    .line 692
    .local v2, soTimeout:I
    const-string v4, "HttpUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HttpUtils] createHttpClient w/ socket timeout "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", UA="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 697
    return-object v0
.end method

.method protected static enableTmoWifiIms()Z
    .locals 2

    .prologue
    .line 200
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x89

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0x9b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static encryptHMAC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "source"
    .parameter "authKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    const-string v0, "HmacMD5"

    .line 158
    .local v0, KEY_MAC:Ljava/lang/String;
    const-string v3, "HmacMD5"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 159
    .local v2, hmac_md5:Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "ISO-8859-1"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "HmacMD5"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 160
    const-string v3, "ISO-8859-1"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 161
    .local v1, b:[B
    invoke-static {v1}, Lcom/android/mms/transport/HttpUtils;->getHexStr([B)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAAASSD()Ljava/lang/String;
    .locals 13

    .prologue
    .line 165
    const-string v10, "iphonesubinfo"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v9

    .line 166
    .local v9, subInfo:Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v9, :cond_0

    .line 167
    const-string v8, "ph1uzoe52iuw"

    .line 168
    .local v8, secretKey:Ljava/lang/String;
    const/4 v7, 0x0

    .line 169
    .local v7, mdn:Ljava/lang/String;
    const/4 v4, 0x0

    .line 171
    .local v4, esn:Ljava/lang/String;
    :try_start_0
    invoke-interface {v9}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1Number()Ljava/lang/String;

    move-result-object v7

    .line 172
    invoke-interface {v9}, Lcom/android/internal/telephony/IPhoneSubInfo;->getEsn()Ljava/lang/String;

    move-result-object v4

    .line 173
    const-string v10, "HttpUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get ESN:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", MDN:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    .line 175
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 177
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, input:Ljava/lang/String;
    const-string v10, "ph1uzoe52iuw"

    invoke-static {v6, v10}, Lcom/android/mms/transport/HttpUtils;->encryptHMAC(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 179
    .local v5, hmac_md5:Ljava/lang/String;
    const-string v10, "HttpUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get hmac_md5:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v12, 0xc

    invoke-virtual {v5, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, authString:Ljava/lang/String;
    const-string v10, "HttpUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get authString:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/lang/String;-><init>([B)V

    .line 183
    .local v0, authBase64:Ljava/lang/String;
    const-string v10, "HttpUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "get authBase64:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 194
    .end local v0           #authBase64:Ljava/lang/String;
    .end local v1           #authString:Ljava/lang/String;
    .end local v4           #esn:Ljava/lang/String;
    .end local v5           #hmac_md5:Ljava/lang/String;
    .end local v6           #input:Ljava/lang/String;
    .end local v7           #mdn:Ljava/lang/String;
    .end local v8           #secretKey:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 185
    .restart local v4       #esn:Ljava/lang/String;
    .restart local v7       #mdn:Ljava/lang/String;
    .restart local v8       #secretKey:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 186
    .local v2, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    .end local v2           #e:Ljava/lang/Exception;
    .end local v4           #esn:Ljava/lang/String;
    .end local v7           #mdn:Ljava/lang/String;
    .end local v8           #secretKey:Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 189
    .restart local v4       #esn:Ljava/lang/String;
    .restart local v7       #mdn:Ljava/lang/String;
    .restart local v8       #secretKey:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 190
    .local v3, e1:Landroid/os/RemoteException;
    const-string v10, "HttpUtils"

    const-string v11, "Can\'t get ESN & MDN"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getHexStr([B)Ljava/lang/String;
    .locals 5
    .parameter "b"

    .prologue
    .line 140
    const-string v2, ""

    .local v2, tempstr:Ljava/lang/String;
    const-string v1, ""

    .line 141
    .local v1, str:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_2

    .line 142
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    :goto_1
    add-int/lit8 v3, v0, 0x1

    rem-int/lit8 v3, v3, 0x10

    if-nez v3, :cond_0

    .line 149
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 153
    :cond_2
    return-object v1
.end method

.method private static getHttpAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 706
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 707
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/mms/transport/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 710
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 711
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 712
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transport/HttpUtils;->addLocaleToHttpAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 716
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getNAI(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    .line 815
    const/16 v5, 0x94

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xaf

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    invoke-static {v5}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 818
    :cond_0
    const/4 v0, 0x0

    .local v0, Base64_NAI:Ljava/lang/String;
    const/4 v2, 0x0

    .line 819
    .local v2, NAI:Ljava/lang/String;
    new-instance v4, Lcom/sprint/internal/SystemProperties;

    invoke-direct {v4, p0}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 822
    .local v4, sp:Lcom/sprint/internal/SystemProperties;
    :try_start_0
    const-string v5, "Jerry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ori_NAI >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v7}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":pcs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 824
    if-eqz v2, :cond_1

    .line 825
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .end local v0           #Base64_NAI:Ljava/lang/String;
    .local v1, Base64_NAI:Ljava/lang/String;
    move-object v0, v1

    .line 827
    .end local v1           #Base64_NAI:Ljava/lang/String;
    .restart local v0       #Base64_NAI:Ljava/lang/String;
    :cond_1
    const-string v5, "Jerry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NAI >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v5, "Jerry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Base64_NAI >"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    .end local v0           #Base64_NAI:Ljava/lang/String;
    .end local v2           #NAI:Ljava/lang/String;
    .end local v4           #sp:Lcom/sprint/internal/SystemProperties;
    :goto_0
    return-object v0

    .line 830
    .restart local v0       #Base64_NAI:Ljava/lang/String;
    .restart local v2       #NAI:Ljava/lang/String;
    .restart local v4       #sp:Lcom/sprint/internal/SystemProperties;
    :catch_0
    move-exception v3

    .line 831
    .local v3, ex:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 834
    .end local v0           #Base64_NAI:Ljava/lang/String;
    .end local v2           #NAI:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/Exception;
    .end local v4           #sp:Lcom/sprint/internal/SystemProperties;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getOemUAProfile(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    .line 746
    const/4 v7, 0x0

    .line 750
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "com.android.mms.debug_setting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 751
    .local v12, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 752
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "content://customization_settings/SettingTable/force_change_Browser"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 754
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 755
    if-nez v7, :cond_1

    .line 756
    const/4 v14, 0x0

    .line 774
    if-eqz v7, :cond_0

    .line 775
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v12           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v14

    .line 758
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v12       #sp:Landroid/content/SharedPreferences;
    :cond_1
    :try_start_1
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 759
    .local v10, idValue:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 760
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 761
    .local v8, data:[B
    invoke-static {v8}, Lcom/android/mms/transport/HttpUtils;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 764
    .local v6, bundle:Landroid/os/Bundle;
    const-string v11, "ua_profile"

    .line 765
    .local v11, key:Ljava/lang/String;
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 767
    .local v13, ua_profileBundle:Landroid/os/Bundle;
    const-string v11, "value"

    .line 768
    const-string v2, "ua_profile"

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 769
    .local v14, value:Ljava/lang/String;
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key=ua_profile, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 774
    if-eqz v7, :cond_0

    .line 775
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 771
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #data:[B
    .end local v10           #idValue:I
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #sp:Landroid/content/SharedPreferences;
    .end local v13           #ua_profileBundle:Landroid/os/Bundle;
    .end local v14           #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 772
    .local v9, ex:Ljava/lang/Exception;
    const/4 v14, 0x0

    .line 774
    if-eqz v7, :cond_0

    .line 775
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 774
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    .line 775
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static getOemUAString(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    .line 780
    const/4 v7, 0x0

    .line 784
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    const-string v2, "com.android.mms.debug_setting"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 785
    .local v12, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 786
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "content://customization_settings/SettingTable/force_change_MMS"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 788
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 789
    if-nez v7, :cond_1

    .line 790
    const/4 v14, 0x0

    .line 808
    if-eqz v7, :cond_0

    .line 809
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v12           #sp:Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v14

    .line 792
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    .restart local v12       #sp:Landroid/content/SharedPreferences;
    :cond_1
    :try_start_1
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 793
    .local v10, idValue:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 794
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 795
    .local v8, data:[B
    invoke-static {v8}, Lcom/android/mms/transport/HttpUtils;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 798
    .local v6, bundle:Landroid/os/Bundle;
    const-string v11, "ua_string"

    .line 799
    .local v11, key:Ljava/lang/String;
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 801
    .local v13, ua_profileBundle:Landroid/os/Bundle;
    const-string v11, "value"

    .line 802
    const-string v2, "ua_string"

    invoke-virtual {v13, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 803
    .local v14, value:Ljava/lang/String;
    const-string v2, "HttpUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key=ua_string, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 808
    if-eqz v7, :cond_0

    .line 809
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 805
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #data:[B
    .end local v10           #idValue:I
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #sp:Landroid/content/SharedPreferences;
    .end local v13           #ua_profileBundle:Landroid/os/Bundle;
    .end local v14           #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 806
    .local v9, ex:Ljava/lang/Exception;
    const/4 v14, 0x0

    .line 808
    if-eqz v7, :cond_0

    .line 809
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 808
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    .line 809
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private static getXWapProfileHeaderValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 640
    invoke-static {p0}, Lcom/android/mms/transport/HttpUtils;->getOemUAProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, uaProfile:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 645
    const-string v0, "http://www.htcmms.com.tw/Android/Common/ua-profile.xml"

    .line 646
    const-string v1, "HttpUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use default ua_profile="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    return-object v0
.end method

.method private static handleHttpConnectionException(Lcom/htc/messaging/util/HtcHttpTransportError;)V
    .locals 5
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    const-string v0, "HttpUtils"

    const-string v1, "Catched unexcepted http-error exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    new-instance v0, Lcom/htc/messaging/util/HtcHttpTransportError;

    invoke-virtual {p0}, Lcom/htc/messaging/util/HtcHttpTransportError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/messaging/util/HtcHttpTransportError;->isSendError()Z

    move-result v2

    invoke-virtual {p0}, Lcom/htc/messaging/util/HtcHttpTransportError;->getHttpErrorCode()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/messaging/util/HtcHttpTransportError;->getWspErrorCode()Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/messaging/util/HtcHttpTransportError;-><init>(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    throw v0
.end method

.method private static handleHttpConnectionException(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    const-string v0, "HttpUtils"

    const-string v1, "Catched unexcepted http exception"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static httpConnection(Landroid/content/Context;JLjava/lang/String;[BIZLjava/lang/String;I)[B
    .locals 38
    .parameter "context"
    .parameter "token"
    .parameter "url"
    .parameter "pdu"
    .parameter "method"
    .parameter "isProxySet"
    .parameter "proxyHost"
    .parameter "proxyPort"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 222
    if-nez p3, :cond_0

    .line 223
    new-instance v33, Ljava/lang/IllegalArgumentException;

    const-string v34, "URL must not be null."

    invoke-direct/range {v33 .. v34}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v33

    .line 227
    :cond_0
    const-string v33, "HttpUtils"

    const-string v34, "httpConnection: params list"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "\ttoken\t\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "\turl\t\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v34, "HttpUtils"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "\tmethod\t\t= "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const/16 v33, 0x1

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    const-string v33, "POST"

    :goto_0
    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "\tisProxySet\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "\tproxyHost\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "\tproxyPort\t= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v12, 0x0

    .line 241
    .local v12, client:Landroid/net/http/AndroidHttpClient;
    new-instance v33, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct/range {v33 .. v33}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 259
    const/16 v30, 0x0

    .line 260
    .local v30, target:Lorg/apache/http/HttpHost;
    const/16 v21, 0x1

    .line 262
    .local v21, isUsingMobile:Z
    :try_start_0
    invoke-static {}, Lcom/android/mms/transport/HttpUtils;->enableTmoWifiIms()Z

    move-result v33

    if-eqz v33, :cond_1

    .line 263
    const-string v33, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/ConnectivityManager;

    .line 265
    .local v22, mConnMgr:Landroid/net/ConnectivityManager;
    const/16 v33, 0x2

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v33

    if-eqz v33, :cond_6

    invoke-virtual/range {v22 .. v22}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v33

    if-eqz v33, :cond_6

    const/16 v21, 0x1

    .line 269
    :goto_1
    if-nez v21, :cond_1

    const/16 v33, 0x1

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_1

    .line 270
    const-string v33, "https"

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-nez v33, :cond_1

    const-string v33, "http"

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_1

    .line 271
    const-string v33, "http"

    const-string v34, "https"

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 272
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "force https, new url: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v22           #mConnMgr:Landroid/net/ConnectivityManager;
    :cond_1
    new-instance v17, Ljava/net/URI;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 277
    .local v17, hostUrl:Ljava/net/URI;
    invoke-static {}, Lcom/android/mms/transport/HttpUtils;->enableTmoWifiIms()Z

    move-result v33

    if-eqz v33, :cond_7

    if-nez v21, :cond_7

    const/16 v33, 0x1

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 278
    new-instance v31, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v34

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .end local v30           #target:Lorg/apache/http/HttpHost;
    .local v31, target:Lorg/apache/http/HttpHost;
    move-object/from16 v30, v31

    .line 288
    .end local v31           #target:Lorg/apache/http/HttpHost;
    .restart local v30       #target:Lorg/apache/http/HttpHost;
    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transport/HttpUtils;->createHttpClient(Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v12

    .line 291
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 292
    sput-object v12, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 293
    :cond_2
    const/16 v27, 0x0

    .line 294
    .local v27, req:Lorg/apache/http/HttpRequest;
    packed-switch p5, :pswitch_data_0

    .line 309
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Unknown HTTP method: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, ". Must be one of POST["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x1

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "] or GET["

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const/16 v35, 0x2

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 312
    const/4 v7, 0x0

    .line 627
    if-eqz v12, :cond_3

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v33, "HttpUtils"

    const-string v34, "client closed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_3

    .line 631
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_3
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 635
    .end local v17           #hostUrl:Ljava/net/URI;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    :goto_3
    return-object v7

    .line 230
    .end local v12           #client:Landroid/net/http/AndroidHttpClient;
    .end local v21           #isUsingMobile:Z
    .end local v30           #target:Lorg/apache/http/HttpHost;
    :cond_4
    const/16 v33, 0x2

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    const-string v33, "GET"

    goto/16 :goto_0

    :cond_5
    const-string v33, "UNKNOWN"

    goto/16 :goto_0

    .line 265
    .restart local v12       #client:Landroid/net/http/AndroidHttpClient;
    .restart local v21       #isUsingMobile:Z
    .restart local v22       #mConnMgr:Landroid/net/ConnectivityManager;
    .restart local v30       #target:Lorg/apache/http/HttpHost;
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 282
    .end local v22           #mConnMgr:Landroid/net/ConnectivityManager;
    .restart local v17       #hostUrl:Ljava/net/URI;
    :cond_7
    :try_start_1
    new-instance v31, Lorg/apache/http/HttpHost;

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v17 .. v17}, Ljava/net/URI;->getPort()I

    move-result v34

    const-string v35, "http"

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .end local v30           #target:Lorg/apache/http/HttpHost;
    .restart local v31       #target:Lorg/apache/http/HttpHost;
    move-object/from16 v30, v31

    .end local v31           #target:Lorg/apache/http/HttpHost;
    .restart local v30       #target:Lorg/apache/http/HttpHost;
    goto/16 :goto_2

    .line 296
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    :pswitch_0
    new-instance v16, Lcom/android/mms/transport/ProgressCallbackEntity;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/transport/ProgressCallbackEntity;-><init>(Landroid/content/Context;J[B)V

    .line 299
    .local v16, entity:Lcom/android/mms/transport/ProgressCallbackEntity;
    const-string v33, "application/vnd.wap.mms-message"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/mms/transport/ProgressCallbackEntity;->setContentType(Ljava/lang/String;)V

    .line 301
    new-instance v26, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 302
    .local v26, post:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 303
    move-object/from16 v27, v26

    .line 316
    .end local v16           #entity:Lcom/android/mms/transport/ProgressCallbackEntity;
    .end local v26           #post:Lorg/apache/http/client/methods/HttpPost;
    :goto_4
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v24

    .line 317
    .local v24, params:Lorg/apache/http/params/HttpParams;
    if-eqz p6, :cond_8

    .line 318
    new-instance v33, Lorg/apache/http/HttpHost;

    move-object/from16 v0, v33

    move-object/from16 v1, p7

    move/from16 v2, p8

    invoke-direct {v0, v1, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 321
    :cond_8
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/apache/http/HttpRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 327
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v33

    const/16 v34, 0x2

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_24

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/htc/messaging/util/HtcCdmaMmsUtils;->getPhoneNumber(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v18

    .line 329
    .local v18, htcCdmaPhoneNumber:Ljava/lang/String;
    if-eqz v18, :cond_a

    .line 330
    const-string v33, "ro.cid"

    invoke-static/range {v33 .. v33}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 331
    .local v11, cid:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v5

    .line 332
    .local v5, CarrierID:Ljava/lang/Integer;
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "CID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "CarrierID: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0x94

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_9

    const/16 v33, 0xc

    invoke-static/range {v33 .. v33}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v33

    if-nez v33, :cond_9

    const/16 v33, 0xaf

    invoke-static/range {v33 .. v33}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v33

    if-eqz v33, :cond_14

    .line 340
    :cond_9
    const-string v33, "X-MDN"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .end local v5           #CarrierID:Ljava/lang/Integer;
    .end local v11           #cid:Ljava/lang/String;
    .end local v18           #htcCdmaPhoneNumber:Ljava/lang/String;
    :cond_a
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v33

    if-eqz v33, :cond_b

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0xb

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    :cond_b
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v34, 0xa

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0xa1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v34, 0x25

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_c

    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0x5

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_d

    .line 488
    :cond_c
    const/16 v33, 0x2

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    .line 489
    const-string v33, "Accept-Charset"

    const-string v34, "us-ascii,utf-8,iso-10646-ucs-2,ISO-8859-1"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_d
    const/16 v33, 0x94

    invoke-static/range {v33 .. v33}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v33

    if-nez v33, :cond_e

    const/16 v33, 0xaf

    invoke-static/range {v33 .. v33}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v33

    if-nez v33, :cond_e

    const/16 v33, 0xc

    invoke-static/range {v33 .. v33}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v33

    if-eqz v33, :cond_f

    .line 498
    :cond_e
    if-eqz p6, :cond_f

    .line 499
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transport/HttpUtils;->getNAI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    .line 500
    .local v23, nai:Ljava/lang/String;
    if-eqz v23, :cond_f

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_f

    .line 501
    const-string v33, "Proxy-Authorization"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Basic "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .end local v23           #nai:Ljava/lang/String;
    :cond_f
    const-string v33, "Accept"

    const-string v34, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transport/HttpUtils;->getXWapProfileHeaderValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v32

    .line 509
    .local v32, xWapProfileUrl:Ljava/lang/String;
    if-eqz v32, :cond_12

    .line 511
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v33

    if-eqz v33, :cond_10

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x78

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_11

    :cond_10
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v34, 0x13

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_25

    .line 513
    :cond_11
    const-string v33, "profile"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    :cond_12
    :goto_6
    const-string v33, "Accept-Language"

    sget-object v34, Lcom/android/mms/transport/HttpUtils;->HDR_VALUE_ACCEPT_LANGUAGE:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    sget-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    move-object/from16 v2, v33

    invoke-virtual {v12, v0, v1, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v28

    .line 522
    .local v28, response:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v29

    .line 523
    .local v29, status:Lorg/apache/http/StatusLine;
    const-string v33, "Jerry"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "status >"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-interface/range {v29 .. v29}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v33

    const/16 v34, 0xc8

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_27

    .line 529
    const-string v33, "Jerry"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "status.getStatusCode() >"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    new-instance v34, Lcom/htc/messaging/util/HtcHttpTransportError;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "HTTP error: "

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/16 v33, 0x1

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_26

    const/16 v33, 0x1

    :goto_7
    new-instance v36, Ljava/lang/Integer;

    invoke-interface/range {v29 .. v29}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/Integer;-><init>(I)V

    const/16 v37, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move/from16 v2, v33

    move-object/from16 v3, v36

    move-object/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/messaging/util/HtcHttpTransportError;-><init>(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/Integer;)V

    throw v34
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 589
    .end local v17           #hostUrl:Ljava/net/URI;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v29           #status:Lorg/apache/http/StatusLine;
    .end local v32           #xWapProfileUrl:Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 590
    .local v15, e:Ljava/net/ConnectException;
    :try_start_2
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportIPv6()Z

    move-result v33

    if-eqz v33, :cond_2f

    .line 591
    throw v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 627
    .end local v15           #e:Ljava/net/ConnectException;
    :catchall_0
    move-exception v33

    if-eqz v12, :cond_13

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v34, "HttpUtils"

    const-string v35, "client closed"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v34

    if-eqz v34, :cond_13

    .line 631
    const/16 v34, 0x0

    sput-object v34, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_13
    const/16 v34, 0x0

    sput-object v34, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    throw v33

    .line 306
    .restart local v17       #hostUrl:Ljava/net/URI;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    :pswitch_1
    :try_start_3
    new-instance v27, Lorg/apache/http/client/methods/HttpGet;

    .end local v27           #req:Lorg/apache/http/HttpRequest;
    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    goto/16 :goto_4

    .line 342
    .restart local v5       #CarrierID:Ljava/lang/Integer;
    .restart local v11       #cid:Ljava/lang/String;
    .restart local v18       #htcCdmaPhoneNumber:Ljava/lang/String;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    :cond_14
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0xa8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_17

    .line 345
    const-string v33, "+"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_15

    .line 346
    const/16 v33, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 349
    :cond_15
    const-string v33, "X-VZW-MDN"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    goto/16 :goto_5

    .line 594
    .end local v5           #CarrierID:Ljava/lang/Integer;
    .end local v11           #cid:Ljava/lang/String;
    .end local v17           #hostUrl:Ljava/net/URI;
    .end local v18           #htcCdmaPhoneNumber:Ljava/lang/String;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    :catch_1
    move-exception v15

    .line 595
    .local v15, e:Ljava/net/URISyntaxException;
    :try_start_4
    invoke-static {v15}, Lcom/android/mms/transport/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 627
    if-eqz v12, :cond_16

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v33, "HttpUtils"

    const-string v34, "client closed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_16

    .line 631
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_16
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 635
    .end local v15           #e:Ljava/net/URISyntaxException;
    :goto_8
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 351
    .restart local v5       #CarrierID:Ljava/lang/Integer;
    .restart local v11       #cid:Ljava/lang/String;
    .restart local v17       #hostUrl:Ljava/net/URI;
    .restart local v18       #htcCdmaPhoneNumber:Ljava/lang/String;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    :cond_17
    :try_start_5
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0xa1

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_19

    .line 353
    const-string v33, "HTTP_X_VZW_MDN"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_5

    .line 596
    .end local v5           #CarrierID:Ljava/lang/Integer;
    .end local v11           #cid:Ljava/lang/String;
    .end local v17           #hostUrl:Ljava/net/URI;
    .end local v18           #htcCdmaPhoneNumber:Ljava/lang/String;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    :catch_2
    move-exception v15

    .line 597
    .local v15, e:Ljava/lang/IllegalStateException;
    :try_start_6
    invoke-static {v15}, Lcom/android/mms/transport/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 627
    if-eqz v12, :cond_18

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v33, "HttpUtils"

    const-string v34, "client closed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_18

    .line 631
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_18
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    goto :goto_8

    .line 356
    .end local v15           #e:Ljava/lang/IllegalStateException;
    .restart local v5       #CarrierID:Ljava/lang/Integer;
    .restart local v11       #cid:Ljava/lang/String;
    .restart local v17       #hostUrl:Ljava/net/URI;
    .restart local v18       #htcCdmaPhoneNumber:Ljava/lang/String;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    :cond_19
    if-eqz v5, :cond_1a

    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0xb

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_1b

    :cond_1a
    const-string v33, "ALLTE001"

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-nez v33, :cond_1d

    .line 358
    :cond_1b
    const-string v33, "HttpUtils"

    const-string v34, "Append extra http header for Alltel"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const-string v33, "HTTP_X_VZW_MDN"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string v33, "X-Alltel-MDN"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v33, "Proxy-Authorization"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Basic "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-static {}, Lcom/android/mms/transport/HttpUtils;->getAAASSD()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_5

    .line 598
    .end local v5           #CarrierID:Ljava/lang/Integer;
    .end local v11           #cid:Ljava/lang/String;
    .end local v17           #hostUrl:Ljava/net/URI;
    .end local v18           #htcCdmaPhoneNumber:Ljava/lang/String;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    :catch_3
    move-exception v15

    .line 599
    .local v15, e:Ljava/lang/IllegalArgumentException;
    :try_start_8
    invoke-static {v15}, Lcom/android/mms/transport/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 627
    if-eqz v12, :cond_1c

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v33, "HttpUtils"

    const-string v34, "client closed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_1c

    .line 631
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_1c
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    goto/16 :goto_8

    .line 365
    .end local v15           #e:Ljava/lang/IllegalArgumentException;
    .restart local v5       #CarrierID:Ljava/lang/Integer;
    .restart local v11       #cid:Ljava/lang/String;
    .restart local v17       #hostUrl:Ljava/net/URI;
    .restart local v18       #htcCdmaPhoneNumber:Ljava/lang/String;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    :cond_1d
    :try_start_9
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0x66

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_1e

    .line 366
    const-string v33, "X-DEVICE-MIN"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_5

    .line 600
    .end local v5           #CarrierID:Ljava/lang/Integer;
    .end local v11           #cid:Ljava/lang/String;
    .end local v17           #hostUrl:Ljava/net/URI;
    .end local v18           #htcCdmaPhoneNumber:Ljava/lang/String;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    :catch_4
    move-exception v15

    .line 601
    .local v15, e:Ljava/net/SocketException;
    :try_start_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportIPv6()Z

    move-result v33

    if-eqz v33, :cond_31

    .line 602
    throw v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 369
    .end local v15           #e:Ljava/net/SocketException;
    .restart local v5       #CarrierID:Ljava/lang/Integer;
    .restart local v11       #cid:Ljava/lang/String;
    .restart local v17       #hostUrl:Ljava/net/URI;
    .restart local v18       #htcCdmaPhoneNumber:Ljava/lang/String;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    :cond_1e
    if-eqz v5, :cond_1f

    :try_start_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x66

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x65

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x1a

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x6b

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x70

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x6d

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x73

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x77

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x68

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x19

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x7f

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x79

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x7a

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x87

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x82

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x6f

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x71

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x7b

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x7e

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_20

    :cond_1f
    const-string v33, "UTSI_006"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_007"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_008"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_009"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_010"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_011"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_012"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_014"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_015"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_016"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_020"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_024"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_025"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_027"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_029"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_032"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_035"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_046"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_20

    const-string v33, "UTSI_039"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-nez v33, :cond_21

    .line 409
    :cond_20
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Other cid: --"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-- add X_MDN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v33, "X_MDN"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_5

    .line 605
    .end local v5           #CarrierID:Ljava/lang/Integer;
    .end local v11           #cid:Ljava/lang/String;
    .end local v17           #hostUrl:Ljava/net/URI;
    .end local v18           #htcCdmaPhoneNumber:Ljava/lang/String;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    :catch_5
    move-exception v15

    .line 608
    .local v15, e:Ljava/lang/Exception;
    const/16 v33, 0xda

    :try_start_c
    invoke-static/range {v33 .. v33}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v33

    if-eqz v33, :cond_33

    .line 609
    sget-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    if-eqz v33, :cond_33

    const/16 v33, 0x1

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_33

    .line 610
    sget-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v34, "http.request_sent"

    invoke-interface/range {v33 .. v34}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    .line 611
    .local v20, isSent:Ljava/lang/Boolean;
    if-eqz v20, :cond_33

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v33

    if-eqz v33, :cond_33

    .line 612
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    new-instance v33, Ljava/util/concurrent/TimeoutException;

    const-string v34, "Send PDU time out!"

    invoke-direct/range {v33 .. v34}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v33
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 412
    .end local v15           #e:Ljava/lang/Exception;
    .end local v20           #isSent:Ljava/lang/Boolean;
    .restart local v5       #CarrierID:Ljava/lang/Integer;
    .restart local v11       #cid:Ljava/lang/String;
    .restart local v17       #hostUrl:Ljava/net/URI;
    .restart local v18       #htcCdmaPhoneNumber:Ljava/lang/String;
    .restart local v24       #params:Lorg/apache/http/params/HttpParams;
    .restart local v27       #req:Lorg/apache/http/HttpRequest;
    :cond_21
    if-eqz v5, :cond_22

    :try_start_d
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x75

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x89

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x78

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x86

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x85

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x7d

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x7c

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x72

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x74

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x81

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x80

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x18

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x84

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x83

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x69

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x8b

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x8a

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x8c

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x8d

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x8e

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0x94

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0xd

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_23

    :cond_22
    const-string v33, "UTSI_013"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_017"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_018"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_019"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_022"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_023"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_026"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_028"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_030"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_031"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_033"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_034"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_036"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_037"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_038"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_041"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_042"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_043"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_044"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_045"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_005"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    const-string v33, "UTSI_048"

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v33

    if-eqz v33, :cond_23

    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v34, 0x13

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 459
    :cond_23
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Other cid: --"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "-- add X-MDN"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const-string v33, "X-MDN"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 466
    .end local v5           #CarrierID:Ljava/lang/Integer;
    .end local v11           #cid:Ljava/lang/String;
    .end local v18           #htcCdmaPhoneNumber:Ljava/lang/String;
    :cond_24
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v25

    .line 467
    .local v25, phoneNumber:Ljava/lang/String;
    if-eqz v25, :cond_a

    const-string v33, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    if-eq v0, v1, :cond_a

    .line 468
    const-string v6, "+1"

    .line 469
    .local v6, autoPrependPrefix:Ljava/lang/String;
    sget-short v33, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v34, 0xa8

    move/from16 v0, v33

    move/from16 v1, v34

    if-ne v0, v1, :cond_a

    .line 472
    const-string v6, "1"

    .line 474
    const-string v33, "X-VzW-MDN"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 515
    .end local v6           #autoPrependPrefix:Ljava/lang/String;
    .end local v25           #phoneNumber:Ljava/lang/String;
    .restart local v32       #xWapProfileUrl:Ljava/lang/String;
    :cond_25
    const-string v33, "x-wap-profile"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 530
    .restart local v28       #response:Lorg/apache/http/HttpResponse;
    .restart local v29       #status:Lorg/apache/http/StatusLine;
    :cond_26
    const/16 v33, 0x0

    goto/16 :goto_7

    .line 535
    :cond_27
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    move-result-object v16

    .line 536
    .local v16, entity:Lorg/apache/http/HttpEntity;
    const/4 v7, 0x0

    .line 537
    .local v7, body:[B
    if-eqz v16, :cond_29

    .line 539
    :try_start_e
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v33

    const-wide/16 v35, 0x0

    cmp-long v33, v33, v35

    if-lez v33, :cond_2c

    .line 540
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v33

    move-wide/from16 v0, v33

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v7, v0, [B

    .line 541
    new-instance v14, Ljava/io/DataInputStream;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-direct {v14, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 543
    .local v14, dis:Ljava/io/DataInputStream;
    :try_start_f
    invoke-virtual {v14, v7}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 546
    :try_start_10
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    .line 582
    .end local v14           #dis:Ljava/io/DataInputStream;
    :cond_28
    :goto_9
    if-eqz v16, :cond_29

    .line 583
    :try_start_11
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 584
    const-string v33, "HttpUtils"

    const-string v34, "entity consumeContent"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_4
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    .line 627
    :cond_29
    if-eqz v12, :cond_2a

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v33, "HttpUtils"

    const-string v34, "client closed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_2a

    .line 631
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_2a
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    goto/16 :goto_3

    .line 547
    .restart local v14       #dis:Ljava/io/DataInputStream;
    :catch_6
    move-exception v15

    .line 548
    .local v15, e:Ljava/io/IOException;
    :try_start_12
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "Error closing input stream: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_9

    .line 582
    .end local v14           #dis:Ljava/io/DataInputStream;
    .end local v15           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v33

    if-eqz v16, :cond_2b

    .line 583
    :try_start_13
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 584
    const-string v34, "HttpUtils"

    const-string v35, "entity consumeContent"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    throw v33
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/net/ConnectException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_4
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_5

    .line 545
    .restart local v14       #dis:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v33

    .line 546
    :try_start_14
    invoke-virtual {v14}, Ljava/io/DataInputStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    .line 549
    :goto_a
    :try_start_15
    throw v33

    .line 547
    :catch_7
    move-exception v15

    .line 548
    .restart local v15       #e:Ljava/io/IOException;
    const-string v34, "HttpUtils"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string v36, "Error closing input stream: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 553
    .end local v14           #dis:Ljava/io/DataInputStream;
    .end local v15           #e:Ljava/io/IOException;
    :cond_2c
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v33

    if-eqz v33, :cond_28

    .line 554
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v10, byteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result-object v14

    .line 557
    .local v14, dis:Ljava/io/InputStream;
    :try_start_16
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v13

    .line 558
    .local v13, data:I
    :goto_b
    if-ltz v13, :cond_2d

    .line 559
    int-to-byte v0, v13

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v13

    goto :goto_b

    .line 562
    :cond_2d
    const-string v33, "HttpUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "entity isChunked byteList.size= "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_2e

    .line 564
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 565
    .local v8, bodySize:I
    new-array v7, v8, [B

    .line 566
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Byte;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Byte;

    .line 567
    .local v9, byteArray:[Ljava/lang/Byte;
    const/16 v19, 0x0

    .local v19, i:I
    :goto_c
    move/from16 v0, v19

    if-ge v0, v8, :cond_2e

    .line 568
    aget-object v33, v9, v19

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Byte;->byteValue()B

    move-result v33

    aput-byte v33, v7, v19
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 567
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 574
    .end local v8           #bodySize:I
    .end local v9           #byteArray:[Ljava/lang/Byte;
    .end local v19           #i:I
    :cond_2e
    :try_start_17
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 575
    const-string v33, "HttpUtils"

    const-string v34, "dis close"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    goto/16 :goto_9

    .line 576
    :catch_8
    move-exception v15

    .line 577
    .restart local v15       #e:Ljava/io/IOException;
    :try_start_18
    const-string v33, "HttpUtils"

    const-string v34, "Unexpected IOException."

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-static {v0, v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_9

    .line 573
    .end local v13           #data:I
    .end local v15           #e:Ljava/io/IOException;
    :catchall_3
    move-exception v33

    .line 574
    :try_start_19
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 575
    const-string v34, "HttpUtils"

    const-string v35, "dis close"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_9

    .line 578
    :goto_d
    :try_start_1a
    throw v33

    .line 576
    :catch_9
    move-exception v15

    .line 577
    .restart local v15       #e:Ljava/io/IOException;
    const-string v34, "HttpUtils"

    const-string v35, "Unexpected IOException."

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-static {v0, v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_d

    .line 593
    .end local v7           #body:[B
    .end local v10           #byteList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v14           #dis:Ljava/io/InputStream;
    .end local v16           #entity:Lorg/apache/http/HttpEntity;
    .end local v17           #hostUrl:Ljava/net/URI;
    .end local v24           #params:Lorg/apache/http/params/HttpParams;
    .end local v27           #req:Lorg/apache/http/HttpRequest;
    .end local v28           #response:Lorg/apache/http/HttpResponse;
    .end local v29           #status:Lorg/apache/http/StatusLine;
    .end local v32           #xWapProfileUrl:Ljava/lang/String;
    .local v15, e:Ljava/net/ConnectException;
    :cond_2f
    :try_start_1b
    invoke-static {v15}, Lcom/android/mms/transport/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 627
    if-eqz v12, :cond_30

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v33, "HttpUtils"

    const-string v34, "client closed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_30

    .line 631
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_30
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    goto/16 :goto_8

    .line 604
    .local v15, e:Ljava/net/SocketException;
    :cond_31
    :try_start_1c
    invoke-static {v15}, Lcom/android/mms/transport/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 627
    if-eqz v12, :cond_32

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v33, "HttpUtils"

    const-string v34, "client closed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_32

    .line 631
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_32
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    goto/16 :goto_8

    .line 620
    .local v15, e:Ljava/lang/Exception;
    :cond_33
    :try_start_1d
    instance-of v0, v15, Lcom/htc/messaging/util/HtcHttpTransportError;

    move/from16 v33, v0

    if-eqz v33, :cond_34

    .line 621
    move-object v0, v15

    check-cast v0, Lcom/htc/messaging/util/HtcHttpTransportError;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/android/mms/transport/HttpUtils;->handleHttpConnectionException(Lcom/htc/messaging/util/HtcHttpTransportError;)V

    .line 624
    :cond_34
    invoke-static {v15}, Lcom/android/mms/transport/HttpUtils;->handleHttpConnectionException(Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 627
    if-eqz v12, :cond_35

    .line 628
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 629
    const-string v33, "HttpUtils"

    const-string v34, "client closed"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeviceTimeOut()Z

    move-result v33

    if-eqz v33, :cond_35

    .line 631
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mClient:Landroid/net/http/AndroidHttpClient;

    .line 633
    :cond_35
    const/16 v33, 0x0

    sput-object v33, Lcom/android/mms/transport/HttpUtils;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    goto/16 :goto_8

    .line 294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

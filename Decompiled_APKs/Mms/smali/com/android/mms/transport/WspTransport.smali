.class public Lcom/android/mms/transport/WspTransport;
.super Lcom/android/mms/transport/Transport;
.source "WspTransport.java"


# static fields
.field private static final HEADER_VALUE_ACCEPT:Ljava/lang/String; = "*/*,application/vnd.wap.mms-message,application/vnd.wap.sic"

.field private static final TAG:Ljava/lang/String; = "WspTransport"


# instance fields
.field private mHeaders:Lcom/android/mms/wsp/Headers;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/mms/transport/Transport;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/android/mms/wsp/Headers;

    invoke-direct {v0}, Lcom/android/mms/wsp/Headers;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transport/WspTransport;->mHeaders:Lcom/android/mms/wsp/Headers;

    .line 47
    iget-object v0, p0, Lcom/android/mms/transport/WspTransport;->mHeaders:Lcom/android/mms/wsp/Headers;

    const-string v1, "accept"

    const-string v2, "*/*,application/vnd.wap.mms-message,application/vnd.wap.sic"

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/wsp/Headers;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/android/mms/transport/WspTransport;->mHeaders:Lcom/android/mms/wsp/Headers;

    const-string v1, "accept-language"

    invoke-static {}, Lcom/android/mms/transport/WspTransport;->getWspAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/wsp/Headers;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/android/mms/transport/WspTransport;->mHeaders:Lcom/android/mms/wsp/Headers;

    const-string v1, "x-wap-profile"

    invoke-static {p1}, Lcom/android/mms/transport/WspTransport;->getXWapProfileHeaderValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/wsp/Headers;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private static addLocaleToWspAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V
    .locals 3
    .parameter "builder"
    .parameter "locale"

    .prologue
    .line 175
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 183
    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .end local v0           #country:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 145
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 147
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 150
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 151
    return-object v0
.end method

.method private doNetworkTransmission(Ljava/lang/String;[BJI)[B
    .locals 10
    .parameter "url"
    .parameter "data"
    .parameter "token"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v9, Lcom/android/mms/wsp/WspClient;

    invoke-direct {v9}, Lcom/android/mms/wsp/WspClient;-><init>()V

    .line 72
    .local v9, wspClient:Lcom/android/mms/wsp/WspClient;
    new-instance v8, Lcom/android/mms/transport/WspEventHandler;

    iget-object v1, p0, Lcom/android/mms/transport/Transport;->mContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/android/mms/transport/WspEventHandler;-><init>(Landroid/content/Context;)V

    .line 73
    .local v8, eventHandler:Lcom/android/mms/transport/WspEventHandler;
    invoke-virtual {v8, p3, p4}, Lcom/android/mms/transport/WspEventHandler;->setProgerssToken(J)V

    .line 75
    new-instance v0, Lcom/android/mms/wsp/WspRequest;

    iget-object v1, p0, Lcom/android/mms/transport/Transport;->mProxyHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/mms/transport/Transport;->mProxyPort:I

    iget-object v3, p0, Lcom/android/mms/transport/WspTransport;->mHeaders:Lcom/android/mms/wsp/Headers;

    const-string v7, "application/vnd.wap.mms-message"

    move v4, p5

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/mms/wsp/WspRequest;-><init>(Ljava/lang/String;ILcom/android/mms/wsp/Headers;ILjava/lang/String;[BLjava/lang/String;Lcom/android/mms/wsp/EventHandler;)V

    .line 78
    .local v0, req:Lcom/android/mms/wsp/WspRequest;
    :try_start_0
    invoke-virtual {v9}, Lcom/android/mms/wsp/WspClient;->startup()V

    .line 80
    invoke-virtual {v9, v0}, Lcom/android/mms/wsp/WspClient;->requestQueue(Lcom/android/mms/wsp/WspRequest;)Z

    .line 81
    invoke-virtual {v8}, Lcom/android/mms/transport/WspEventHandler;->waitForComplete()V

    .line 83
    invoke-virtual {v8}, Lcom/android/mms/transport/WspEventHandler;->getErrorId()I

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WSP error : transaction failed. Error Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/mms/transport/WspEventHandler;->getErrorId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :catchall_0
    move-exception v1

    invoke-virtual {v9}, Lcom/android/mms/wsp/WspClient;->shutdown()V

    throw v1

    .line 89
    :cond_0
    :try_start_1
    invoke-virtual {v8}, Lcom/android/mms/transport/WspEventHandler;->getData()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 91
    invoke-virtual {v9}, Lcom/android/mms/wsp/WspClient;->shutdown()V

    return-object v1
.end method

.method private static getOemUAProfile(Landroid/content/Context;)Ljava/lang/String;
    .locals 15
    .parameter "context"

    .prologue
    const/4 v14, 0x0

    .line 111
    const/4 v7, 0x0

    .line 115
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "content://customization_settings/SettingTable/force_change_Browser"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 118
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

    .line 119
    if-nez v7, :cond_2

    .line 138
    if-eqz v7, :cond_0

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v13, v14

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_1
    :goto_0
    return-object v13

    .line 122
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #uri:Landroid/net/Uri;
    :cond_2
    :try_start_1
    const-string v2, "value"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 123
    .local v10, idValue:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 124
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 125
    .local v8, data:[B
    invoke-static {v8}, Lcom/android/mms/transport/WspTransport;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 128
    .local v6, bundle:Landroid/os/Bundle;
    const-string v11, "ua_profile"

    .line 129
    .local v11, key:Ljava/lang/String;
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 131
    .local v12, ua_profileBundle:Landroid/os/Bundle;
    const-string v11, "value"

    .line 132
    invoke-virtual {v12, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 133
    .local v13, value:Ljava/lang/String;
    const-string v2, "WspTransport"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    if-eqz v7, :cond_1

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 135
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #data:[B
    .end local v10           #idValue:I
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #ua_profileBundle:Landroid/os/Bundle;
    .end local v13           #value:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 138
    .local v9, ex:Ljava/lang/Exception;
    if-eqz v7, :cond_3

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v13, v14

    goto :goto_0

    .line 138
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_4

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2
.end method

.method private static getWspAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 161
    .local v1, locale:Ljava/util/Locale;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-static {v0, v1}, Lcom/android/mms/transport/WspTransport;->addLocaleToWspAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 164
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 166
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v2}, Lcom/android/mms/transport/WspTransport;->addLocaleToWspAcceptLanguage(Ljava/lang/StringBuilder;Ljava/util/Locale;)V

    .line 170
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getXWapProfileHeaderValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/mms/transport/WspTransport;->getOemUAProfile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, uaProfile:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mms_x_wap_profile_url"

    invoke-static {v1, v2}, Landroid/provider/Settings$Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    return-object v0
.end method


# virtual methods
.method public retrieve(Ljava/lang/String;)[B
    .locals 6
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/mms/transport/WspTransport;->ensureRouteToHost(Ljava/lang/String;)V

    .line 66
    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v5, 0x40

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transport/WspTransport;->doNetworkTransmission(Ljava/lang/String;[BJI)[B

    move-result-object v0

    return-object v0
.end method

.method public send([BJ)[B
    .locals 6
    .parameter "data"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/mms/transport/WspTransport;->ensureRouteToHost(Ljava/lang/String;)V

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transport/Transport;->mMessageCenterUrl:Ljava/lang/String;

    const/16 v5, 0x60

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transport/WspTransport;->doNetworkTransmission(Ljava/lang/String;[BJI)[B

    move-result-object v0

    return-object v0
.end method

.class public Lcom/google/android/finsky/receivers/DownloadTickleReceiver;
.super Lcom/google/android/finsky/download/DownloadReceiver;
.source "DownloadTickleReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/google/android/finsky/download/DownloadReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/receivers/DownloadTickleReceiver;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->finishOnReceive(Landroid/content/Intent;)V

    return-void
.end method

.method private finishOnReceive(Landroid/content/Intent;)V
    .locals 18
    .parameter "intent"

    .prologue
    .line 50
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v14

    .line 51
    .local v14, finskyApp:Lcom/google/android/finsky/FinskyApp;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 52
    .local v13, bundle:Landroid/os/Bundle;
    const-string v2, "server_initiated"

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v16

    .line 53
    .local v16, serverInitiated:Z
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->getApplicationCount(Landroid/os/Bundle;)I

    move-result v12

    .line 55
    .local v12, appCount:I
    add-int/lit8 v15, v12, -0x1

    .local v15, index:I
    :goto_0
    if-ltz v15, :cond_2

    .line 56
    if-nez v15, :cond_0

    const-string v17, ""

    .line 58
    .local v17, suffix:Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asset_name"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 59
    .local v9, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asset_package"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, packageName:Ljava/lang/String;
    if-nez v16, :cond_1

    .line 62
    const-string v2, "Ignoring download tickle with !server_initiated: pkg=%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v2, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    :goto_2
    add-int/lit8 v15, v15, -0x1

    goto :goto_0

    .line 56
    .end local v3           #packageName:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    .end local v17           #suffix:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 66
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v9       #title:Ljava/lang/String;
    .restart local v17       #suffix:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "asset_version_code"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 67
    .local v4, packageVersion:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "user_email"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 68
    .local v6, account:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->generateDeliveryData(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v5

    .line 71
    .local v5, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v7, "install.receiveTickle"

    const/4 v8, 0x0

    invoke-interface {v2, v7, v3, v8}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v7, "install.receiveTickle"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "cidi"

    aput-object v11, v8, v10

    const/4 v10, 0x1

    aput-object v3, v8, v10

    invoke-virtual {v2, v7, v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v14}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "tickle"

    invoke-interface/range {v2 .. v11}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_2

    .line 91
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #packageVersion:I
    .end local v5           #deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .end local v6           #account:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    .end local v17           #suffix:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private generateDeliveryData(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    .locals 25
    .parameter "bundle"
    .parameter "suffix"

    .prologue
    .line 165
    new-instance v19, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;-><init>()V

    .line 167
    .local v19, result:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_secure"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v20

    .line 169
    .local v20, shouldSecure:Z
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_blob_url"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->getAssetDownloadUrl(Landroid/os/Bundle;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 170
    .local v21, url:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "download_auth_cookie_name"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 171
    .local v8, cookieName:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "download_auth_cookie_value"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 172
    .local v9, cookieValue:Ljava/lang/String;
    new-instance v22, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;->setValue(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;

    move-result-object v7

    .line 176
    .local v7, cookie:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_signature"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, assetSignature:Ljava/lang/String;
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_size"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 178
    .local v5, assetSize:J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_is_forward_locked"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 179
    .local v13, isForwardLockedStr:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 182
    .local v12, isForwardLocked:Z
    const-wide/16 v17, 0x0

    .line 183
    .local v17, refundPeriodEndTime:J
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_refundtimeout"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 184
    .local v11, endTimeString:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 186
    :try_start_0
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v17

    .line 192
    :cond_0
    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 193
    move-object/from16 v0, v19

    invoke-virtual {v0, v5, v6}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setDownloadSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 194
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setForwardLocked(Z)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 195
    move-object/from16 v0, v19

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setRefundTimeout(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 196
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->setSignature(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 197
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addDownloadAuthCookie(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$HttpCookie;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 200
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "asset_package"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 201
    .local v15, packageName:Ljava/lang/String;
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->parseObb(Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    move-result-object v14

    .line 202
    .local v14, mainObb:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    if-eqz v14, :cond_1

    .line 203
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addAdditionalFile(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 205
    :cond_1
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->parseObb(Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    move-result-object v16

    .line 206
    .local v16, patchObb:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    if-eqz v16, :cond_2

    .line 207
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->addAdditionalFile(Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    .line 210
    :cond_2
    return-object v19

    .line 187
    .end local v14           #mainObb:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .end local v15           #packageName:Ljava/lang/String;
    .end local v16           #patchObb:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    :catch_0
    move-exception v10

    .line 188
    .local v10, e:Ljava/lang/NumberFormatException;
    const-string v22, "Received refund period time end string : %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getApplicationCount(Landroid/os/Bundle;)I
    .locals 3
    .parameter "bundle"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 100
    .local v0, appCount:I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assetid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 102
    return v0
.end method

.method private getAssetDownloadUrl(Landroid/os/Bundle;ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"
    .parameter "shouldSecure"
    .parameter "key"

    .prologue
    .line 109
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, assetDownloadUrl:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    :cond_0
    return-object v0
.end method

.method private parseObb(Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .locals 13
    .parameter "bundle"
    .parameter "packageName"
    .parameter "isPatch"
    .parameter "tickleSuffix"

    .prologue
    .line 123
    const/4 v2, 0x1

    .local v2, obbIdx:I
    :goto_0
    const/4 v9, 0x2

    if-gt v2, v9, :cond_5

    .line 124
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p4

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, obbSuffix:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "additional_file_type"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, typeString:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 128
    const-string v9, "Not generating OBB (patch %b)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v1, 0x0

    .line 156
    .end local v3           #obbSuffix:Ljava/lang/String;
    .end local v6           #typeString:Ljava/lang/String;
    :goto_1
    return-object v1

    .line 132
    .restart local v3       #obbSuffix:Ljava/lang/String;
    .restart local v6       #typeString:Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_2

    .line 133
    const-string v9, "OBB"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 123
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_2
    const-string v9, "OBB_PATCH"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 142
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "additional_file_version_code"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 143
    .local v8, versionCode:I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "additional_file_url"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 144
    .local v7, url:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "additional_file_size"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 146
    .local v4, size:J
    const-string v9, "Generating %s OBB"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v1, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;-><init>()V

    .line 149
    .local v1, generated:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    if-eqz p3, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v1, v9}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setFileType(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 150
    invoke-virtual {v1, v8}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setVersionCode(I)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 151
    invoke-virtual {v1, v4, v5}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setSize(J)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    .line 152
    invoke-virtual {v1, v7}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;->setDownloadUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;

    goto/16 :goto_1

    .line 149
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 156
    .end local v1           #generated:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AppFileMetadata;
    .end local v3           #obbSuffix:Ljava/lang/String;
    .end local v4           #size:J
    .end local v6           #typeString:Ljava/lang/String;
    .end local v7           #url:Ljava/lang/String;
    .end local v8           #versionCode:I
    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver;->setResultCode(I)V

    .line 35
    const-string v1, "from"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, fromAddress:Ljava/lang/String;
    const-string v1, "google.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    new-instance v2, Lcom/google/android/finsky/receivers/DownloadTickleReceiver$1;

    invoke-direct {v2, p0, p2}, Lcom/google/android/finsky/receivers/DownloadTickleReceiver$1;-><init>(Lcom/google/android/finsky/receivers/DownloadTickleReceiver;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

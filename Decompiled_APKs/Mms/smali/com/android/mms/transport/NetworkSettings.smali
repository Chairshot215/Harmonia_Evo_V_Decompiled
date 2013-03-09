.class public Lcom/android/mms/transport/NetworkSettings;
.super Ljava/lang/Object;
.source "NetworkSettings.java"


# static fields
.field private static final APN_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_APN:I = 0x5

.field private static final COLUMN_MMSC:I = 0x1

.field private static final COLUMN_MMSPORT:I = 0x3

.field private static final COLUMN_MMSPROTOCOL:I = 0x4

.field private static final COLUMN_MMSPROXY:I = 0x2

.field private static final COLUMN_TYPE:I = 0x0

.field private static final DEBUG:Z = true

.field private static final LOCAL_LOGV:Z = true

.field private static final TAG:Ljava/lang/String; = "NetworkSettings"


# instance fields
.field private mProtocolType:I

.field private mProxyAddress:Ljava/lang/String;

.field private mProxyPort:I

.field private mServiceCenter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "mmsprotocol"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "apn"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transport/NetworkSettings;->APN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "apnName"

    .prologue
    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyPort:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProtocolType:I

    .line 91
    const/4 v10, 0x0

    .line 92
    .local v10, cursor:Landroid/database/Cursor;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 93
    invoke-static {}, Lcom/android/mms/MmsApp;->isCDMA_NV_based()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCdmaAPN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    sget-object v2, Landroid/provider/Telephony$CdmaCarriers;->CONTENT_URI:Landroid/net/Uri;

    .line 99
    .local v2, uri:Landroid/net/Uri;
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transport/NetworkSettings;->APN_PROJECTION:[Ljava/lang/String;

    const-string v4, "type like \'%mms%\' AND (operator=? OR operator is null)"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v6, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    aput-object v6, v5, v0

    const-string v6, "operator DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 122
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    if-nez v10, :cond_3

    .line 123
    const-string v0, "NetworkSettings"

    const-string v1, "Apn is not found in Database!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_2
    return-void

    .line 98
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .restart local v2       #uri:Landroid/net/Uri;
    goto :goto_0

    .line 105
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/transport/NetworkSettings;->APN_PROJECTION:[Ljava/lang/String;

    const-string v7, "type like \'%mms%\' AND (operator=? OR operator is null) AND current=1"

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v1, Lcom/android/mms/MmsApp;->cid:Ljava/lang/String;

    aput-object v1, v8, v0

    const-string v9, "operator DESC"

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "current"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/mms/transport/NetworkSettings;->APN_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto :goto_1

    .line 125
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_4

    .line 126
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn count >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_4
    :goto_3
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/transport/NetworkSettings;->mServiceCenter:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 141
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 142
    if-eqz p2, :cond_5

    .line 143
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 153
    :cond_5
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    invoke-static {v0, v1}, Lcom/android/mms/transport/NetworkSettings;->isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transport/NetworkSettings;->mServiceCenter:Ljava/lang/String;

    .line 156
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->trimV4AddrZeros(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyAddress:Ljava/lang/String;

    .line 158
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transport/NetworkSettings;->interpretProtocolType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProtocolType:I

    .line 159
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mServiceCenter >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/transport/NetworkSettings;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProxyAddress >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "Jerry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProtocolType >"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/mms/transport/NetworkSettings;->mProtocolType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/transport/NetworkSettings;->isProxySet()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 165
    .local v12, portString:Ljava/lang/String;
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyPort:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 166
    :catch_0
    move-exception v11

    .line 167
    .local v11, e:Ljava/lang/NumberFormatException;
    :try_start_2
    const-string v0, "NetworkSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad port number format: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 173
    .end local v11           #e:Ljava/lang/NumberFormatException;
    .end local v12           #portString:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0

    .line 155
    :cond_6
    const/4 v0, 0x1

    :try_start_3
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 156
    :cond_7
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto/16 :goto_5

    .line 173
    :cond_8
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "mmscUrl"
    .parameter "protocolType"
    .parameter "proxyAddr"
    .parameter "proxyPort"

    .prologue
    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyPort:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProtocolType:I

    .line 206
    iput-object p1, p0, Lcom/android/mms/transport/NetworkSettings;->mServiceCenter:Ljava/lang/String;

    .line 207
    iput p2, p0, Lcom/android/mms/transport/NetworkSettings;->mProtocolType:I

    .line 208
    iput-object p3, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyAddress:Ljava/lang/String;

    .line 209
    iput p4, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyPort:I

    .line 210
    return-void
.end method

.method private interpretProtocolType(Ljava/lang/String;)I
    .locals 4
    .parameter "protocolTypeStr"

    .prologue
    const/4 v0, 0x0

    .line 182
    const-string v1, "NetworkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocolTypeStr: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    if-eqz p1, :cond_0

    .line 185
    const-string v1, "1.2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 186
    const-string v0, "NetworkSettings"

    const-string v1, "protocolType: WSP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const/4 v0, 0x1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 189
    :cond_1
    const-string v1, "NetworkSettings"

    const-string v2, "protocolType: HTTP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isValidApnType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "types"
    .parameter "requestType"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 235
    if-eqz p0, :cond_0

    const-string v7, ""

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 236
    :cond_0
    new-array v4, v5, [Ljava/lang/String;

    .line 237
    .local v4, typeList:[Ljava/lang/String;
    const-string v7, "*"

    aput-object v7, v4, v6

    .line 242
    :goto_0
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 243
    .local v3, t:Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "*"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 247
    .end local v3           #t:Ljava/lang/String;
    :cond_1
    :goto_2
    return v5

    .line 239
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #typeList:[Ljava/lang/String;
    :cond_2
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #typeList:[Ljava/lang/String;
    goto :goto_0

    .line 242
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #t:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #t:Ljava/lang/String;
    :cond_4
    move v5, v6

    .line 247
    goto :goto_2
.end method


# virtual methods
.method public clearProxySet()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "NetworkSettings"

    const-string v1, "clearProxySet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyAddress:Ljava/lang/String;

    .line 254
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyPort:I

    .line 255
    return-void
.end method

.method public getMmscUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/mms/transport/NetworkSettings;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolType()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProtocolType:I

    return v0
.end method

.method public getProxyAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getProxyPort()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyPort:I

    return v0
.end method

.method public isProxySet()Z
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transport/NetworkSettings;->mProxyAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

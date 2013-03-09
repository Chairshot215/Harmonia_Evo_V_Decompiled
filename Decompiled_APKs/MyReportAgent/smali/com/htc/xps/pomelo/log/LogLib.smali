.class public Lcom/htc/xps/pomelo/log/LogLib;
.super Ljava/lang/Object;
.source "LogLib.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;,
        Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;,
        Lcom/htc/xps/pomelo/log/LogLib$SendResult;
    }
.end annotation


# static fields
.field private static final DECRYPTED_FAILED_STRING:Ljava/lang/String; = ""

.field private static final DEFAULT_LOG_URL:Ljava/lang/String; = "https://pomelo.htcsense.com:443"

.field private static final DEFAULT_POLICY_URL:Ljava/lang/String; = "https://policylog.htcsense.com:443"

.field private static final DEFAULT_UPDATE_FALLBACK_URL:Ljava/lang/String; = "https://update.htcsense.com/$SS$/Services/Regions.svc/Regions/?sortBy=Name&sortDescending=false&start=0&count=300"

.field private static final DEFAULT_UPDATE_URL:Ljava/lang/String; = "https://update.htcsense.com/$SS$/Services/Regions.svc/Regions/GetRegionByCC/"

.field private static final KEY_LOG_URL:Ljava/lang/String; = "LogUrl"

.field private static final KEY_POLICY_URL:Ljava/lang/String; = "PolicyUrl"

.field private static final KEY_REFRESH_INTERVAL:Ljava/lang/String; = "RefreshInterval"

.field private static final KEY_UPDATE_URL:Ljava/lang/String; = "UpdateUrl"

.field private static final PATH_ACK:Ljava/lang/String; = "/Ack"

.field private static final PATH_POLICY_REQ:Ljava/lang/String; = "/Req"

.field static final TAG:Ljava/lang/String; = "Pomelo"

.field private static final VERSIONKEY:Ljava/lang/String; = "PomeloVersion"


# instance fields
.field private D:Z

.field protected env:Lcom/htc/xps/pomelo/log/PBHandsetLogPacket;

.field private policyAckUrl:Ljava/lang/String;

.field private policyReqUrl:Ljava/lang/String;

.field private policyServerHost:Ljava/lang/String;

.field private refreshInterval:J

.field private serverHost:Ljava/lang/String;

.field private timeout:I

.field private totalDownloadSize:I

.field private totalUploadSize:I

.field private updateServerHost:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    .line 103
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyReqUrl:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyAckUrl:Ljava/lang/String;

    .line 109
    const-wide/32 v0, 0x93a80

    iput-wide v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    .line 110
    const/16 v0, 0x7530

    iput v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->timeout:I

    .line 112
    iput v2, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    .line 113
    iput v2, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    .line 121
    invoke-direct {p0, p1}, Lcom/htc/xps/pomelo/log/LogLib;->loadSettings(Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "isDebug"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    .line 103
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    .line 104
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    .line 105
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    .line 106
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyReqUrl:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyAckUrl:Ljava/lang/String;

    .line 109
    const-wide/32 v0, 0x93a80

    iput-wide v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    .line 110
    const/16 v0, 0x7530

    iput v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->timeout:I

    .line 112
    iput v2, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    .line 113
    iput v2, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    .line 130
    iput-boolean p2, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    .line 131
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "Pomelo"

    invoke-static {v0}, Lcom/htc/xps/pomelo/log/LogLib;->showAllocateMemory(Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/xps/pomelo/log/LogLib;->loadSettings(Landroid/content/Context;)V

    .line 134
    return-void
.end method

.method private insertUrlString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "originUrl"
    .parameter "insertSection"

    .prologue
    .line 488
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    .line 489
    .local v8, uri:Ljava/net/URI;
    const/4 v7, 0x0

    .line 491
    .local v7, newUri:Ljava/net/URI;
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v7           #newUri:Ljava/net/URI;
    .local v0, newUri:Ljava/net/URI;
    :goto_0
    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 493
    .end local v0           #newUri:Ljava/net/URI;
    .restart local v7       #newUri:Ljava/net/URI;
    :catch_0
    move-exception v6

    .line 494
    .local v6, e:Ljava/net/URISyntaxException;
    const-string v1, "Pomelo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertUrlString URISyntaxException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v7

    .end local v7           #newUri:Ljava/net/URI;
    .restart local v0       #newUri:Ljava/net/URI;
    goto :goto_0
.end method

.method private loadEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "key"

    .prologue
    .line 721
    :try_start_0
    new-instance v1, Lcom/htc/xps/pomelo/log/HexCrypto;

    invoke-direct {v1}, Lcom/htc/xps/pomelo/log/HexCrypto;-><init>()V

    invoke-static {p1, p2, v1}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadDecryptedString(Landroid/content/Context;Ljava/lang/String;Lcom/htc/xps/pomelo/log/IStringEncryption;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 727
    :goto_0
    return-object v1

    .line 723
    :catch_0
    move-exception v0

    .line 725
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "Pomelo"

    const-string v2, "LogLib.loadEncryptedPrefStr has error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 727
    const-string v1, ""

    goto :goto_0
.end method

.method private loadPrefStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "key"

    .prologue
    .line 700
    invoke-static {p1, p2}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private loadSettings(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 145
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    sput-boolean v3, Lcom/htc/xps/pomelo/log/LogLibStore;->D:Z

    .line 146
    new-instance v1, Lcom/htc/xps/pomelo/log/HexCrypto;

    invoke-direct {v1}, Lcom/htc/xps/pomelo/log/HexCrypto;-><init>()V

    .line 148
    .local v1, hexCrypto:Lcom/htc/xps/pomelo/log/HexCrypto;
    const-string v3, "PomeloVersion"

    invoke-static {p1, v3}, Lcom/htc/xps/pomelo/log/LogLibStore;->keyExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 149
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_0

    const-string v3, "Pomelo"

    const-string v4, "LogLibStore has VERSIONKEY."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const-string v3, "PomeloVersion"

    invoke-static {p1, v3}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 152
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_1

    const-string v3, "Pomelo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LogLibStore version is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PomeloVersion"

    invoke-static {p1, v5}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    const-string v3, "LogUrl"

    invoke-direct {p0, p1, v3}, Lcom/htc/xps/pomelo/log/LogLib;->loadEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    .line 154
    const-string v3, "PolicyUrl"

    invoke-direct {p0, p1, v3}, Lcom/htc/xps/pomelo/log/LogLib;->loadEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    .line 155
    const-string v3, "UpdateUrl"

    invoke-direct {p0, p1, v3}, Lcom/htc/xps/pomelo/log/LogLib;->loadEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    .line 156
    const-string v3, "RefreshInterval"

    invoke-static {p1, v3}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    .line 157
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_2

    const-string v3, "Pomelo"

    const-string v4, "Load setting from preference in LogLib constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_2
    const-string v2, "1.0"

    .line 162
    .local v2, ver10:Ljava/lang/String;
    const-string v3, "PomeloVersion"

    invoke-static {p1, v3}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    :try_start_0
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_3

    const-string v3, "Pomelo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LogLibStore version is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "PomeloVersion"

    invoke-static {p1, v5}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_3
    const-string v3, "LogUrl"

    invoke-static {p1, v3}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    .line 166
    const-string v3, "LogUrl"

    iget-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v3, "PolicyUrl"

    invoke-static {p1, v3}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    .line 168
    const-string v3, "PolicyUrl"

    iget-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v3, "UpdateUrl"

    invoke-static {p1, v3}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    .line 170
    const-string v3, "UpdateUrl"

    iget-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v4}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v3, "RefreshInterval"

    invoke-static {p1, v3}, Lcom/htc/xps/pomelo/log/LogLibStore;->loadLong(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    .line 172
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_4

    const-string v3, "Pomelo"

    const-string v4, "Upgrade loading settings from preference in LogLib constructor."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v2           #ver10:Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .line 174
    .restart local v2       #ver10:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const-string v3, "Pomelo"

    const-string v4, "LogLibStore version upgrade failed. Check LogLib SharedPref."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #ver10:Ljava/lang/String;
    :cond_5
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_6

    const-string v3, "Pomelo"

    const-string v4, "LogLibStore has NO VERSIONKEY."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_6
    const-string v3, "LogUrl"

    const-string v4, "https://pomelo.htcsense.com:443"

    invoke-direct {p0, p1, v3, v4}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v3, "PolicyUrl"

    const-string v4, "https://policylog.htcsense.com:443"

    invoke-direct {p0, p1, v3, v4}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v3, "UpdateUrl"

    const-string v4, "https://update.htcsense.com/$SS$/Services/Regions.svc/Regions/GetRegionByCC/"

    invoke-direct {p0, p1, v3, v4}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v3, "RefreshInterval"

    iget-wide v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    invoke-static {p1, v3, v4, v5}, Lcom/htc/xps/pomelo/log/LogLibStore;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 186
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_4

    const-string v3, "Pomelo"

    const-string v4, "Create setting in preference in LogLib constructor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeUpdateUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "server"
    .parameter "region"
    .parameter "operator"

    .prologue
    .line 563
    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 565
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 567
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&op="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {p3, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 574
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&cc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 576
    :cond_2
    const-string v1, "?&"

    const-string v2, "?"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 571
    const-string v1, "Pomelo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeUpdateUrl UnsupportedEncodingException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readRefreshInterval(Landroid/content/Context;Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;[Lorg/apache/http/Header;)J
    .locals 8
    .parameter "context"
    .parameter "response"
    .parameter "headers"

    .prologue
    .line 630
    const-string v2, "604800"

    .line 631
    .local v2, maxAge:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_2

    .line 632
    aget-object v4, p3, v0

    if-nez v4, :cond_1

    .line 631
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 634
    :cond_1
    aget-object v4, p3, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Cache-Control"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 635
    aget-object v4, p3, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 636
    .local v3, vals:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 637
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "max-age"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 638
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "max-age="

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 647
    .end local v1           #j:I
    .end local v3           #vals:[Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    .line 648
    iget-boolean v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v4, :cond_3

    const-string v4, "Pomelo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshInterval parsing error. maxAge="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    :cond_3
    iget-wide v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    iput-wide v4, p2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->refreshInterval:J

    .line 652
    const-string v4, "RefreshInterval"

    iget-wide v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    invoke-static {p1, v4, v5, v6}, Lcom/htc/xps/pomelo/log/LogLibStore;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 653
    iget-boolean v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v4, :cond_4

    const-string v4, "Pomelo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_REFRESH_INTERVAL saved as "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_4
    iget-wide v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->refreshInterval:J

    return-wide v4

    .line 636
    .restart local v1       #j:I
    .restart local v3       #vals:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 649
    .end local v1           #j:I
    .end local v3           #vals:[Ljava/lang/String;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method private readUpdateResult(Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "resp"
    .parameter "bytes"
    .parameter "region"
    .parameter "operator"

    .prologue
    .line 586
    if-eqz p2, :cond_0

    .line 587
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, p2}, Ljava/lang/String;-><init>([B)V

    iput-object v8, p1, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->rawData:Ljava/lang/String;

    .line 592
    const/4 v4, 0x0

    .line 593
    .local v4, jObj:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 594
    .local v7, jResult:Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 595
    .local v6, jRecord:Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 597
    .local v3, jDc:Lorg/json/JSONObject;
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    iget-object v8, p1, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->rawData:Ljava/lang/String;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 598
    .end local v4           #jObj:Lorg/json/JSONObject;
    .local v5, jObj:Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "Results"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 599
    const/4 v6, 0x0

    .line 600
    const/4 v3, 0x0

    .line 601
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 602
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 603
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CountryCode"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    .local v0, country:Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 601
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 589
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #jDc:Lorg/json/JSONObject;
    .end local v5           #jObj:Lorg/json/JSONObject;
    .end local v6           #jRecord:Lorg/json/JSONObject;
    .end local v7           #jResult:Lorg/json/JSONArray;
    :cond_0
    const/4 v8, 0x0

    .line 621
    :goto_2
    return v8

    .line 607
    .restart local v0       #country:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #jDc:Lorg/json/JSONObject;
    .restart local v5       #jObj:Lorg/json/JSONObject;
    .restart local v6       #jRecord:Lorg/json/JSONObject;
    .restart local v7       #jResult:Lorg/json/JSONArray;
    :cond_1
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "DataCenter"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 608
    const-string v8, "DestLogUri"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->logServer:Ljava/lang/String;

    .line 609
    const-string v8, "PolLogUri"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->policyServer:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 611
    .end local v0           #country:Ljava/lang/String;
    .end local v2           #i:I
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 612
    .end local v5           #jObj:Lorg/json/JSONObject;
    .local v1, e:Lorg/json/JSONException;
    .restart local v4       #jObj:Lorg/json/JSONObject;
    :goto_3
    :try_start_2
    const-string v8, "Pomelo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readUpdateResult JSONException: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    const/4 v8, 0x0

    .line 615
    const/4 v4, 0x0

    .line 616
    const/4 v7, 0x0

    .line 617
    const/4 v6, 0x0

    .line 618
    const/4 v3, 0x0

    goto :goto_2

    .line 615
    .end local v1           #e:Lorg/json/JSONException;
    .end local v4           #jObj:Lorg/json/JSONObject;
    .restart local v2       #i:I
    .restart local v5       #jObj:Lorg/json/JSONObject;
    :cond_2
    const/4 v4, 0x0

    .line 616
    .end local v5           #jObj:Lorg/json/JSONObject;
    .restart local v4       #jObj:Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 617
    const/4 v6, 0x0

    .line 618
    const/4 v3, 0x0

    .line 621
    const/4 v8, 0x1

    goto :goto_2

    .line 615
    .end local v2           #i:I
    :catchall_0
    move-exception v8

    :goto_4
    const/4 v4, 0x0

    .line 616
    const/4 v7, 0x0

    .line 617
    const/4 v6, 0x0

    .line 618
    const/4 v3, 0x0

    throw v8

    .line 615
    .end local v4           #jObj:Lorg/json/JSONObject;
    .restart local v5       #jObj:Lorg/json/JSONObject;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #jObj:Lorg/json/JSONObject;
    .restart local v4       #jObj:Lorg/json/JSONObject;
    goto :goto_4

    .line 611
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private requestUpdateInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
    .locals 9
    .parameter "context"
    .parameter "region"
    .parameter "operator"
    .parameter "host"

    .prologue
    .line 510
    iput-object p4, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    .line 511
    new-instance v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;

    invoke-direct {v2}, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;-><init>()V

    .line 512
    .local v2, response:Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
    sget-object v5, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->CONNECTFAILED:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v5

    iput v5, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->statusCode:I

    .line 514
    const/4 v0, 0x0

    .line 515
    .local v0, conn:Lcom/htc/xps/pomelo/log/HttpSender;
    const/4 v1, 0x0

    .line 516
    .local v1, headers:[Lorg/apache/http/Header;
    iget-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    invoke-virtual {p0, v5, p2}, Lcom/htc/xps/pomelo/log/LogLib;->validateRequest(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 518
    iget-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    invoke-direct {p0, v5, p2, p3}, Lcom/htc/xps/pomelo/log/LogLib;->makeUpdateUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 519
    .local v4, updateServiceUrl:Ljava/lang/String;
    new-instance v0, Lcom/htc/xps/pomelo/log/HttpSender;

    .end local v0           #conn:Lcom/htc/xps/pomelo/log/HttpSender;
    iget v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->timeout:I

    invoke-direct {v0, v4, v5}, Lcom/htc/xps/pomelo/log/HttpSender;-><init>(Ljava/lang/String;I)V

    .line 520
    .restart local v0       #conn:Lcom/htc/xps/pomelo/log/HttpSender;
    iget-boolean v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    iput-boolean v5, v0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    .line 521
    const/4 v5, 0x2

    new-array v1, v5, [Lorg/apache/http/Header;

    .line 522
    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "packetSource"

    sget-object v8, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_HANDSET:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    invoke-virtual {v8}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v5

    .line 524
    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "packetType"

    sget-object v8, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICT_ACKNOWLEDGE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    invoke-virtual {v8}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v1, v5

    .line 526
    invoke-virtual {v0, v1}, Lcom/htc/xps/pomelo/log/HttpSender;->connectByGet([Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;

    move-result-object v3

    .line 528
    .local v3, result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    iget v5, v3, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    iput v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    .line 529
    iget v5, v3, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    iput v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    .line 531
    iget v5, v3, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    iput v5, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->statusCode:I

    .line 532
    iget v5, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->statusCode:I

    sget-object v6, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v6}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 533
    iget-object v5, v3, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->responseHeaders:[Lorg/apache/http/Header;

    invoke-direct {p0, p1, v2, v5}, Lcom/htc/xps/pomelo/log/LogLib;->readRefreshInterval(Landroid/content/Context;Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;[Lorg/apache/http/Header;)J

    .line 534
    iget-object v5, v3, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->resultBytes:[B

    invoke-direct {p0, v2, v5, p2, p3}, Lcom/htc/xps/pomelo/log/LogLib;->readUpdateResult(Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;[BLjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 536
    const-string v5, "LogUrl"

    iget-object v6, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->logServer:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v6}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-boolean v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v5, :cond_0

    const-string v5, "Pomelo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_LOG_URL saved as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->logServer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    const-string v5, "PolicyUrl"

    iget-object v6, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->policyServer:Ljava/lang/String;

    invoke-direct {p0, p1, v5, v6}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-boolean v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v5, :cond_1

    const-string v5, "Pomelo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_POLICY_URL saved as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->policyServer:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    const-string v5, "RefreshInterval"

    iget-wide v6, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->refreshInterval:J

    invoke-static {p1, v5, v6, v7}, Lcom/htc/xps/pomelo/log/LogLibStore;->saveLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 541
    iget-boolean v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v5, :cond_2

    const-string v5, "Pomelo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KEY_REFRESH_INTERVAL saved as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->refreshInterval:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    .end local v3           #result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    .end local v4           #updateServiceUrl:Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 549
    const/4 v1, 0x0

    .line 551
    return-object v2

    .line 545
    :cond_3
    sget-object v5, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INVALIDPARAM:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v5

    iput v5, v2, Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;->statusCode:I

    goto :goto_0
.end method

.method private saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 739
    :try_start_0
    new-instance v1, Lcom/htc/xps/pomelo/log/HexCrypto;

    invoke-direct {v1}, Lcom/htc/xps/pomelo/log/HexCrypto;-><init>()V

    invoke-static {p1, p2, p3, v1}, Lcom/htc/xps/pomelo/log/LogLibStore;->saveEncryptedString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/htc/xps/pomelo/log/IStringEncryption;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v0

    .line 743
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "Pomelo"

    const-string v2, "saveEncryptedPrefStr has error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 745
    const-string v1, "Pomelo"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private savePrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 710
    invoke-static {p1, p2, p3}, Lcom/htc/xps/pomelo/log/LogLibStore;->saveString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public static showAllocateMemory(Ljava/lang/String;)V
    .locals 13
    .parameter "tag"

    .prologue
    .line 755
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 756
    .local v6, runtime:Ljava/lang/Runtime;
    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v4

    .line 757
    .local v4, max:J
    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v7

    .line 758
    .local v7, total:J
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->getExternalBytesAllocated()J

    move-result-wide v0

    .line 759
    .local v0, external:J
    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    .line 760
    .local v2, free:J
    const-string v9, "Pomelo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " max: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", total: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", external: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", free:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", occupied:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v11, v7, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    return-void
.end method

.method private validateEnvelope(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Z
    .locals 5
    .parameter "env"

    .prologue
    const/4 v2, 0x0

    .line 318
    const/4 v1, 0x0

    .line 321
    .local v1, deviceInfo:Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;
    iget-object v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 322
    const-string v3, "Pomelo"

    const-string v4, "serverHost is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :goto_0
    return v2

    .line 327
    :cond_0
    if-nez p1, :cond_1

    .line 328
    const-string v3, "Pomelo"

    const-string v4, "HandsetLogPKT is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v1

    .line 332
    if-nez v1, :cond_2

    .line 333
    const-string v3, "Pomelo"

    const-string v4, "HandsetLogPKT.DeviceInfo is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getDeviceInfo()Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getRegion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-ne v3, v4, :cond_3

    .line 337
    const-string v3, "Pomelo"

    const-string v4, "HandsetLogPKT.Region is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 340
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    if-ne v3, v4, :cond_4

    .line 341
    const-string v3, "Pomelo"

    const-string v4, "HandsetLogPKT.Version is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_4
    invoke-virtual {v1}, Lcom/htc/xps/pomelo/log/PBCommonMessage$DeviceInfo;->getAllFields()Ljava/util/Map;

    move-result-object v0

    .line 347
    .local v0, allHeaderFields:Ljava/util/Map;,"Ljava/util/Map<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ""

    invoke-interface {v0, v3}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 348
    :cond_5
    const-string v3, "Pomelo"

    const-string v4, "At least one field in header is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 352
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private validateEnvelope(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;)Z
    .locals 2
    .parameter "ackPacket"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 480
    const-string v0, "Pomelo"

    const-string v1, "policyServerHost is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    .line 484
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private validateEnvelope(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;)Z
    .locals 2
    .parameter "envelope"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 427
    const-string v0, "Pomelo"

    const-string v1, "policyServerHost is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    .line 431
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLogPolicy(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;)Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;
    .locals 9
    .parameter "env"

    .prologue
    const/4 v6, 0x0

    .line 362
    new-instance v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;

    invoke-direct {v3}, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;-><init>()V

    .line 363
    .local v3, response:Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;
    sget-object v5, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->CONNECTFAILED:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v5

    iput v5, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    .line 364
    iput-object v6, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 366
    iget-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyReqUrl:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 367
    iget-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    iput-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyReqUrl:Ljava/lang/String;

    .line 369
    :cond_0
    iget-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyReqUrl:Ljava/lang/String;

    const-string v6, "/Req"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_1

    .line 370
    iget-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    const-string v6, "/Req"

    invoke-direct {p0, v5, v6}, Lcom/htc/xps/pomelo/log/LogLib;->insertUrlString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyReqUrl:Ljava/lang/String;

    .line 374
    :cond_1
    const/4 v0, 0x0

    .line 375
    .local v0, conn:Lcom/htc/xps/pomelo/log/HttpSender;
    const/4 v2, 0x0

    .line 376
    .local v2, headers:[Lorg/apache/http/Header;
    invoke-direct {p0, p1}, Lcom/htc/xps/pomelo/log/LogLib;->validateEnvelope(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 377
    new-instance v0, Lcom/htc/xps/pomelo/log/HttpSender;

    .end local v0           #conn:Lcom/htc/xps/pomelo/log/HttpSender;
    iget-object v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyReqUrl:Ljava/lang/String;

    iget v6, p0, Lcom/htc/xps/pomelo/log/LogLib;->timeout:I

    invoke-direct {v0, v5, v6}, Lcom/htc/xps/pomelo/log/HttpSender;-><init>(Ljava/lang/String;I)V

    .line 378
    .restart local v0       #conn:Lcom/htc/xps/pomelo/log/HttpSender;
    iget-boolean v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    iput-boolean v5, v0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    .line 379
    const/4 v5, 0x2

    new-array v2, v5, [Lorg/apache/http/Header;

    .line 380
    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "packetSource"

    sget-object v8, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_HANDSET:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    invoke-virtual {v8}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v2, v5

    .line 382
    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string v7, "packetType"

    sget-object v8, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICY_REQUEST_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    invoke-virtual {v8}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v2, v5

    .line 384
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyRequestPKT;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Lcom/htc/xps/pomelo/log/HttpSender;->connectByPost([B[Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;

    move-result-object v4

    .line 385
    .local v4, result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    iget v5, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    iput v5, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    .line 387
    :try_start_0
    iget v5, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    sget-object v6, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->SUCCESS:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v6}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 388
    iget-object v5, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->resultBytes:[B

    invoke-static {v5}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;->parseFrom([B)Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    move-result-object v5

    iput-object v5, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_2
    :goto_0
    iget v5, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    iput v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    .line 403
    iget v5, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    iput v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    .line 410
    .end local v4           #result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    :goto_1
    const/4 v0, 0x0

    .line 411
    const/4 v2, 0x0

    .line 414
    iget-boolean v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v5, :cond_3

    const-string v5, "Pomelo"

    invoke-static {v5}, Lcom/htc/xps/pomelo/log/LogLib;->showAllocateMemory(Ljava/lang/String;)V

    .line 416
    :cond_3
    return-object v3

    .line 390
    .restart local v4       #result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    :cond_4
    :try_start_1
    sget-object v5, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INNEREXCEPTION:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v5

    iput v5, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    .line 391
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 392
    iget-boolean v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v5, :cond_2

    const-string v5, "Pomelo"

    const-string v6, "http return null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v1

    .line 396
    .local v1, ex:Ljava/lang/Exception;
    :try_start_2
    sget-object v5, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INNEREXCEPTION:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v5

    iput v5, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    .line 397
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->policyResponse:Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyResponsePKT;

    .line 398
    const-string v5, "Pomelo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LogLib inner exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    iget v5, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    iput v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    .line 403
    iget v5, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    iput v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    goto :goto_1

    .line 402
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget v6, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    iput v6, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    .line 403
    iget v6, v4, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    iput v6, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    throw v5

    .line 406
    .end local v4           #result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    :cond_5
    sget-object v5, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INVALIDPARAM:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v5}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v5

    iput v5, v3, Lcom/htc/xps/pomelo/log/LogLib$PolicyResponse;->statusCode:I

    .line 407
    const-string v5, "Pomelo"

    const-string v6, "LogLib invalid parameter"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPolicyServerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    return-object v0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->timeout:I

    return v0
.end method

.method public getTotalDownloadSize()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    return v0
.end method

.method public getTotalUploadSize()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    return v0
.end method

.method public getUpdateServerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    return-object v0
.end method

.method public is3GNetwork(Landroid/content/Context;)Z
    .locals 8
    .parameter "mContext"

    .prologue
    const/4 v6, 0x1

    .line 672
    const/4 v4, 0x0

    .line 673
    .local v4, toReturn:Z
    const/4 v1, 0x0

    .line 674
    .local v1, connectivityManager:Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    .line 676
    .local v3, networkInfo:Landroid/net/NetworkInfo;
    :try_start_0
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/ConnectivityManager;

    move-object v1, v0

    .line 677
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 679
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-eq v5, v6, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_0

    move v4, v6

    .line 686
    :goto_0
    const/4 v1, 0x0

    .line 687
    const/4 v3, 0x0

    .line 690
    :goto_1
    return v4

    .line 679
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 681
    :catch_0
    move-exception v2

    .line 682
    .local v2, e:Ljava/lang/Exception;
    :try_start_1
    const-string v5, "Pomelo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "is3GNetwork exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    const/4 v1, 0x0

    .line 687
    const/4 v3, 0x0

    .line 688
    goto :goto_1

    .line 686
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    const/4 v1, 0x0

    .line 687
    const/4 v3, 0x0

    throw v5
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    return v0
.end method

.method public requestUpdate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
    .locals 2
    .parameter "context"
    .parameter "region"
    .parameter "operator"

    .prologue
    .line 504
    const-string v1, "https://update.htcsense.com/$SS$/Services/Regions.svc/Regions/GetRegionByCC/"

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/htc/xps/pomelo/log/LogLib;->requestUpdateInternal(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;

    move-result-object v0

    .line 505
    .local v0, response:Lcom/htc/xps/pomelo/log/LogLib$UpdateResponse;
    iget-boolean v1, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v1, :cond_0

    const-string v1, "Pomelo"

    invoke-static {v1}, Lcom/htc/xps/pomelo/log/LogLib;->showAllocateMemory(Ljava/lang/String;)V

    .line 506
    :cond_0
    return-object v0
.end method

.method public sendLogEnvelope(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)I
    .locals 7
    .parameter "envelope"

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/htc/xps/pomelo/log/LogLib;->validateEnvelope(Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    new-instance v0, Lcom/htc/xps/pomelo/log/HttpSender;

    iget-object v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    iget v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->timeout:I

    invoke-direct {v0, v3, v4}, Lcom/htc/xps/pomelo/log/HttpSender;-><init>(Ljava/lang/String;I)V

    .line 293
    .local v0, conn:Lcom/htc/xps/pomelo/log/HttpSender;
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    iput-boolean v3, v0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    .line 294
    const/4 v3, 0x2

    new-array v1, v3, [Lorg/apache/http/Header;

    .line 295
    .local v1, headers:[Lorg/apache/http/Header;
    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "packetSource"

    sget-object v6, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_HANDSET:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    invoke-virtual {v6}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 297
    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicHeader;

    const-string v5, "packetType"

    sget-object v6, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_LOG_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    invoke-virtual {v6}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v1, v3

    .line 299
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetLogPacket$HandsetLogPKT;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lcom/htc/xps/pomelo/log/HttpSender;->connectByPost([B[Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;

    move-result-object v2

    .line 301
    .local v2, result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    iget v3, v2, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    iput v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    .line 302
    iget v3, v2, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    iput v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    .line 304
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_0

    const-string v3, "Pomelo"

    invoke-static {v3}, Lcom/htc/xps/pomelo/log/LogLib;->showAllocateMemory(Ljava/lang/String;)V

    .line 305
    :cond_0
    iget v3, v2, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    .line 308
    .end local v0           #conn:Lcom/htc/xps/pomelo/log/HttpSender;
    .end local v1           #headers:[Lorg/apache/http/Header;
    .end local v2           #result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    :goto_0
    return v3

    .line 307
    :cond_1
    iget-boolean v3, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v3, :cond_2

    const-string v3, "Pomelo"

    invoke-static {v3}, Lcom/htc/xps/pomelo/log/LogLib;->showAllocateMemory(Ljava/lang/String;)V

    .line 308
    :cond_2
    sget-object v3, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INVALIDPARAM:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v3}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v3

    goto :goto_0
.end method

.method public sendPolicyAck(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;)I
    .locals 8
    .parameter "ackPacket"

    .prologue
    .line 441
    iget-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyAckUrl:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 442
    iget-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    iput-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyAckUrl:Ljava/lang/String;

    .line 444
    :cond_0
    iget-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyAckUrl:Ljava/lang/String;

    const-string v5, "/Ack"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 445
    iget-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    const-string v5, "/Ack"

    invoke-direct {p0, v4, v5}, Lcom/htc/xps/pomelo/log/LogLib;->insertUrlString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyAckUrl:Ljava/lang/String;

    .line 448
    :cond_1
    sget-object v4, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->CONNECTFAILED:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v3

    .line 450
    .local v3, statusCode:I
    const/4 v0, 0x0

    .line 451
    .local v0, conn:Lcom/htc/xps/pomelo/log/HttpSender;
    const/4 v1, 0x0

    .line 452
    .local v1, headers:[Lorg/apache/http/Header;
    invoke-direct {p0, p1}, Lcom/htc/xps/pomelo/log/LogLib;->validateEnvelope(Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 453
    new-instance v0, Lcom/htc/xps/pomelo/log/HttpSender;

    .end local v0           #conn:Lcom/htc/xps/pomelo/log/HttpSender;
    iget-object v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyAckUrl:Ljava/lang/String;

    iget v5, p0, Lcom/htc/xps/pomelo/log/LogLib;->timeout:I

    invoke-direct {v0, v4, v5}, Lcom/htc/xps/pomelo/log/HttpSender;-><init>(Ljava/lang/String;I)V

    .line 454
    .restart local v0       #conn:Lcom/htc/xps/pomelo/log/HttpSender;
    iget-boolean v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    iput-boolean v4, v0, Lcom/htc/xps/pomelo/log/HttpSender;->D:Z

    .line 455
    const/4 v4, 0x2

    new-array v1, v4, [Lorg/apache/http/Header;

    .line 456
    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "packetSource"

    sget-object v7, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->PKT_SOURCE_HANDSET:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;

    invoke-virtual {v7}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketSource;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 458
    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "packetType"

    sget-object v7, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->HANDSET_POLICT_ACKNOWLEDGE_PKT:Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;

    invoke-virtual {v7}, Lcom/htc/xps/pomelo/common/PacketCommon$ParamPacketType;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v1, v4

    .line 460
    invoke-virtual {p1}, Lcom/htc/xps/pomelo/log/PBHandsetPolicyPacket$HandsetPolicyAcknowledgePKT;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Lcom/htc/xps/pomelo/log/HttpSender;->connectByPost([B[Lorg/apache/http/Header;)Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;

    move-result-object v2

    .line 462
    .local v2, result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    iget v4, v2, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->uploadedSize:I

    iput v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalUploadSize:I

    .line 463
    iget v4, v2, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->downloadedSize:I

    iput v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->totalDownloadSize:I

    .line 465
    iget v3, v2, Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;->statusCode:I

    .line 470
    .end local v2           #result:Lcom/htc/xps/pomelo/log/HttpSender$HttpSenderResult;
    :goto_0
    const/4 v0, 0x0

    .line 471
    const/4 v1, 0x0

    .line 473
    iget-boolean v4, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v4, :cond_2

    const-string v4, "Pomelo"

    invoke-static {v4}, Lcom/htc/xps/pomelo/log/LogLib;->showAllocateMemory(Ljava/lang/String;)V

    .line 474
    :cond_2
    return v3

    .line 467
    :cond_3
    sget-object v4, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->INVALIDPARAM:Lcom/htc/xps/pomelo/log/LogLib$SendResult;

    invoke-virtual {v4}, Lcom/htc/xps/pomelo/log/LogLib$SendResult;->getValue()I

    move-result v3

    goto :goto_0
.end method

.method protected setPolicyServerHost(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "policyServerHost"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    iput-object p2, p0, Lcom/htc/xps/pomelo/log/LogLib;->policyServerHost:Ljava/lang/String;

    .line 241
    const-string v0, "https://policylog.htcsense.com:443"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    const-string v0, "PolicyUrl"

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "Pomelo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_POLICY_URL saved as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    return-void
.end method

.method protected setServerHost(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "serverHost"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 220
    iput-object p2, p0, Lcom/htc/xps/pomelo/log/LogLib;->serverHost:Ljava/lang/String;

    .line 221
    const-string v0, "https://pomelo.htcsense.com:443"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const-string v0, "LogUrl"

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "Pomelo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_LOG_URL saved as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "timeoutMsec"

    .prologue
    .line 282
    iput p1, p0, Lcom/htc/xps/pomelo/log/LogLib;->timeout:I

    .line 283
    return-void
.end method

.method protected setUpdateServerHost(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "updateServerHost"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 261
    iput-object p2, p0, Lcom/htc/xps/pomelo/log/LogLib;->updateServerHost:Ljava/lang/String;

    .line 262
    const-string v0, "https://update.htcsense.com/$SS$/Services/Regions.svc/Regions/?sortBy=Name&sortDescending=false&start=0&count=300"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const-string v0, "UpdateUrl"

    invoke-direct {p0, p1, v0, p2}, Lcom/htc/xps/pomelo/log/LogLib;->saveEncryptedPrefStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-boolean v0, p0, Lcom/htc/xps/pomelo/log/LogLib;->D:Z

    if-eqz v0, :cond_0

    const-string v0, "Pomelo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_UPDATE_URL saved as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    return-void
.end method

.method public validateRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "url"
    .parameter "region"

    .prologue
    .line 663
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

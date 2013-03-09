.class public Lcom/redbend/vdmc/VdmcConfig;
.super Ljava/lang/Object;
.source "VdmcConfig.java"


# static fields
.field private static final ACC_ROOT:Ljava/lang/String; = "12accountroot"

.field private static final CONFIG_FILENAME:Ljava/lang/String; = "config.txt"

.field private static final CONN_TIMEOUT:Ljava/lang/String; = "conn_timeout"

.field private static final DDL:Ljava/lang/String; = "ddl"

.field private static final DL_EXT:Ljava/lang/String; = "dl_ext"

.field private static final DL_HTTP_AUTH:[Ljava/lang/String; = null

.field private static final DL_PROXY:Ljava/lang/String; = "dlproxy"

.field private static final DL_PROXY_AUTH:[Ljava/lang/String; = null

.field private static final DM_HTTP_AUTH:[Ljava/lang/String; = null

.field private static final DM_PROXY:Ljava/lang/String; = "dmproxy"

.field private static final DM_PROXY_AUTH:[Ljava/lang/String; = null

.field private static final DM_SERVER:Ljava/lang/String; = "dmserver"

.field private static final DM_VERSION:Ljava/lang/String; = "dmversion"

.field private static final ENCODE:Ljava/lang/String; = "encode"

.field private static final EXCLUSIVE:Ljava/lang/String; = "exclusive"

.field private static final HTTP_AUTH_LEVEL:I = 0x0

.field private static final HTTP_AUTH_PWD:I = 0x2

.field private static final HTTP_AUTH_UNAME:I = 0x1

.field private static final INSTALL_NOTIFY_SUCCESS_ONLY:Ljava/lang/String; = "installnotifysuccessonly"

.field private static final SERVER_202_UNSUPPORTED:Ljava/lang/String; = "server_202_unsupported"

.field private static final UPDATE_INACTIVE_ACC:Ljava/lang/String; = "updateinactiveaccount"

.field private static final XML:Ljava/lang/String; = "xml"

.field private static _paramTable:Ljava/util/Properties;


# instance fields
.field private _cfg:Lcom/redbend/vdm/VdmConfig;

.field private isDDLExtSet:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dm_http_auth_level"

    aput-object v1, v0, v2

    const-string v1, "dm_http_auth_username"

    aput-object v1, v0, v3

    const-string v1, "dm_http_auth_password"

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdmc/VdmcConfig;->DM_HTTP_AUTH:[Ljava/lang/String;

    .line 329
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dl_http_auth_level"

    aput-object v1, v0, v2

    const-string v1, "dl_http_auth_username"

    aput-object v1, v0, v3

    const-string v1, "dl_http_auth_password"

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdmc/VdmcConfig;->DL_HTTP_AUTH:[Ljava/lang/String;

    .line 330
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dm_proxy_auth_level"

    aput-object v1, v0, v2

    const-string v1, "dm_proxy_auth_username"

    aput-object v1, v0, v3

    const-string v1, "dm_proxy_auth_password"

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdmc/VdmcConfig;->DM_PROXY_AUTH:[Ljava/lang/String;

    .line 331
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "dl_proxy_auth_level"

    aput-object v1, v0, v2

    const-string v1, "dl_proxy_auth_username"

    aput-object v1, v0, v3

    const-string v1, "dl_proxy_auth_password"

    aput-object v1, v0, v4

    sput-object v0, Lcom/redbend/vdmc/VdmcConfig;->DL_PROXY_AUTH:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-boolean v3, p0, Lcom/redbend/vdmc/VdmcConfig;->isDDLExtSet:Z

    .line 30
    new-instance v3, Lcom/redbend/vdm/VdmConfig;

    invoke-direct {v3}, Lcom/redbend/vdm/VdmConfig;-><init>()V

    iput-object v3, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    .line 33
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getInstance()Lcom/redbend/vdmc/Vdmc;

    move-result-object v0

    .line 34
    .local v0, _vdmc:Lcom/redbend/vdmc/Vdmc;
    new-instance v1, Lcom/redbend/vdmc/InputFile;

    const-string v3, "config.txt"

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/redbend/vdmc/InputFile;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 36
    .local v1, cfgStream:Lcom/redbend/vdmc/InputFile;
    if-eqz v1, :cond_0

    .line 37
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    .line 38
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    iget-object v4, v1, Lcom/redbend/vdmc/InputFile;->_stream:Ljava/io/FileInputStream;

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 39
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/redbend/vdmc/InputFile;->close(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0           #_vdmc:Lcom/redbend/vdmc/Vdmc;
    .end local v1           #cfgStream:Lcom/redbend/vdmc/InputFile;
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v2

    .line 42
    .local v2, e:Ljava/io/IOException;
    const-string v3, "vDMC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VdmcConfig:Caught exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private configureDMAcc()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 186
    new-instance v1, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;

    iget-object v3, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v3}, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;-><init>(Lcom/redbend/vdm/VdmConfig;)V

    .line 188
    .local v1, dmacc:Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v4, "dmversion"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v4, "dmversion"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, dmVersion:Ljava/lang/String;
    const-string v3, "112"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1.1.2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    :cond_0
    sget-object v3, Lcom/redbend/vdm/VdmConfig$DmVersion;->DM_1_1_2:Lcom/redbend/vdm/VdmConfig$DmVersion;

    iput-object v3, v1, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->activeAccountDMVersion:Lcom/redbend/vdm/VdmConfig$DmVersion;

    .line 194
    .end local v0           #dmVersion:Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v4, "12accountroot"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 195
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v4, "12accountroot"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->dm12root:Ljava/lang/String;

    .line 204
    :cond_2
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v4, "updateinactiveaccount"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v4, "updateinactiveaccount"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, updateInactiveAcc:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x54

    if-eq v3, v4, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_4

    .line 207
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;->updateInactiveDMAccount:Z

    .line 210
    .end local v2           #updateInactiveAcc:Ljava/lang/String;
    :cond_4
    iget-object v3, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    invoke-virtual {v3, v1}, Lcom/redbend/vdm/VdmConfig;->setDmAccConfiguration(Lcom/redbend/vdm/VdmConfig$DmAccConfiguration;)V

    .line 211
    return-void
.end method

.method private configureDmcMode()V
    .locals 4

    .prologue
    .line 291
    const-string v0, "mode"

    .line 292
    .local v0, DMC_MODE:Ljava/lang/String;
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    invoke-virtual {v3, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    sget-object v3, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    invoke-virtual {v3, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, mode:Ljava/lang/String;
    const-string v3, "fumo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 295
    const/4 v2, 0x1

    .line 304
    .end local v1           #mode:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 297
    .restart local v1       #mode:Ljava/lang/String;
    :cond_1
    const-string v3, "scomo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 298
    const/4 v2, 0x2

    .local v2, nMode:I
    goto :goto_0

    .line 300
    .end local v2           #nMode:I
    :cond_2
    const-string v3, "lawmo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0
.end method

.method private configureHttpAuth(Z)V
    .locals 9
    .parameter "isDM"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 215
    if-eqz p1, :cond_1

    sget-object v1, Lcom/redbend/vdmc/VdmcConfig;->DM_HTTP_AUTH:[Ljava/lang/String;

    .line 216
    .local v1, auth:[Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "DM"

    .line 218
    .local v0, DMDL:Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 220
    sget-object v5, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, level:Ljava/lang/String;
    const-string v5, "none"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 222
    if-eqz p1, :cond_3

    .line 223
    iget-object v5, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    sget-object v6, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->NONE:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v5, v6, v7, v7}, Lcom/redbend/vdm/VdmConfig;->setDmHttpAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .end local v2           #level:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 215
    .end local v0           #DMDL:Ljava/lang/String;
    .end local v1           #auth:[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/redbend/vdmc/VdmcConfig;->DL_HTTP_AUTH:[Ljava/lang/String;

    goto :goto_0

    .line 216
    .restart local v1       #auth:[Ljava/lang/String;
    :cond_2
    const-string v0, "DL"

    goto :goto_1

    .line 225
    .restart local v0       #DMDL:Ljava/lang/String;
    .restart local v2       #level:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    sget-object v6, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->NONE:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v5, v6, v7, v7}, Lcom/redbend/vdm/VdmConfig;->setDlHttpAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 227
    :cond_4
    sget-object v5, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 228
    .local v4, username:Ljava/lang/String;
    sget-object v5, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 230
    .local v3, password:Ljava/lang/String;
    if-eqz v4, :cond_5

    if-nez v3, :cond_6

    .line 231
    :cond_5
    const-string v5, "vDMC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing credentials for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP Authentication"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v5, Lcom/redbend/vdm/VdmException;

    sget-object v6, Lcom/redbend/vdm/VdmException$VdmError;->BAD_INPUT:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v5, v6}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v5

    .line 234
    :cond_6
    const-string v5, "digest"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 235
    const-string v5, "vDMC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP Authentication \'Digest\' is not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v5, Lcom/redbend/vdm/VdmException;

    sget-object v6, Lcom/redbend/vdm/VdmException$VdmError;->NOT_IMPLEMENTED:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v5, v6}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v5

    .line 238
    :cond_7
    const-string v5, "basic"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 239
    const-string v5, "vDMC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP Authentication "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v5, Lcom/redbend/vdm/VdmException;

    sget-object v6, Lcom/redbend/vdm/VdmException$VdmError;->BAD_INPUT:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v5, v6}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v5

    .line 243
    :cond_8
    if-eqz p1, :cond_9

    .line 244
    iget-object v5, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    sget-object v6, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->BASIC:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v5, v6, v4, v3}, Lcom/redbend/vdm/VdmConfig;->setDmHttpAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 246
    :cond_9
    iget-object v5, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    sget-object v6, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->BASIC:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v5, v6, v4, v3}, Lcom/redbend/vdm/VdmConfig;->setDlHttpAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private configureProxyAuth(Z)V
    .locals 9
    .parameter "isDM"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/redbend/vdm/VdmException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 253
    if-eqz p1, :cond_1

    sget-object v1, Lcom/redbend/vdmc/VdmcConfig;->DM_PROXY_AUTH:[Ljava/lang/String;

    .line 254
    .local v1, auth:[Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_2

    const-string v0, "DM"

    .line 256
    .local v0, DMDL:Ljava/lang/String;
    :goto_1
    sget-object v5, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 258
    sget-object v5, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, level:Ljava/lang/String;
    const-string v5, "none"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 260
    if-eqz p1, :cond_3

    .line 261
    iget-object v5, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    sget-object v6, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->NONE:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v5, v6, v7, v7}, Lcom/redbend/vdm/VdmConfig;->setDmProxyAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .end local v2           #level:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 253
    .end local v0           #DMDL:Ljava/lang/String;
    .end local v1           #auth:[Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/redbend/vdmc/VdmcConfig;->DL_PROXY_AUTH:[Ljava/lang/String;

    goto :goto_0

    .line 254
    .restart local v1       #auth:[Ljava/lang/String;
    :cond_2
    const-string v0, "DL"

    goto :goto_1

    .line 263
    .restart local v0       #DMDL:Ljava/lang/String;
    .restart local v2       #level:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    sget-object v6, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->NONE:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v5, v6, v7, v7}, Lcom/redbend/vdm/VdmConfig;->setDlProxyAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 265
    :cond_4
    sget-object v5, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 266
    .local v4, username:Ljava/lang/String;
    sget-object v5, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, password:Ljava/lang/String;
    if-eqz v4, :cond_5

    if-nez v3, :cond_6

    .line 269
    :cond_5
    const-string v5, "vDMC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing credentials for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " HTTP Authentication"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v5, Lcom/redbend/vdm/VdmException;

    sget-object v6, Lcom/redbend/vdm/VdmException$VdmError;->BAD_INPUT:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v5, v6}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v5

    .line 272
    :cond_6
    const-string v5, "digest"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 273
    const-string v5, "vDMC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Proxy Authentication \'Digest\' is not supported"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v5, Lcom/redbend/vdm/VdmException;

    sget-object v6, Lcom/redbend/vdm/VdmException$VdmError;->NOT_IMPLEMENTED:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v5, v6}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v5

    .line 276
    :cond_7
    const-string v5, "basic"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 277
    const-string v5, "vDMC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Proxy Authentication "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v5, Lcom/redbend/vdm/VdmException;

    sget-object v6, Lcom/redbend/vdm/VdmException$VdmError;->BAD_INPUT:Lcom/redbend/vdm/VdmException$VdmError;

    invoke-direct {v5, v6}, Lcom/redbend/vdm/VdmException;-><init>(Lcom/redbend/vdm/VdmException$VdmError;)V

    throw v5

    .line 281
    :cond_8
    if-eqz p1, :cond_9

    .line 282
    iget-object v5, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    sget-object v6, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->BASIC:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v5, v6, v4, v3}, Lcom/redbend/vdm/VdmConfig;->setDmProxyAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 284
    :cond_9
    iget-object v5, p0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    sget-object v6, Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;->BASIC:Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;

    invoke-virtual {v5, v6, v4, v3}, Lcom/redbend/vdm/VdmConfig;->setDlProxyAuthentication(Lcom/redbend/vdm/VdmConfig$HttpAuthLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static getParamTable()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    return-object v0
.end method


# virtual methods
.method public configure()V
    .locals 20

    .prologue
    .line 47
    const/4 v6, 0x0

    .line 48
    .local v6, configException:Z
    const/4 v7, 0x0

    .line 52
    .local v7, configExceptionMsg:Ljava/lang/String;
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v14

    .line 54
    .local v14, mCommonIPL:Lcom/htc/ipl/common;
    invoke-virtual {v14}, Lcom/htc/ipl/common;->UserAgentName()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, UserAgentName:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_0

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setDmProxy(Ljava/lang/String;)V

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http://"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ":"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setDlProxy(Ljava/lang/String;)V

    .line 60
    :cond_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/redbend/vdmc/VdmcConfig;->mContext:Landroid/content/Context;

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/redbend/vdmc/Sprint/DMAcc;->getInstance(Landroid/content/Context;)Lcom/redbend/vdmc/Sprint/DMAcc;

    move-result-object v15

    .line 62
    .local v15, mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;
    const/16 v17, 0x0

    const-string v18, "none"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ProxyAddr(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, _ProxyAddr:Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "none"

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->ProxyPort(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, _ProxyPort:Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, ProxyAddr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/redbend/vdm/VdmConfig;->setDmProxy(Ljava/lang/String;)V

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/redbend/vdm/VdmConfig;->setDlProxy(Ljava/lang/String;)V

    .line 67
    const-string v17, "vDMC"

    const-string v18, "setEncodeWBXMLMsg: false"

    invoke-static/range {v17 .. v18}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setEncodeWBXMLMsg(Z)V

    .line 69
    const-string v17, "vDMC"

    const-string v18, "setSessionIDAsDec: true"

    invoke-static/range {v17 .. v18}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setSessionIDAsDec(Z)V

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const v18, 0xa000

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setMaxMsgSize(I)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const v18, 0xcb2000

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setMaxObjSize(I)V

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/redbend/vdm/VdmConfig;->setDmUserAgentName(Ljava/lang/String;)V

    .line 74
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/redbend/vdm/VdmConfig;->setDlUserAgentName(Ljava/lang/String;)V

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/redbend/vdm/VdmConfig;->setIgnoreMissingETag()V

    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    sget-object v18, Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;->DISABLED:Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setNotificationVerificationMode(Lcom/redbend/vdm/VdmConfig$NotifVerificationMode;)V

    .line 78
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    if-eqz v17, :cond_6

    .line 79
    const-string v17, "vDMC"

    const-string v18, "configureDMAcc"

    invoke-static/range {v17 .. v18}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct/range {p0 .. p0}, Lcom/redbend/vdmc/VdmcConfig;->configureDMAcc()V

    .line 82
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "dmserver"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 83
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "dmserver"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 84
    .local v11, dmServer:Ljava/lang/String;
    const-string v17, "wedm"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const-string v19, "IBM"

    invoke-virtual/range {v17 .. v19}, Lcom/redbend/vdm/VdmConfig;->setIsUsingWedmServer(ZLjava/lang/String;)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setIsDMAccNameOptional(Z)V

    .line 95
    .end local v11           #dmServer:Ljava/lang/String;
    :cond_1
    :goto_0
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "dmproxy"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 96
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "dmproxy"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 97
    .local v10, dmProxy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/redbend/vdm/VdmConfig;->setDmProxy(Ljava/lang/String;)V

    .line 99
    .end local v10           #dmProxy:Ljava/lang/String;
    :cond_2
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "dlproxy"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 100
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "dlproxy"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 101
    .local v8, dlProxy:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/redbend/vdm/VdmConfig;->setDlProxy(Ljava/lang/String;)V

    .line 103
    .end local v8           #dlProxy:Ljava/lang/String;
    :cond_3
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "dl_ext"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 104
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "dl_ext"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 105
    .local v9, dl_ext:Ljava/lang/String;
    const-string v17, "ddl"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 106
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/redbend/vdmc/VdmcConfig;->isDDLExtSet:Z

    .line 109
    .end local v9           #dl_ext:Ljava/lang/String;
    :cond_4
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "encode"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 110
    sget-object v17, Lcom/redbend/vdmc/VdmcConfig;->_paramTable:Ljava/util/Properties;

    const-string v18, "encode"

    invoke-virtual/range {v17 .. v18}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 111
    .local v13, encode:Ljava/lang/String;
    const-string v17, "xml"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_5

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setEncodeWBXMLMsg(Z)V

    .line 142
    .end local v13           #encode:Ljava/lang/String;
    :cond_5
    const-string v17, "vDMC"

    const-string v18, "setIfRangeInsteadOfIfMatch"

    invoke-static/range {v17 .. v18}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setIfRangeInsteadOfIfMatch(Z)V

    .line 145
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/redbend/vdmc/VdmcConfig;->configureHttpAuth(Z)V

    .line 146
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/redbend/vdmc/VdmcConfig;->configureHttpAuth(Z)V

    .line 147
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/redbend/vdmc/VdmcConfig;->configureProxyAuth(Z)V

    .line 148
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/redbend/vdmc/VdmcConfig;->configureProxyAuth(Z)V

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/redbend/vdmc/VdmcConfig;->configureDmcMode()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .end local v2           #ProxyAddr:Ljava/lang/String;
    .end local v4           #_ProxyAddr:Ljava/lang/String;
    .end local v5           #_ProxyPort:Ljava/lang/String;
    .end local v15           #mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;
    :cond_6
    :goto_1
    if-eqz v6, :cond_7

    .line 173
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Caught exception ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 174
    .local v16, msg:Ljava/lang/String;
    const-string v17, "vDMC"

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v16           #msg:Ljava/lang/String;
    :cond_7
    return-void

    .line 89
    .restart local v2       #ProxyAddr:Ljava/lang/String;
    .restart local v4       #_ProxyAddr:Ljava/lang/String;
    .restart local v5       #_ProxyPort:Ljava/lang/String;
    .restart local v11       #dmServer:Ljava/lang/String;
    .restart local v15       #mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;
    :cond_8
    :try_start_1
    const-string v17, "vzw"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/redbend/vdm/VdmConfig;->setUseVzwTreeStructure()V

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/redbend/vdmc/VdmcConfig;->_cfg:Lcom/redbend/vdm/VdmConfig;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/redbend/vdm/VdmConfig;->setAllowBootstrapOverwriteAccount(Z)V
    :try_end_1
    .catch Lcom/redbend/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 162
    .end local v2           #ProxyAddr:Ljava/lang/String;
    .end local v4           #_ProxyAddr:Ljava/lang/String;
    .end local v5           #_ProxyPort:Ljava/lang/String;
    .end local v11           #dmServer:Ljava/lang/String;
    .end local v15           #mDMAcc:Lcom/redbend/vdmc/Sprint/DMAcc;
    :catch_0
    move-exception v12

    .line 163
    .local v12, e:Lcom/redbend/vdm/VdmException;
    const-string v17, "vDMC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VdmcConfig:Caught vDM exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Lcom/redbend/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v12}, Lcom/redbend/vdm/VdmException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 165
    const/4 v6, 0x1

    .line 171
    goto :goto_1

    .line 167
    .end local v12           #e:Lcom/redbend/vdm/VdmException;
    :catch_1
    move-exception v12

    .line 168
    .local v12, e:Ljava/lang/Exception;
    const-string v17, "vDMC"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "VdmcConfig:Caught exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/htc/omadm/util/DMLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v12}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 170
    const/4 v6, 0x1

    goto/16 :goto_1
.end method

.method public isDDLExtSet()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/redbend/vdmc/VdmcConfig;->isDDLExtSet:Z

    return v0
.end method

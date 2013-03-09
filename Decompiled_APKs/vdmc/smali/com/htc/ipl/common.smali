.class public Lcom/htc/ipl/common;
.super Ljava/lang/Object;
.source "common.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcIPL"

.field public static final TOG_Browser:I = 0xa

.field public static final TOG_DC:I = 0x3

.field public static final TOG_DevDetaiil:I = 0x2

.field public static final TOG_DevInfo:I = 0x1

.field public static final TOG_Firmware:I = 0x6

.field public static final TOG_MediaStream:I = 0x5

.field public static final TOG_NREAD:I = 0x0

.field public static final TOG_NWRITE:I = 0x1

.field public static final TOG_PRL:I = 0x4

.field public static final TOG_READ:Z = false

.field public static final TOG_SPA:I = 0x8

.field public static final TOG_SecureDevice:I = 0x7

.field public static final TOG_WRITE:Z = true

.field public static final TOG_WiMax:I = 0x9

.field private static me:Lcom/htc/ipl/common;


# instance fields
.field mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

.field mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/ipl/common;->me:Lcom/htc/ipl/common;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    .line 20
    iput-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    .line 31
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    .line 32
    invoke-static {}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    .line 33
    return-void
.end method

.method private CalcClientPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "DevID"

    .prologue
    .line 311
    const-string v2, "sprint"

    .line 312
    .local v2, server:Ljava/lang/String;
    const-string v1, "dmsecret@sprint"

    .line 313
    .local v1, secret:Ljava/lang/String;
    invoke-direct {p0, p1, v2, v1}, Lcom/htc/ipl/common;->CalcPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, result:Ljava/lang/String;
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CalcClientPassword:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v0
.end method

.method private CalcNonce(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "data"

    .prologue
    .line 319
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, result:Ljava/lang/String;
    const-string v1, "HtcIPL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CalcNonce:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-object v0
.end method

.method private CalcPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "ValueA"
    .parameter "ValueB"
    .parameter "ValueC"

    .prologue
    .line 278
    const-string v2, ""

    .line 279
    .local v2, Ret0:Ljava/lang/String;
    const-string v3, ""

    .line 280
    .local v3, Ret1:Ljava/lang/String;
    const-string v4, ""

    .line 281
    .local v4, Ret2:Ljava/lang/String;
    const-string v5, ""

    .line 282
    .local v5, Ret3:Ljava/lang/String;
    const-string v6, ""

    .line 283
    .local v6, Ret4:Ljava/lang/String;
    const-string v7, ""

    .line 284
    .local v7, Ret5:Ljava/lang/String;
    const/16 v13, 0xa

    new-array v1, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "\\+"

    aput-object v14, v1, v13

    const/4 v13, 0x1

    const-string v14, "m"

    aput-object v14, v1, v13

    const/4 v13, 0x2

    const-string v14, "\\/"

    aput-object v14, v1, v13

    const/4 v13, 0x3

    const-string v14, "f"

    aput-object v14, v1, v13

    const/4 v13, 0x4

    const-string v14, "\\="

    aput-object v14, v1, v13

    const/4 v13, 0x5

    const-string v14, ""

    aput-object v14, v1, v13

    const/4 v13, 0x6

    const-string v14, "\n"

    aput-object v14, v1, v13

    const/4 v13, 0x7

    const-string v14, ""

    aput-object v14, v1, v13

    const/16 v13, 0x8

    const-string v14, "\r"

    aput-object v14, v1, v13

    const/16 v13, 0x9

    const-string v14, ""

    aput-object v14, v1, v13

    .line 286
    .local v1, Filter:[Ljava/lang/String;
    :try_start_0
    const-string v13, "MD5"

    invoke-static {v13}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 287
    .local v11, mMD5:Ljava/security/MessageDigest;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 288
    .local v8, X:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 289
    .local v9, data:[B
    invoke-virtual {v11, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    .line 290
    .local v12, ss:[B
    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 291
    const/4 v13, 0x0

    aget-object v13, v1, v13

    const/4 v14, 0x1

    aget-object v14, v1, v14

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 292
    const/4 v13, 0x2

    aget-object v13, v1, v13

    const/4 v14, 0x3

    aget-object v14, v1, v14

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 293
    const/4 v13, 0x4

    aget-object v13, v1, v13

    const/4 v14, 0x5

    aget-object v14, v1, v14

    invoke-virtual {v4, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 294
    const/4 v13, 0x6

    aget-object v13, v1, v13

    const/4 v14, 0x7

    aget-object v14, v1, v14

    invoke-virtual {v5, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    const/16 v13, 0x8

    aget-object v13, v1, v13

    const/16 v14, 0x9

    aget-object v14, v1, v14

    invoke-virtual {v6, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 299
    .end local v8           #X:Ljava/lang/String;
    .end local v9           #data:[B
    .end local v11           #mMD5:Ljava/security/MessageDigest;
    .end local v12           #ss:[B
    :goto_0
    return-object v7

    .line 296
    :catch_0
    move-exception v10

    .line 297
    .local v10, e:Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private CalcServerPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "DevID"

    .prologue
    .line 303
    const-string v2, "sprint"

    .line 304
    .local v2, server:Ljava/lang/String;
    const-string v1, "dmsecret@sprint"

    .line 305
    .local v1, secret:Ljava/lang/String;
    invoke-direct {p0, v2, p1, v1}, Lcom/htc/ipl/common;->CalcPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, result:Ljava/lang/String;
    const-string v3, "HtcIPL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CalcServerPassword:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return-object v0
.end method

.method public static getInstance()Lcom/htc/ipl/common;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/htc/ipl/common;->me:Lcom/htc/ipl/common;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/htc/ipl/common;

    invoke-direct {v0}, Lcom/htc/ipl/common;-><init>()V

    sput-object v0, Lcom/htc/ipl/common;->me:Lcom/htc/ipl/common;

    .line 26
    :cond_0
    sget-object v0, Lcom/htc/ipl/common;->me:Lcom/htc/ipl/common;

    return-object v0
.end method


# virtual methods
.method public AccessToggle(IZ)V
    .locals 5
    .parameter "nType"
    .parameter "bRW"

    .prologue
    const/4 v2, 0x1

    .line 263
    const-string v1, "HtcIPL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toggle: nType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 265
    .local v0, msgToHtc:Landroid/os/Message;
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :goto_0
    iput v1, v0, Landroid/os/Message;->what:I

    .line 267
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 268
    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 273
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->handleMessage(Landroid/os/Message;)V

    .line 275
    return-void

    :cond_0
    move v1, v2

    .line 265
    goto :goto_0

    .line 268
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 162
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarDomVoiceRoamingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 166
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BarDomVoiceRoamingForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CPNotify(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .parameter "field"
    .parameter "value"
    .parameter "alreadyHandled"

    .prologue
    .line 160
    return-void
.end method

.method public CalcClnPWD()Ljava/lang/String;
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevInfo/DevID"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/ipl/common;->CalcClientPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public CalcSvrPWD()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevInfo/DevID"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/ipl/common;->CalcServerPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ClientName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevInfo/DevID"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DevId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    const-string v0, "MEID:"

    .line 63
    .local v0, IDTag:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v3, "./DevInfo/DevID"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public DevType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevDetail/DevTyp"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 214
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomDataGuardEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 218
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomDataGuardForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 222
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomDataRoamingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 226
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomDataRoamingForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 230
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomVoiceGuardEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 234
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomVoiceGuardForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 238
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomVoiceRoamingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 242
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DomVoiceRoamingForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public FwV()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "/DevDetail/FwV"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetBrowserValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "NodeUri"

    .prologue
    .line 147
    const-string v0, "./Con/Browser/Homepage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "http://vision.sprintpcs.com"

    .line 156
    :goto_0
    return-object v0

    .line 150
    :cond_0
    const-string v0, "./Con/Browser/PriProxyIP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    const-string v0, "68.28.31.1"

    goto :goto_0

    .line 153
    :cond_1
    const-string v0, "./Con/Browser/PriProxyPort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    const-string v0, "80"

    goto :goto_0

    .line 156
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetMediaStreamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "NodeUri"

    .prologue
    .line 125
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetMediaStreamValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, "./Con/MediaStream/HTTPPDProxyAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_Media_HttpProxyHost()Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 128
    :cond_0
    const-string v0, "./Con/MediaStream/HTTPPDProxyPort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_Media_HttpProxyPort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 130
    :cond_1
    const-string v0, "./Con/MediaStream/RTSPProxyAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_Media_RtspProxyHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 132
    :cond_2
    const-string v0, "./Con/MediaStream/RTSPProxyPort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_Media_RtspProxyPort()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public HwV()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevDetail/HwV"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 170
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDataGuardEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 174
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDataGuardForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 178
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDataRoamingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 182
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDataRoamingForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlDialingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 186
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDialingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDialingEnabled(Ljava/lang/String;)V

    .line 189
    :cond_0
    const-string v0, "N"

    return-object v0
.end method

.method public IntlDialingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 192
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlDialingForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz p1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlDialingForced(Ljava/lang/String;)V

    .line 195
    :cond_0
    const-string v0, "N"

    return-object v0
.end method

.method public IntlVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 198
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlVoiceGuardEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 202
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlVoiceGuardForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 206
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlVoiceRoamingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bFlag"
    .parameter "szData"

    .prologue
    .line 210
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntlVoiceRoamingForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/htc/ipl/common;->mRoGdCtrl:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-virtual {v0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->IntlVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Lang()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevInfo/Lang"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Man()Ljava/lang/String;
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevInfo/Man"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Mod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevInfo/Mod"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public OEM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "/DevDetail/OEM"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "sprint"

    return-object v0
.end method

.method public SetBrowserValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "NodeUri"
    .parameter "Data"

    .prologue
    .line 143
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetBrowserValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method

.method public SetMediaStreamValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "NodeUri"
    .parameter "Data"

    .prologue
    .line 111
    const-string v0, "HtcIPL"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetMediaStreamValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const-string v0, "./Con/MediaStream/HTTPPDProxyAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_Media_HttpProxyHost(Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v0, "./Con/MediaStream/HTTPPDProxyPort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_Media_HttpProxyPort(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    const-string v0, "./Con/MediaStream/RTSPProxyAddress"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_Media_RtspProxyHost(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_3
    const-string v0, "./Con/MediaStream/RTSPProxyPort"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-virtual {v0, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_Media_RtspProxyPort(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public SwV()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v1, "./DevDetail/SwV"

    invoke-virtual {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public UserAgentName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTC/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/ipl/common;->Mod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MEID/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/ipl/common;->mCfgMgr:Lcom/htc/omadm/libdo/config/ConfigManager;

    const-string v3, "./DevInfo/DevID"

    invoke-virtual {v2, v3}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RedBend/DM1.2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, UAData:Ljava/lang/String;
    const-string v1, "HtcIPL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User-Agent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-object v0
.end method

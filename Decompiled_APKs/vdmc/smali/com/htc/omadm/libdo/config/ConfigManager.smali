.class public Lcom/htc/omadm/libdo/config/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static final DEFAULT_MEID:Ljava/lang/String; = "10000000000001"

.field public static final DSA_SERVER_URL_ID:I = 0x192

.field protected static final LOG_TAG:Ljava/lang/String; = "ConfigManager"

.field private static MEID:Ljava/lang/String; = null

.field public static final PROP_MEDIA_HttpProxyHost:Ljava/lang/String; = "streamplayer_httpproxyip_HTC"

.field public static final PROP_MEDIA_HttpProxyPort:Ljava/lang/String; = "streamplayer_httpproxyport_HTC"

.field public static final PROP_MEDIA_RtspProxyHost:Ljava/lang/String; = "streamplayer_rtspproxyip_HTC"

.field public static final PROP_MEDIA_RtspProxyPort:Ljava/lang/String; = "streamplayer_rtspproxyport_HTC"

.field protected static final URI_CDMA_NAM:Ljava/lang/String; = "./CDMA/NAM/CdmaNam"

.field protected static final URI_DEVID:Ljava/lang/String; = "./DevInfo/DevID"

.field protected static final URI_MDN:Ljava/lang/String; = "./CDMA/NAM/MobDirNum"

.field public static final URI_MEDIA_HttpProxyHost:Ljava/lang/String; = "./Con/MediaStream/HTTPPDProxyAddress"

.field public static final URI_MEDIA_HttpProxyPort:Ljava/lang/String; = "./Con/MediaStream/HTTPPDProxyPort"

.field public static final URI_MEDIA_RtspProxyHost:Ljava/lang/String; = "./Con/MediaStream/RTSPProxyAddress"

.field public static final URI_MEDIA_RtspProxyPort:Ljava/lang/String; = "./Con/MediaStream/RTSPProxyPort"

.field protected static final URI_PRL:Ljava/lang/String; = "./CDMA/PRL/PrefRoamList"

.field private static mCOMMIT_CONFIG_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCOMMIT_WIMAX_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/htc/omadm/libdo/config/ConfigManager;

.field private static mResolver:Landroid/content/ContentResolver;

.field private static mSprintCM:Lcom/sprint/internal/ConnectionManager;


# instance fields
.field private accolc:Ljava/lang/String;

.field private local_control:Ljava/lang/String;

.field private m_11_12:Ljava/lang/String;

.field private m_addr_num:Ljava/lang/String;

.field private m_class:Ljava/lang/String;

.field private mcc:Ljava/lang/String;

.field private min1_0:Ljava/lang/String;

.field private min1_1:Ljava/lang/String;

.field private min1_2:Ljava/lang/String;

.field private min2:Ljava/lang/String;

.field private mob_home:Ljava/lang/String;

.field private mob_nid:Ljava/lang/String;

.field private mob_sid:Ljava/lang/String;

.field private n_sid_nid:Ljava/lang/String;

.field private nid:Ljava/lang/String;

.field private reserved:Ljava/lang/String;

.field private sid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_CONFIG_MAP:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_WIMAX_MAP:Ljava/util/Map;

    .line 69
    const-string v0, "10000000000001"

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->m_class:Ljava/lang/String;

    .line 52
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->m_addr_num:Ljava/lang/String;

    .line 53
    const-string v0, "000"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->mcc:Ljava/lang/String;

    .line 54
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->m_11_12:Ljava/lang/String;

    .line 55
    const-string v0, "000"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min2:Ljava/lang/String;

    .line 56
    const-string v0, "000"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_0:Ljava/lang/String;

    .line 57
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_1:Ljava/lang/String;

    .line 58
    const-string v0, "000"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_2:Ljava/lang/String;

    .line 59
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->accolc:Ljava/lang/String;

    .line 60
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->local_control:Ljava/lang/String;

    .line 61
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->mob_home:Ljava/lang/String;

    .line 62
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->mob_sid:Ljava/lang/String;

    .line 63
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->mob_nid:Ljava/lang/String;

    .line 64
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->n_sid_nid:Ljava/lang/String;

    .line 65
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->sid:Ljava/lang/String;

    .line 66
    const-string v0, "0"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->nid:Ljava/lang/String;

    .line 67
    const-string v0, "00"

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->reserved:Ljava/lang/String;

    .line 72
    sput-object p1, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/sprint/internal/ConnectionManager;

    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mSprintCM:Lcom/sprint/internal/ConnectionManager;

    .line 74
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    .line 75
    return-void
.end method

.method public static CLEAR_COMMIT_MAP()V
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 148
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_WIMAX_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 149
    return-void
.end method

.method public static COMMIT_ALL_Set_ConValue()V
    .locals 7

    .prologue
    .line 125
    sget-object v4, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 126
    .local v1, set:Ljava/util/Set;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 127
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    .local v2, uri:Ljava/lang/String;
    sget-object v4, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, val:Ljava/lang/String;
    const-string v4, "ConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "COMMIT_ALL_Set_ConValue:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v2, v3}, Lcom/htc/omadm/libdo/config/Native;->Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 134
    .end local v2           #uri:Ljava/lang/String;
    .end local v3           #val:Ljava/lang/String;
    :cond_0
    sget-object v4, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_WIMAX_MAP:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 135
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 138
    .restart local v2       #uri:Ljava/lang/String;
    sget-object v4, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_WIMAX_MAP:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 139
    .restart local v3       #val:Ljava/lang/String;
    const-string v4, "ConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "COMMIT_ALL_Set_ConValue:["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {v2, v3}, Lcom/htc/omadm/libdo/config/Native;->Set_WimaxValue(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 143
    .end local v2           #uri:Ljava/lang/String;
    .end local v3           #val:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    new-instance v0, Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/config/ConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mInstance:Lcom/htc/omadm/libdo/config/ConfigManager;

    .line 79
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    const-string v1, "10000000000001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->getSingleton()Lcom/htc/omadm/libdo/system/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Device_ID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    .line 82
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "INIT MEID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    return-void
.end method

.method private assignedFieldsResult([Ljava/lang/String;)V
    .locals 1
    .parameter "rslt"

    .prologue
    .line 296
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->m_class:Ljava/lang/String;

    .line 297
    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->m_addr_num:Ljava/lang/String;

    .line 298
    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->mcc:Ljava/lang/String;

    .line 299
    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->m_11_12:Ljava/lang/String;

    .line 300
    const/4 v0, 0x4

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min2:Ljava/lang/String;

    .line 301
    const/4 v0, 0x5

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_0:Ljava/lang/String;

    .line 302
    const/4 v0, 0x6

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_1:Ljava/lang/String;

    .line 303
    const/4 v0, 0x7

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_2:Ljava/lang/String;

    .line 304
    const/16 v0, 0x8

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->accolc:Ljava/lang/String;

    .line 305
    const/16 v0, 0x9

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->local_control:Ljava/lang/String;

    .line 306
    const/16 v0, 0xa

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->mob_home:Ljava/lang/String;

    .line 307
    const/16 v0, 0xb

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->mob_sid:Ljava/lang/String;

    .line 308
    const/16 v0, 0xc

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->mob_nid:Ljava/lang/String;

    .line 309
    const/16 v0, 0xd

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->n_sid_nid:Ljava/lang/String;

    .line 310
    const/16 v0, 0xe

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->sid:Ljava/lang/String;

    .line 311
    const/16 v0, 0xf

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->nid:Ljava/lang/String;

    .line 312
    const/16 v0, 0x10

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->reserved:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mInstance:Lcom/htc/omadm/libdo/config/ConfigManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/htc/omadm/libdo/config/ConfigManager;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mInstance:Lcom/htc/omadm/libdo/config/ConfigManager;

    .line 89
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mInstance:Lcom/htc/omadm/libdo/config/ConfigManager;

    return-object v0
.end method

.method private handleB64SetCDMA_NAM(Ljava/lang/String;)I
    .locals 6
    .parameter "j_val"

    .prologue
    .line 285
    const/4 v3, 0x1

    invoke-static {p1, v3}, Lcom/htc/omadm/util/Utility;->hexStringToByte(Ljava/lang/String;Z)[B

    move-result-object v0

    .line 286
    .local v0, bytes:[B
    invoke-static {v0}, Lcom/htc/omadm/libdo/config/ConfigCoder;->decodeDMString([B)[Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, rslt:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/config/ConfigManager;->assignedFieldsResult([Ljava/lang/String;)V

    .line 288
    const-string v3, "ConfigManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plain CDMA NAM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_0:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_1:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_2:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_0:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/omadm/libdo/config/ConfigManager;->min1_2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, value:Ljava/lang/String;
    sget-object v3, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_CONFIG_MAP:Ljava/util/Map;

    const-string v4, "./CDMA/NAM/CdmaNam"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    return v3
.end method

.method private handleB64SetMDN(Ljava/lang/String;)I
    .locals 4
    .parameter "j_val"

    .prologue
    .line 276
    invoke-static {p1}, Lcom/htc/omadm/libdo/config/ConfigCoder;->reverseByteForSetMDN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, newMDN:Ljava/lang/String;
    const-string v1, "ConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plain MDN:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_CONFIG_MAP:Ljava/util/Map;

    const-string v2, "./CDMA/NAM/MobDirNum"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    return v1
.end method

.method private handleB64SetPRL(Ljava/lang/String;)I
    .locals 3
    .parameter "j_val"

    .prologue
    .line 270
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_CONFIG_MAP:Ljava/util/Map;

    const-string v1, "./CDMA/PRL/PrefRoamList"

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method


# virtual methods
.method public Get_ConValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"

    .prologue
    .line 93
    const-string v0, "./DevInfo/DevID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    const-string v1, "10000000000001"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 97
    :cond_0
    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->getSingleton()Lcom/htc/omadm/libdo/system/PhoneInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/omadm/libdo/system/PhoneInfo;->Device_ID()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    .line 99
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reINIT MEID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->MEID:Ljava/lang/String;

    .line 105
    :goto_0
    return-object v0

    :cond_2
    invoke-static {p1}, Lcom/htc/omadm/libdo/config/Native;->Get_ConValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public Get_DSAProxyHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/sprint/internal/ConnectionManager;

    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, sprintCM:Lcom/sprint/internal/ConnectionManager;
    invoke-virtual {v0}, Lcom/sprint/internal/ConnectionManager;->getProxy()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_DSAProxyPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Lcom/sprint/internal/ConnectionManager;

    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 187
    .local v0, sprintCM:Lcom/sprint/internal/ConnectionManager;
    invoke-virtual {v0}, Lcom/sprint/internal/ConnectionManager;->getPort()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Get_DSAURL()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    :try_start_0
    new-instance v1, Lcom/sprint/internal/SystemProperties;

    sget-object v2, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, sprintSP:Lcom/sprint/internal/SystemProperties;
    const/16 v2, 0x192

    invoke-virtual {v1, v2}, Lcom/sprint/internal/SystemProperties;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 177
    .end local v1           #sprintSP:Lcom/sprint/internal/SystemProperties;
    :goto_0
    return-object v2

    .line 175
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public Get_Media_HttpProxyHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "streamplayer_httpproxyip_HTC"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_Media_HttpProxyPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 227
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "streamplayer_httpproxyport_HTC"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_Media_RtspProxyHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 230
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "streamplayer_rtspproxyip_HTC"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_Media_RtspProxyPort()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "streamplayer_rtspproxyport_HTC"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Get_WimaxValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 238
    const-string v1, "ConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+Get_WimaxValue:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {p1}, Lcom/htc/omadm/libdo/config/Native;->Get_WimaxValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, value:Ljava/lang/String;
    const-string v1, "ConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-Get_WimaxValue:["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v0
.end method

.method public Set_BrowserHomePage(Ljava/lang/String;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 193
    return-void
.end method

.method public Set_BrowserProxyIP(Ljava/lang/String;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 196
    return-void
.end method

.method public Set_BrowserProxyPort(Ljava/lang/String;)V
    .locals 0
    .parameter "port"

    .prologue
    .line 199
    return-void
.end method

.method public Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "val"

    .prologue
    .line 108
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set_ConValue:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const-string v0, "./CDMA/NAM/MobDirNum"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->handleB64SetMDN(Ljava/lang/String;)I

    move-result v0

    .line 120
    :goto_0
    return v0

    .line 111
    :cond_0
    const-string v0, "./CDMA/NAM/CdmaNam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->handleB64SetCDMA_NAM(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 113
    :cond_1
    const-string v0, "./CDMA/PRL/PrefRoamList"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/config/ConfigManager;->handleB64SetPRL(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 119
    :cond_2
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_CONFIG_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public Set_DSAProxyHost(Ljava/lang/String;)V
    .locals 2
    .parameter "host"

    .prologue
    .line 162
    new-instance v0, Lcom/sprint/internal/ConnectionManager;

    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, sprintCM:Lcom/sprint/internal/ConnectionManager;
    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mSprintCM:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual {v1}, Lcom/sprint/internal/ConnectionManager;->getPort()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sprint/internal/ConnectionManager;->setDSAProxy(Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method public Set_DSAProxyPort(Ljava/lang/String;)V
    .locals 3
    .parameter "port"

    .prologue
    .line 167
    new-instance v0, Lcom/sprint/internal/ConnectionManager;

    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/ConnectionManager;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, sprintCM:Lcom/sprint/internal/ConnectionManager;
    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mSprintCM:Lcom/sprint/internal/ConnectionManager;

    invoke-virtual {v1}, Lcom/sprint/internal/ConnectionManager;->getProxy()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sprint/internal/ConnectionManager;->setDSAProxy(Ljava/lang/String;I)V

    .line 169
    return-void
.end method

.method public Set_DSAURL(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 155
    :try_start_0
    new-instance v0, Lcom/sprint/internal/SystemProperties;

    sget-object v1, Lcom/htc/omadm/libdo/config/ConfigManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sprint/internal/SystemProperties;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, sprintSP:Lcom/sprint/internal/SystemProperties;
    const/16 v1, 0x192

    invoke-virtual {v0, v1, p1}, Lcom/sprint/internal/SystemProperties;->setString(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0           #sprintSP:Lcom/sprint/internal/SystemProperties;
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public Set_Media_HttpProxyHost(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 203
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set_Media_HttpProxyHost:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "streamplayer_httpproxyip_HTC"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 205
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_Media_HttpProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void
.end method

.method public Set_Media_HttpProxyPort(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 209
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set_Media_HttpProxyPort:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "streamplayer_httpproxyport_HTC"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_Media_HttpProxyPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method public Set_Media_RtspProxyHost(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 214
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set_Media_RtspProxyHost:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "streamplayer_rtspproxyip_HTC"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 216
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_Media_RtspProxyHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void
.end method

.method public Set_Media_RtspProxyPort(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 219
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set_Media_RtspProxyPort:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "streamplayer_rtspproxyport_HTC"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 221
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_Media_RtspProxyPort()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void
.end method

.method public Set_WimaxValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "uri"
    .parameter "val"

    .prologue
    .line 244
    const-string v0, "ConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set_WimaxValue:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    sget-object v0, Lcom/htc/omadm/libdo/config/ConfigManager;->mCOMMIT_WIMAX_MAP:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

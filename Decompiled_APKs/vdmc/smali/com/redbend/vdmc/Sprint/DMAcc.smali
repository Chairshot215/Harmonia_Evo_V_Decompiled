.class public Lcom/redbend/vdmc/Sprint/DMAcc;
.super Ljava/lang/Object;
.source "DMAcc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;,
        Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;
    }
.end annotation


# static fields
.field public static final AppID:Ljava/lang/String; = "./DMAcc/AppID"

.field public static final AuthPref:Ljava/lang/String; = "./DMAcc/AAuthPref"

.field public static final ClnAthData:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/clientAuth/AAuthData"

.field public static final ClnAthLevel:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/clientAuth/AAuthLevel"

.field public static final ClnAthName:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/clientAuth/AAuthName"

.field public static final ClnAthSecret:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/clientAuth/AAuthSecret"

.field public static final ClnAthType:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/clientAuth/AAuthType"

.field public static final ConRef:Ljava/lang/String; = "./DMAcc/ToConRef/SrvAddr/ConRef"

.field private static DMAccRWCB:Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB; = null

.field private static final LOG_TAG:Ljava/lang/String; = "DMAcc"

.field public static final Name:Ljava/lang/String; = "./DMAcc/sprint/Name"

.field public static final PrefConRef:Ljava/lang/String; = "./DMAcc/PrefConRef"

.field public static final ServerID:Ljava/lang/String; = "./DMAcc/ServerID"

.field public static final SrvAdrAdr:Ljava/lang/String; = "./DMAcc/sprint/AppAddr/SrvAddr/Addr"

.field public static final SrvAdrPort:Ljava/lang/String; = "./DMAcc/sprint/AppAddr/SrvAddr/Port/Port/PortNbr"

.field public static final SrvAdrType:Ljava/lang/String; = "./DMAcc/sprint/AppAddr/SrvAddr/AddrType"

.field public static final SrvAthData:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/serverAuth/AAuthData"

.field public static final SrvAthLevel:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/serverAuth/AAuthLevel"

.field public static final SrvAthName:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/serverAuth/AAuthName"

.field public static final SrvAthSecret:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/serverAuth/AAuthSecret"

.field public static final SrvAthType:Ljava/lang/String; = "./DMAcc/sprint/AppAuth/serverAuth/AAuthType"

.field private static mVdmTree:Lcom/redbend/vdm/VdmTree; = null

.field private static me:Lcom/redbend/vdmc/Sprint/DMAcc; = null

.field public static final testnodegr:Ljava/lang/String; = "./DMAcc/TMO/AppAuth/CLIENT/AAuthName"


# instance fields
.field private DefaultInt:I

.field private DefaultString:Ljava/lang/String;

.field private KEY_SERVER_PROXY:Ljava/lang/String;

.field private KEY_SERVER_PROXYPORT:Ljava/lang/String;

.field private ServerProxyPort_Lab:I

.field private ServerProxyPort_Production:I

.field private ServerProxy_Lab:Ljava/lang/String;

.field private ServerProxy_Production:Ljava/lang/String;

.field private hAppID:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hAuthPref:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hClnAthData:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hClnAthLevel:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hClnAthName:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hClnAthSecret:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hClnAthType:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hConRef:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hName:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hPrefConRef:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hServerID:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hSrvAdrAdr:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hSrvAdrPort:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hSrvAdrType:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hSrvAthData:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hSrvAthLevel:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hSrvAthName:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hSrvAthSecret:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private hSrvAthType:Lcom/redbend/vdmc/Sprint/DMAcc$TreeHandler;

.field private mCommonIPL:Lcom/htc/ipl/common;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/redbend/vdmc/Sprint/DMAcc;->me:Lcom/redbend/vdmc/Sprint/DMAcc;

    .line 56
    sput-object v0, Lcom/redbend/vdmc/Sprint/DMAcc;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x50

    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 290
    const-string v0, "none"

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->DefaultString:Ljava/lang/String;

    .line 291
    const/4 v0, 0x0

    iput v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->DefaultInt:I

    .line 292
    const-string v0, "ServerProxy"

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->KEY_SERVER_PROXY:Ljava/lang/String;

    .line 293
    const-string v0, "ServerProxyPort"

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->KEY_SERVER_PROXYPORT:Ljava/lang/String;

    .line 294
    const-string v0, "http://63.168.225.44"

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerProxy_Lab:Ljava/lang/String;

    .line 296
    iput v1, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerProxyPort_Lab:I

    .line 298
    const-string v0, "http://63.168.225.44"

    iput-object v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerProxy_Production:Ljava/lang/String;

    .line 300
    iput v1, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerProxyPort_Production:I

    .line 73
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private GetNodeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "node"

    .prologue
    .line 204
    const/4 v0, 0x0

    .line 206
    .local v0, NodeData:Ljava/lang/String;
    :try_start_0
    const-string v2, "DMAcc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetNodeValue node:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    sget-object v2, Lcom/redbend/vdmc/Sprint/DMAcc;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/VdmTree;->getStringValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 211
    :goto_0
    return-object v0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "DMAcc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get node:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private GetServerProxyAddr()Ljava/lang/String;
    .locals 5

    .prologue
    .line 304
    iget-object v2, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 305
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->KEY_SERVER_PROXY:Ljava/lang/String;

    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->DefaultString:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, ServerProxy:Ljava/lang/String;
    iget-object v2, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->DefaultString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->KEY_SERVER_PROXY:Ljava/lang/String;

    iget-object v4, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerProxy_Production:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerProxy_Production:Ljava/lang/String;

    .line 310
    :cond_0
    return-object v0
.end method

.method private GetServerProxyPort()I
    .locals 5

    .prologue
    .line 318
    iget-object v2, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 319
    .local v1, sp:Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->KEY_SERVER_PROXYPORT:Ljava/lang/String;

    iget v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->DefaultInt:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 320
    .local v0, ServerProxyPort:I
    iget v2, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->DefaultInt:I

    if-ne v0, v2, :cond_0

    .line 321
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->KEY_SERVER_PROXYPORT:Ljava/lang/String;

    iget v4, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerProxyPort_Production:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    iget v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->ServerProxyPort_Production:I

    .line 324
    :cond_0
    return v0
.end method

.method private ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "node"
    .parameter "value"

    .prologue
    .line 216
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/DMAcc;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1, p1, p2}, Lcom/redbend/vdm/VdmTree;->replaceStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "DMAcc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to replace node:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private SetServerProxyAddr(Ljava/lang/String;)V
    .locals 3
    .parameter "szValue"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 314
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->KEY_SERVER_PROXY:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 315
    return-void
.end method

.method private SetServerProxyPort(I)V
    .locals 3
    .parameter "nValue"

    .prologue
    .line 327
    iget-object v1, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 328
    .local v0, sp:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->KEY_SERVER_PROXYPORT:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    return-void
.end method

.method private SrvAthData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "1234"

    return-object v0
.end method

.method private SyncNodeValue()V
    .locals 3

    .prologue
    .line 223
    :try_start_0
    sget-object v1, Lcom/redbend/vdmc/Sprint/DMAcc;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmTree;->writeToPersistentStorage()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v1, "DMAcc"

    const-string v2, "Failed to sync node:"

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private Test()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/redbend/vdmc/Sprint/DMAcc;)Lcom/htc/ipl/common;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->mCommonIPL:Lcom/htc/ipl/common;

    return-object v0
.end method

.method static synthetic access$002(Lcom/redbend/vdmc/Sprint/DMAcc;Lcom/htc/ipl/common;)Lcom/htc/ipl/common;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-object p1, p0, Lcom/redbend/vdmc/Sprint/DMAcc;->mCommonIPL:Lcom/htc/ipl/common;

    return-object p1
.end method

.method public static getInstance()Lcom/redbend/vdmc/Sprint/DMAcc;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/redbend/vdmc/Sprint/DMAcc;->me:Lcom/redbend/vdmc/Sprint/DMAcc;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/redbend/vdmc/Sprint/DMAcc;
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    sget-object v0, Lcom/redbend/vdmc/Sprint/DMAcc;->me:Lcom/redbend/vdmc/Sprint/DMAcc;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/redbend/vdmc/Sprint/DMAcc;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/DMAcc;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/DMAcc;->me:Lcom/redbend/vdmc/Sprint/DMAcc;

    .line 69
    :cond_0
    sget-object v0, Lcom/redbend/vdmc/Sprint/DMAcc;->me:Lcom/redbend/vdmc/Sprint/DMAcc;

    return-object v0
.end method


# virtual methods
.method public ClientName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 155
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 156
    const-string v0, "./DMAcc/sprint/AppAuth/clientAuth/AAuthName"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 160
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAuth/clientAuth/AAuthName"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ClientNonce(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 170
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 171
    const-string v0, "./DMAcc/sprint/AppAuth/clientAuth/AAuthSecret"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 174
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAuth/clientAuth/AAuthSecret"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ClientPassword(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 163
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 164
    const-string v0, "./DMAcc/sprint/AppAuth/clientAuth/AAuthData"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 167
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAuth/clientAuth/AAuthData"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Name(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 195
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 196
    const-string v0, "./DMAcc/sprint/Name"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 199
    :cond_0
    const-string v0, "./DMAcc/sprint/Name"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ProxyAddr(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "szValue"

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-direct {p0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->SetServerProxyAddr(Ljava/lang/String;)V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetServerProxyAddr()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, szProxyAddr:Ljava/lang/String;
    return-object v0
.end method

.method public ProxyPort(ZLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "bRW"
    .parameter "szValue"

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/redbend/vdmc/Sprint/DMAcc;->SetServerProxyPort(I)V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetServerProxyPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 190
    .local v0, nProxyPort:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public Register(Lcom/redbend/vdm/VdmTree;)V
    .locals 1
    .parameter "tree"

    .prologue
    .line 76
    sput-object p1, Lcom/redbend/vdmc/Sprint/DMAcc;->mVdmTree:Lcom/redbend/vdm/VdmTree;

    .line 77
    new-instance v0, Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;

    invoke-direct {v0, p0}, Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;-><init>(Lcom/redbend/vdmc/Sprint/DMAcc;)V

    sput-object v0, Lcom/redbend/vdmc/Sprint/DMAcc;->DMAccRWCB:Lcom/redbend/vdmc/Sprint/DMAcc$NodeRWCB;

    .line 97
    return-void
.end method

.method public ServerAddr(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 109
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 110
    const-string v0, "./DMAcc/sprint/AppAddr/SrvAddr/Addr"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 113
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAddr/SrvAddr/Addr"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ServerAddrType(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 132
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 133
    const-string v0, "./DMAcc/sprint/AppAddr/SrvAddr/AddrType"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 136
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAddr/SrvAddr/AddrType"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ServerName(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 123
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 124
    const-string v0, "./DMAcc/sprint/AppAuth/serverAuth/AAuthName"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 127
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAuth/serverAuth/AAuthName"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ServerNonce(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 148
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 149
    const-string v0, "./DMAcc/sprint/AppAuth/serverAuth/AAuthSecret"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 152
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAuth/serverAuth/AAuthSecret"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ServerPassword(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 141
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 142
    const-string v0, "./DMAcc/sprint/AppAuth/serverAuth/AAuthData"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 145
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAuth/serverAuth/AAuthData"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ServerPort(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 116
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 117
    const-string v0, "./DMAcc/sprint/AppAddr/SrvAddr/Port/Port/PortNbr"

    invoke-direct {p0, v0, p2}, Lcom/redbend/vdmc/Sprint/DMAcc;->ReplaceNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Lcom/redbend/vdmc/Sprint/DMAcc;->SyncNodeValue()V

    .line 120
    :cond_0
    const-string v0, "./DMAcc/sprint/AppAddr/SrvAddr/Port/Port/PortNbr"

    invoke-direct {p0, v0}, Lcom/redbend/vdmc/Sprint/DMAcc;->GetNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

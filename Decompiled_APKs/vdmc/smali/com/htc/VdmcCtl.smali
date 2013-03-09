.class public Lcom/htc/VdmcCtl;
.super Ljava/lang/Object;
.source "VdmcCtl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VdmcCtl"

.field private static final ServerURL_LabBF:Ljava/lang/String; = "https://omabf.stic.sprintspectrum.com/oma"

.field private static final ServerURL_LabDev:Ljava/lang/String; = "https://omadev.stic.sprintspectrum.com/oma"

.field private static final ServerURL_LabORT:Ljava/lang/String; = "https://omartb.stic.sprintspectrum.com/oma"

.field private static final ServerURL_LabTest:Ljava/lang/String; = "https://omatest.stic.sprintspectrum.com/oma"

.field private static final ServerURL_Production:Ljava/lang/String; = "https://oma.spcsdns.net/oma"

.field private static bInit:Z

.field private static mContext:Landroid/content/Context;

.field private static mVdmc:Lcom/redbend/vdmc/Vdmc;

.field private static me:Lcom/htc/VdmcCtl;


# instance fields
.field private mCommonIPL:Lcom/htc/ipl/common;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/VdmcCtl;->me:Lcom/htc/VdmcCtl;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sput-object p1, Lcom/htc/VdmcCtl;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getInstance()Lcom/redbend/vdmc/Vdmc;

    move-result-object v0

    sput-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    sget-object v0, Lcom/htc/VdmcCtl;->me:Lcom/htc/VdmcCtl;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/htc/VdmcCtl;

    invoke-direct {v0, p0}, Lcom/htc/VdmcCtl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/VdmcCtl;->me:Lcom/htc/VdmcCtl;

    .line 26
    :cond_0
    sget-object v0, Lcom/htc/VdmcCtl;->me:Lcom/htc/VdmcCtl;

    return-object v0
.end method


# virtual methods
.method public CancelDM_DC()Z
    .locals 1

    .prologue
    .line 122
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v0}, Lcom/redbend/vdmc/Vdmc;->CancelDM()Z

    move-result v0

    .line 125
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CancelDM_HFA()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v0}, Lcom/redbend/vdmc/Vdmc;->CancelDM()Z

    move-result v0

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CancelDM_NIA()Z
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, nType:I
    sget-boolean v1, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v1, v0}, Lcom/redbend/vdmc/Vdmc;->CancelDM(I)Z

    move-result v1

    .line 66
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public CancelDM_PRL()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v0}, Lcom/redbend/vdmc/Vdmc;->CancelDM()Z

    move-result v0

    .line 132
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public CancelFumo()Z
    .locals 1

    .prologue
    .line 164
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 165
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbend/vdmc/HandleFumo;->CancelFumo()Z

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public GetDMAcc()V
    .locals 3

    .prologue
    .line 222
    sget-object v1, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getDMAccHandler()Lcom/redbend/vdmc/HandleDMAcc;

    move-result-object v0

    .line 223
    .local v0, hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;
    const-string v1, "VdmcCtl"

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-string v1, "VdmcCtl"

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "VdmcCtl"

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v1, "VdmcCtl"

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v1, "VdmcCtl"

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v1, "VdmcCtl"

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v1, "VdmcCtl"

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v1, "VdmcCtl"

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v1, "VdmcCtl"

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/HandleDMAcc;->GetValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void
.end method

.method public GetInitState()Z
    .locals 1

    .prologue
    .line 197
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    return v0
.end method

.method public HFA_NumRetries(ZI)I
    .locals 3
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 236
    const-string v0, "./CDMA/HFA/NumRetries"

    .line 237
    .local v0, NumRetries:Ljava/lang/String;
    sget-object v2, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getNodeAccess()Lcom/redbend/vdmc/NodeAccess;

    move-result-object v1

    .line 238
    .local v1, hNodeAccess:Lcom/redbend/vdmc/NodeAccess;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 239
    invoke-virtual {v1, v0, p2}, Lcom/redbend/vdmc/NodeAccess;->ReplaceNodeIntValue(Ljava/lang/String;I)V

    .line 240
    invoke-virtual {v1}, Lcom/redbend/vdmc/NodeAccess;->SyncNodeValue()V

    .line 242
    :cond_0
    invoke-virtual {v1, v0}, Lcom/redbend/vdmc/NodeAccess;->GetNodeIntValue(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public HFA_RetryInterval(ZI)I
    .locals 3
    .parameter "bRW"
    .parameter "value"

    .prologue
    .line 246
    const-string v0, "./CDMA/HFA/RetryInterval"

    .line 247
    .local v0, RetryInterval:Ljava/lang/String;
    sget-object v2, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getNodeAccess()Lcom/redbend/vdmc/NodeAccess;

    move-result-object v1

    .line 248
    .local v1, hNodeAccess:Lcom/redbend/vdmc/NodeAccess;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 249
    invoke-virtual {v1, v0, p2}, Lcom/redbend/vdmc/NodeAccess;->ReplaceNodeIntValue(Ljava/lang/String;I)V

    .line 250
    invoke-virtual {v1}, Lcom/redbend/vdmc/NodeAccess;->SyncNodeValue()V

    .line 252
    :cond_0
    invoke-virtual {v1, v0}, Lcom/redbend/vdmc/NodeAccess;->GetNodeIntValue(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public Init()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 40
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-ne v0, v2, :cond_0

    .line 41
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    .line 50
    :goto_0
    return v0

    .line 43
    :cond_0
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/Vdmc;->SetOperator(I)Z

    .line 44
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v0, v2}, Lcom/redbend/vdmc/Vdmc;->SetServer(I)Z

    .line 45
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    sget-object v1, Lcom/htc/VdmcCtl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Vdmc;->Init(Landroid/content/Context;)V

    .line 46
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v0}, Lcom/redbend/vdmc/Vdmc;->RegisterNode()Z

    .line 47
    invoke-virtual {p0}, Lcom/htc/VdmcCtl;->SetDMAcc()V

    .line 48
    sput-boolean v2, Lcom/htc/VdmcCtl;->bInit:Z

    .line 50
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    goto :goto_0
.end method

.method public Release()V
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v0}, Lcom/redbend/vdmc/Vdmc;->Release()V

    .line 202
    return-void
.end method

.method public ReportFumo(I)Z
    .locals 1
    .parameter "nResult"

    .prologue
    .line 193
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/redbend/vdmc/HandleFumo;->ReportFumo(I)Z

    move-result v0

    return v0
.end method

.method public ReportFumo(Z)Z
    .locals 2
    .parameter "bFlag"

    .prologue
    .line 182
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_1

    .line 183
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 184
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    sget-object v1, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportFumo(I)Z

    move-result v0

    .line 189
    :goto_0
    return v0

    .line 186
    :cond_0
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    sget-object v1, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportFumo(I)Z

    move-result v0

    goto :goto_0

    .line 189
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ResumeFumoDL()Z
    .locals 1

    .prologue
    .line 157
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbend/vdmc/HandleFumo;->ResumeFumoDL()Z

    move-result v0

    .line 160
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public SetDMAcc()V
    .locals 5

    .prologue
    .line 211
    sget-object v1, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getDMAccHandler()Lcom/redbend/vdmc/HandleDMAcc;

    move-result-object v0

    .line 212
    .local v0, hDMAcc:Lcom/redbend/vdmc/HandleDMAcc;
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/VdmcCtl;->mCommonIPL:Lcom/htc/ipl/common;

    .line 214
    const-string v1, "VdmcCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Client Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/htc/VdmcCtl;->mCommonIPL:Lcom/htc/ipl/common;

    invoke-virtual {v4}, Lcom/htc/ipl/common;->ClientName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v1, "VdmcCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Client Secret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/htc/VdmcCtl;->mCommonIPL:Lcom/htc/ipl/common;

    invoke-virtual {v4}, Lcom/htc/ipl/common;->CalcClnPWD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v1, "VdmcCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Server Name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/htc/VdmcCtl;->mCommonIPL:Lcom/htc/ipl/common;

    invoke-virtual {v4}, Lcom/htc/ipl/common;->ServerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v1, "VdmcCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set Server Secret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/htc/VdmcCtl;->mCommonIPL:Lcom/htc/ipl/common;

    invoke-virtual {v4}, Lcom/htc/ipl/common;->CalcSvrPWD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/redbend/vdmc/HandleDMAcc;->SetValue(ILjava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public StartDM_DC()Z
    .locals 2

    .prologue
    .line 77
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Vdmc;->StartDM(I)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartDM_DC(Z)Z
    .locals 2
    .parameter "bDevice"

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, nAlert:I
    if-eqz p1, :cond_0

    .line 86
    const/16 v0, 0xc

    .line 89
    :goto_0
    sget-boolean v1, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v1, :cond_1

    .line 90
    sget-object v1, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v1, v0}, Lcom/redbend/vdmc/Vdmc;->StartDM(I)Z

    move-result v1

    .line 92
    :goto_1
    return v1

    .line 88
    :cond_0
    const/16 v0, 0x16

    goto :goto_0

    .line 92
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public StartDM_HFA()Z
    .locals 2

    .prologue
    .line 70
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Vdmc;->StartDM(I)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartDM_PRL()Z
    .locals 2

    .prologue
    .line 96
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/redbend/vdmc/Vdmc;->StartDM(I)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartDM_PRL(Z)Z
    .locals 2
    .parameter "bDevice"

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, nAlert:I
    if-eqz p1, :cond_0

    .line 105
    const/16 v0, 0xd

    .line 108
    :goto_0
    sget-boolean v1, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v1, :cond_1

    .line 109
    sget-object v1, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v1, v0}, Lcom/redbend/vdmc/Vdmc;->StartDM(I)Z

    move-result v1

    .line 111
    :goto_1
    return v1

    .line 107
    :cond_0
    const/16 v0, 0x17

    goto :goto_0

    .line 111
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public StartFumo()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbend/vdmc/HandleFumo;->StartFumo()Z

    move-result v0

    .line 139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartFumo(Z)Z
    .locals 1
    .parameter "bDevice"

    .prologue
    .line 143
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/redbend/vdmc/HandleFumo;->StartFumo(Z)Z

    move-result v0

    .line 146
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartFumoDL()Z
    .locals 1

    .prologue
    .line 150
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getFumoHandler()Lcom/redbend/vdmc/HandleFumo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/redbend/vdmc/HandleFumo;->StartFumoDL()Z

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public TestHFA()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 256
    invoke-virtual {p0, v5, v5}, Lcom/htc/VdmcCtl;->HFA_NumRetries(ZI)I

    move-result v0

    .line 257
    .local v0, nHFANumRetries:I
    const-string v2, "VdmcCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get HFA NumRetries Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v2, "VdmcCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set HFA NumRetries Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6, v7}, Lcom/htc/VdmcCtl;->HFA_NumRetries(ZI)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v2, "VdmcCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set HFA NumRetries Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0, v5, v5}, Lcom/htc/VdmcCtl;->HFA_RetryInterval(ZI)I

    move-result v1

    .line 261
    .local v1, nHFARetryInterval:I
    const-string v2, "VdmcCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get HFA RetryInterval Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const-string v2, "VdmcCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set HFA RetryInterval Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v6, v7}, Lcom/htc/VdmcCtl;->HFA_RetryInterval(ZI)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v2, "VdmcCtl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set HFA RetryInterval Value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/VdmcCtl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public handleNiaMessage([B)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 54
    sget-boolean v0, Lcom/htc/VdmcCtl;->bInit:Z

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/htc/VdmcCtl;->mVdmc:Lcom/redbend/vdmc/Vdmc;

    invoke-virtual {v0, p1}, Lcom/redbend/vdmc/Vdmc;->handleNiaMessage([B)Z

    move-result v0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

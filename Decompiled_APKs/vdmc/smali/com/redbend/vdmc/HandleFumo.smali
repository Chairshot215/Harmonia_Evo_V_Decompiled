.class public Lcom/redbend/vdmc/HandleFumo;
.super Ljava/lang/Object;
.source "HandleFumo.java"

# interfaces
.implements Lcom/redbend/vdm/fumo/FumoHandler;
.implements Lcom/redbend/vdm/SessionStateObserver;


# static fields
.field public static final FUMO_TYPE_DEVICE:I = 0x2

.field public static final FUMO_TYPE_USER:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "HandleFumo"

.field public static final RC_DOWNLOAD_CANCELED:I = 0x2

.field public static final RC_FW_UP_CORRUPT:I = 0x5

.field public static final RC_OUT_OF_MEMORY_FOR_DOWNLOAD:I = 0x7

.field public static final RC_OUT_OF_MEMORY_FOR_UPDATE:I = 0x8

.field public static final RC_PACKAGE_MISMATCH:I = 0x6

.field public static final RC_SUCCESSFUL:I = 0x4

.field public static final RC_UPDATE_FAILED:I = 0x3

.field public static final RC_USER_CANCELED:I = 0x1

.field private static final TagID:I = 0x6


# instance fields
.field private _fumo:Lcom/redbend/vdm/fumo/VdmFumo;

.field private mCommonIPL:Lcom/htc/ipl/common;


# direct methods
.method public constructor <init>(Lcom/redbend/vdm/VdmEngine;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/redbend/vdm/fumo/VdmFumo;

    const-string v1, "./FwUpdate/Flash"

    invoke-direct {v0, v1, p0}, Lcom/redbend/vdm/fumo/VdmFumo;-><init>(Ljava/lang/String;Lcom/redbend/vdm/fumo/FumoHandler;)V

    iput-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    .line 33
    invoke-virtual {p1, p0}, Lcom/redbend/vdm/VdmEngine;->registerSessionStateObserver(Lcom/redbend/vdm/SessionStateObserver;)Z

    .line 34
    return-void
.end method


# virtual methods
.method public CancelFumo()Z
    .locals 5

    .prologue
    .line 78
    const/4 v0, 0x1

    .line 80
    .local v0, bFlag:Z
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v2

    iput-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    .line 81
    iget-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 84
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbend/vdm/VdmEngine;->cancelSession()V

    .line 85
    sget-object v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v2}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return v0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "HandleFumo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VdmEngine exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public InitFumo([BI)Z
    .locals 6
    .parameter "inMessage"
    .parameter "nType"

    .prologue
    .line 43
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumo$ClientType;->USER:Lcom/redbend/vdm/fumo/VdmFumo$ClientType;

    .line 45
    .local v1, clientType:Lcom/redbend/vdm/fumo/VdmFumo$ClientType;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_0

    .line 46
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumo$ClientType;->USER:Lcom/redbend/vdm/fumo/VdmFumo$ClientType;

    .line 48
    :cond_0
    const/4 v3, 0x2

    if-ne p2, v3, :cond_1

    .line 49
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumo$ClientType;->DEVICE:Lcom/redbend/vdm/fumo/VdmFumo$ClientType;

    .line 51
    :cond_1
    const/4 v0, 0x1

    .line 53
    .local v0, bFlag:Z
    :try_start_0
    iget-object v3, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-virtual {v3, p1, v1}, Lcom/redbend/vdm/fumo/VdmFumo;->triggerSession([BLcom/redbend/vdm/fumo/VdmFumo$ClientType;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return v0

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, e:Lcom/redbend/vdm/VdmException;
    const-string v3, "HandleFumo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VdmEngine exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ReportFumo(I)Z
    .locals 4
    .parameter "nResult"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 127
    const/4 v0, 0x1

    .line 129
    .local v0, bFlag:Z
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v1

    iput-object v1, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    .line 130
    iget-object v1, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    invoke-virtual {v1, v3, v2}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 132
    if-ne p1, v2, :cond_0

    .line 133
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->USER_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z

    move-result v1

    .line 149
    :goto_0
    return v1

    .line 134
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 135
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->DOWNLOAD_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z

    move-result v1

    goto :goto_0

    .line 136
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 137
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UPDATE_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z

    move-result v1

    goto :goto_0

    .line 138
    :cond_2
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 139
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->SUCCESSFUL:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z

    move-result v1

    goto :goto_0

    .line 140
    :cond_3
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 141
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->FW_UP_CORRUPT:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z

    move-result v1

    goto :goto_0

    .line 142
    :cond_4
    if-ne p1, v3, :cond_5

    .line 143
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->PACKAGE_MISMATCH:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z

    move-result v1

    goto :goto_0

    .line 144
    :cond_5
    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    .line 145
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z

    move-result v1

    goto :goto_0

    .line 146
    :cond_6
    const/16 v1, 0x8

    if-ne p1, v1, :cond_7

    .line 147
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_UPDATE:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    invoke-virtual {p0, v1}, Lcom/redbend/vdmc/HandleFumo;->ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z

    move-result v1

    goto :goto_0

    .line 149
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public ReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)Z
    .locals 5
    .parameter "inResultCode"

    .prologue
    .line 154
    const/4 v0, 0x1

    .line 156
    .local v0, bFlag:Z
    :try_start_0
    iget-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-virtual {v2, p1}, Lcom/redbend/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_0
    return v0

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "HandleFumo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VdmEngine exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ResumeFumoDL()Z
    .locals 5

    .prologue
    .line 111
    const/4 v0, 0x1

    .line 113
    .local v0, bFlag:Z
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v2

    iput-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    .line 114
    iget-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 117
    :try_start_0
    iget-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-virtual {v2}, Lcom/redbend/vdm/fumo/VdmFumo;->resumeDLSession()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return v0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "HandleFumo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VdmEngine exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public StartFumo()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 62
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    .line 63
    iget-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/redbend/vdmc/HandleFumo;->InitFumo([BI)Z

    move-result v0

    return v0
.end method

.method public StartFumo(Z)Z
    .locals 4
    .parameter "bDevice"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 68
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    .line 69
    iget-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 70
    if-eqz p1, :cond_0

    .line 71
    const/4 v0, 0x2

    invoke-virtual {p0, v3, v0}, Lcom/redbend/vdmc/HandleFumo;->InitFumo([BI)Z

    move-result v0

    .line 73
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v3, v2}, Lcom/redbend/vdmc/HandleFumo;->InitFumo([BI)Z

    move-result v0

    goto :goto_0
.end method

.method public StartFumoDL()Z
    .locals 5

    .prologue
    .line 95
    const/4 v0, 0x1

    .line 97
    .local v0, bFlag:Z
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v2

    iput-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    .line 98
    iget-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 101
    :try_start_0
    invoke-static {}, Lcom/redbend/vdmc/Vdmc;->getEngine()Lcom/redbend/vdm/VdmEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/redbend/vdm/VdmEngine;->notifyDLSessionProceed()V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "HandleFumo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VdmEngine exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public confirmDownload(Lcom/redbend/vdm/DownloadDescriptor;Lcom/redbend/vdm/fumo/VdmFumo;)Z
    .locals 13
    .parameter "inDD"
    .parameter "inFumo"

    .prologue
    .line 165
    const-string v10, "estimatedDownloadTimeInSecs="

    .line 166
    .local v10, szDoWnloadTime:Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, nDoWnloadTime:I
    const-string v11, "estimatedInstallTimeInSecs="

    .line 168
    .local v11, szInstallTime:Ljava/lang/String;
    const/4 v6, 0x0

    .line 169
    .local v6, nInstallTime:I
    invoke-static {}, Lcom/htc/ipl/fumo;->getInstance()Lcom/htc/ipl/fumo;

    move-result-object v0

    .line 171
    .local v0, mFumoIPL:Lcom/htc/ipl/fumo;
    sget-object v1, Lcom/redbend/vdm/DownloadDescriptor$Field;->INSTALL_PARAM:Lcom/redbend/vdm/DownloadDescriptor$Field;

    invoke-virtual {p1, v1}, Lcom/redbend/vdm/DownloadDescriptor;->getField(Lcom/redbend/vdm/DownloadDescriptor$Field;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, InstallParam:Ljava/lang/String;
    const-string v1, "&"

    invoke-virtual {v7, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 175
    .local v12, szParam:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v1, v12

    if-ge v8, v1, :cond_2

    .line 176
    aget-object v1, v12, v8

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    aget-object v1, v12, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, szData:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 180
    .end local v9           #szData:Ljava/lang/String;
    :cond_0
    aget-object v1, v12, v8

    invoke-virtual {v1, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    aget-object v1, v12, v8

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 182
    .restart local v9       #szData:Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 175
    .end local v9           #szData:Ljava/lang/String;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 186
    :cond_2
    sget-object v1, Lcom/redbend/vdm/DownloadDescriptor$Field;->NAME:Lcom/redbend/vdm/DownloadDescriptor$Field;

    invoke-virtual {p1, v1}, Lcom/redbend/vdm/DownloadDescriptor;->getField(Lcom/redbend/vdm/DownloadDescriptor$Field;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/redbend/vdm/DownloadDescriptor$Field;->DESCRIPTION:Lcom/redbend/vdm/DownloadDescriptor$Field;

    invoke-virtual {p1, v2}, Lcom/redbend/vdm/DownloadDescriptor;->getField(Lcom/redbend/vdm/DownloadDescriptor$Field;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p1, Lcom/redbend/vdm/DownloadDescriptor;->size:J

    invoke-virtual/range {v0 .. v6}, Lcom/htc/ipl/fumo;->PackageInfo(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 187
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v1

    iput-object v1, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    .line 188
    iget-object v1, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 190
    const/4 v1, 0x0

    return v1
.end method

.method public confirmUpdate(Lcom/redbend/vdm/fumo/VdmFumo;)Z
    .locals 3
    .parameter "inFumo"

    .prologue
    .line 196
    invoke-static {}, Lcom/htc/ipl/common;->getInstance()Lcom/htc/ipl/common;

    move-result-object v0

    iput-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    .line 197
    iget-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->mCommonIPL:Lcom/htc/ipl/common;

    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/ipl/common;->AccessToggle(IZ)V

    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public executeUpdate(Ljava/lang/String;Lcom/redbend/vdm/fumo/VdmFumo;)Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;
    .locals 5
    .parameter "updatePkgPath"
    .parameter "fumo"

    .prologue
    .line 204
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UPDATE_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 206
    .local v1, fumoRc:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :try_start_0
    iget-object v2, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-virtual {v2, v1}, Lcom/redbend/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    new-instance v2, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult;-><init>(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;Z)V

    return-object v2

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v2, "HandleFumo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VdmEngine exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notify(Lcom/redbend/vdm/SessionStateObserver$SessionType;Lcom/redbend/vdm/SessionStateObserver$SessionState;ILcom/redbend/vdm/SessionInitiator;)V
    .locals 6
    .parameter "type"
    .parameter "state"
    .parameter "lastError"
    .parameter "initiator"

    .prologue
    .line 214
    sget-object v3, Lcom/redbend/vdm/SessionStateObserver$SessionState;->COMPLETE:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v3, :cond_0

    sget-object v3, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DM:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    if-ne p1, v3, :cond_0

    .line 215
    iget-object v3, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-virtual {v3}, Lcom/redbend/vdm/fumo/VdmFumo;->querySessionActions()I

    move-result v2

    .line 216
    .local v2, sessionActions:I
    if-nez v2, :cond_3

    .line 217
    const-string v3, "HandleFumo"

    const-string v4, "Fumo Handler: no FUMO actions were performed during this session"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .end local v2           #sessionActions:I
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    invoke-interface {p4}, Lcom/redbend/vdm/SessionInitiator;->getId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VDM_FUMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/redbend/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/redbend/vdm/SessionStateObserver$SessionState;

    if-ne p2, v3, :cond_2

    sget-object v3, Lcom/redbend/vdm/SessionStateObserver$SessionType;->DL:Lcom/redbend/vdm/SessionStateObserver$SessionType;

    if-ne p1, v3, :cond_2

    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_FATAL:Lcom/redbend/vdm/VdmException$VdmError;

    iget v3, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    if-eq p3, v3, :cond_2

    .line 235
    :try_start_0
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->UNDEFINED_ERROR:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 236
    .local v1, fumoResult:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->CANCEL:Lcom/redbend/vdm/VdmException$VdmError;

    iget v3, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    if-ne p3, v3, :cond_7

    .line 237
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->USER_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    .line 251
    :cond_1
    :goto_1
    sget-object v3, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->USER_CANCELED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    if-eq v1, v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-virtual {v3, v1}, Lcom/redbend/vdm/fumo/VdmFumo;->triggerReportSession(Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;)V
    :try_end_0
    .catch Lcom/redbend/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1           #fumoResult:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_2
    :goto_2
    return-void

    .line 219
    .restart local v2       #sessionActions:I
    :cond_3
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_4

    .line 220
    const-string v3, "HandleFumo"

    const-string v4, "Fumo Handler: FUMO Download executed during this session"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_5

    .line 222
    const-string v3, "HandleFumo"

    const-string v4, "Fumo Handler: FUMO DownloadAndUpdate during executed this session"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_5
    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_6

    .line 224
    const-string v3, "HandleFumo"

    const-string v4, "Fumo Handler: FUMO PkgData Replaced during this session"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_6
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_0

    .line 226
    const-string v3, "HandleFumo"

    const-string v4, "Fumo Handler: FUMO Update executed during this session"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    .end local v2           #sessionActions:I
    .restart local v1       #fumoResult:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :cond_7
    :try_start_1
    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->AUTHENTICATION:Lcom/redbend/vdm/VdmException$VdmError;

    iget v3, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    if-ne p3, v3, :cond_8

    .line 239
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->AUTH_FAILED:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    goto :goto_1

    .line 240
    :cond_8
    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->BAD_URL:Lcom/redbend/vdm/VdmException$VdmError;

    iget v3, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    if-eq p3, v3, :cond_9

    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_BAD_PROTOCOL:Lcom/redbend/vdm/VdmException$VdmError;

    iget v3, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    if-ne p3, v3, :cond_a

    .line 242
    :cond_9
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->BAD_URL:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    goto :goto_1

    .line 243
    :cond_a
    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->DL_OBJ_TOO_LARGE:Lcom/redbend/vdm/VdmException$VdmError;

    iget v3, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    if-ne p3, v3, :cond_b

    .line 244
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->OUT_OF_MEMORY_FOR_DOWNLOAD:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;

    goto :goto_1

    .line 245
    :cond_b
    sget-object v3, Lcom/redbend/vdm/VdmException$VdmError;->COMMS_NON_FATAL:Lcom/redbend/vdm/VdmException$VdmError;

    iget v3, v3, Lcom/redbend/vdm/VdmException$VdmError;->val:I

    if-ne p3, v3, :cond_1

    .line 246
    sget-object v1, Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;->NETWORK:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :try_end_1
    .catch Lcom/redbend/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 254
    .end local v1           #fumoResult:Lcom/redbend/vdm/fumo/VdmFumoUpdateResult$ResultCode;
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Lcom/redbend/vdm/VdmException;
    const-string v3, "HandleFumo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VdmEngine exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/redbend/vdm/VdmException;->getError()Lcom/redbend/vdm/VdmException$VdmError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/redbend/vdm/VdmException$VdmError;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected term()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    invoke-virtual {v0}, Lcom/redbend/vdm/fumo/VdmFumo;->destroy()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/redbend/vdmc/HandleFumo;->_fumo:Lcom/redbend/vdm/fumo/VdmFumo;

    .line 39
    return-void
.end method

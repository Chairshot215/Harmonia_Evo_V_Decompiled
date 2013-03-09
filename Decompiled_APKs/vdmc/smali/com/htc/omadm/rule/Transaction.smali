.class public Lcom/htc/omadm/rule/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field public static TEST_VDMC:Z


# instance fields
.field private mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

.field private mDMSession:Lcom/htc/omadm/rule/DMSession;

.field mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

.field private mSessionType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "TransactionSample"

    sput-object v0, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/omadm/rule/Transaction;->TEST_VDMC:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/omadm/rule/DMSession;Lcom/htc/omadm/gui/SprintGuiPrototype;)V
    .locals 0
    .parameter "session"
    .parameter "gui"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    .line 44
    iput-object p2, p0, Lcom/htc/omadm/rule/Transaction;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 45
    return-void
.end method

.method private CI_DC_PRL_Check()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-ne v2, v3, :cond_0

    .line 82
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v0

    .line 83
    .local v0, st:Lcom/htc/omadm/util/Setting;
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v2, v1, v1}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showOther(II)V

    .line 84
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    invoke-virtual {v2, v3}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 88
    .end local v0           #st:Lcom/htc/omadm/util/Setting;
    :goto_0
    return v1

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v1, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    invoke-static {v1}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    .line 88
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private Default_Check()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v0, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    invoke-static {v0}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method private FUMO_Check()Z
    .locals 5

    .prologue
    const/16 v4, 0xb

    const/4 v1, 0x0

    .line 93
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    .line 96
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-virtual {v2}, Lcom/htc/omadm/libdo/firmware/FumoManager;->CheckBatteryLevel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 97
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v2}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showLowBattery()V

    .line 98
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-eq v2, v3, :cond_0

    .line 99
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {v2, v3}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 122
    :cond_0
    :goto_0
    return v1

    .line 105
    :cond_1
    sget-boolean v2, Lcom/htc/omadm/prop/PropertyFeature;->IS_KINDOM_DEVICE:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/htc/omadm/prop/PropertyFeature;->IS_SPRINT_PROJECT:Z

    if-eqz v2, :cond_2

    .line 106
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v0

    .line 107
    .local v0, st:Lcom/htc/omadm/util/Setting;
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v2

    if-ne v2, v4, :cond_2

    invoke-virtual {v0}, Lcom/htc/omadm/util/Setting;->getPeningPackageState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->PackagePending:I

    if-ne v2, v3, :cond_2

    .line 109
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v0}, Lcom/htc/omadm/util/Setting;->Get_FumoDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/omadm/util/Setting;->Get_FumoDescTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showInstall(Ljava/lang/String;I)V

    goto :goto_0

    .line 114
    .end local v0           #st:Lcom/htc/omadm/util/Setting;
    :cond_2
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v2

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionState()I

    move-result v2

    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-ne v2, v3, :cond_3

    .line 116
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v0

    .line 117
    .restart local v0       #st:Lcom/htc/omadm/util/Setting;
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v0}, Lcom/htc/omadm/util/Setting;->Get_FumoDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/omadm/util/Setting;->Get_FumoDescTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showInstall(Ljava/lang/String;I)V

    goto :goto_0

    .line 121
    .end local v0           #st:Lcom/htc/omadm/util/Setting;
    :cond_3
    iget-object v1, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v1, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_RUNNING:I

    invoke-static {v1}, Lcom/htc/omadm/rule/DMSession;->SetSessionState(I)V

    .line 122
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public Check()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 72
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 49
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/omadm/rule/Transaction;->CI_DC_PRL_Check()Z

    move-result v0

    goto :goto_0

    .line 52
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/omadm/rule/Transaction;->Default_Check()Z

    move-result v0

    goto :goto_0

    .line 54
    :pswitch_3
    invoke-direct {p0}, Lcom/htc/omadm/rule/Transaction;->CI_DC_PRL_Check()Z

    move-result v0

    goto :goto_0

    .line 57
    :pswitch_4
    invoke-direct {p0}, Lcom/htc/omadm/rule/Transaction;->Default_Check()Z

    move-result v0

    goto :goto_0

    .line 61
    :pswitch_5
    invoke-direct {p0}, Lcom/htc/omadm/rule/Transaction;->FUMO_Check()Z

    move-result v0

    goto :goto_0

    .line 66
    :pswitch_6
    invoke-direct {p0}, Lcom/htc/omadm/rule/Transaction;->Default_Check()Z

    move-result v0

    goto :goto_0

    .line 70
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public Connecting()Z
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    const/16 v0, -0x3e7

    invoke-static {v0}, Lcom/htc/omadm/rule/DMSession;->SetSessionID(I)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public DC_Exec()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x4

    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 183
    sget-object v3, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    const-string v4, "....DC/PROVISIONING"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v3, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v3, v9}, Lcom/htc/omadm/rule/DMSession;->sendEmptyMessage(I)Z

    .line 188
    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v1

    .line 189
    .local v1, mCM:Lcom/htc/omadm/libdo/config/ConfigManager;
    const/16 v3, 0xd

    new-array v2, v3, [[Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/AuthAlgoAAA"

    aput-object v4, v3, v8

    const-string v4, "FFF"

    aput-object v4, v3, v7

    aput-object v3, v2, v8

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/AuthAlgoHA"

    aput-object v4, v3, v8

    const-string v4, "FFF"

    aput-object v4, v3, v7

    aput-object v3, v2, v7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/MobileIpAddress"

    aput-object v4, v3, v8

    const-string v4, "6.6.6.6"

    aput-object v4, v3, v7

    aput-object v3, v2, v6

    const/4 v3, 0x3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/NAI"

    aput-object v5, v4, v8

    const-string v5, "54321"

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/PasswordAAA"

    aput-object v4, v3, v8

    const-string v4, "1.1.1.1"

    aput-object v4, v3, v7

    aput-object v3, v2, v9

    const/4 v3, 0x5

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/PasswordHA"

    aput-object v5, v4, v8

    const-string v5, "2.2.2.2"

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/PriHAIp"

    aput-object v5, v4, v8

    const-string v5, "3.3.3.3"

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/ReverseTunneling"

    aput-object v5, v4, v8

    const-string v5, "0"

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/SecHAIp"

    aput-object v5, v4, v8

    const-string v5, "4.4.4.4"

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "./CDMA/3GPD/Profile1/SpiAAA"

    aput-object v4, v3, v8

    const-string v4, "1024"

    aput-object v4, v3, v7

    aput-object v3, v2, v10

    const/16 v3, 0xa

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "./CDMA/3GPD/Profile1/SpiHA"

    aput-object v5, v4, v8

    const-string v5, "4096"

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "./CDMA/NAM/CdmaNam"

    aput-object v5, v4, v8

    const-string v5, "EM1YZJzQq/mAFcj/Pw="

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "./CDMA/NAM/MobDirNum"

    aput-object v5, v4, v8

    const-string v5, "mjFWQwcE"

    aput-object v5, v4, v7

    aput-object v4, v2, v3

    .line 211
    .local v2, s_conValue:[[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 212
    sget-object v3, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set_ConValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    aget-object v5, v5, v8

    aget-object v6, v2, v0

    aget-object v6, v6, v7

    invoke-virtual {v1, v5, v6}, Lcom/htc/omadm/libdo/config/ConfigManager;->Set_ConValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_0
    iget-object v3, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v3, v10}, Lcom/htc/omadm/rule/DMSession;->sendEmptyMessage(I)Z

    .line 221
    return v7
.end method

.method public Exec()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 129
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/omadm/rule/Transaction;->DC_Exec()Z

    move-result v0

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-virtual {p0}, Lcom/htc/omadm/rule/Transaction;->Vdmc_ExecHFADC()Z

    move-result v0

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Lcom/htc/omadm/rule/Transaction;->PRL_Exec()Z

    move-result v0

    goto :goto_0

    .line 139
    :pswitch_4
    invoke-virtual {p0}, Lcom/htc/omadm/rule/Transaction;->Vdmc_ExecCIFUMO()Z

    move-result v0

    goto :goto_0

    .line 142
    :pswitch_5
    invoke-virtual {p0}, Lcom/htc/omadm/rule/Transaction;->FUMO_REPORT_Exec()Z

    move-result v0

    goto :goto_0

    .line 144
    :pswitch_6
    invoke-virtual {p0}, Lcom/htc/omadm/rule/Transaction;->FOTA_REPORT_Exec()Z

    move-result v0

    goto :goto_0

    .line 148
    :pswitch_7
    invoke-virtual {p0}, Lcom/htc/omadm/rule/Transaction;->NI_Exec()Z

    move-result v0

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public FOTA_REPORT_Exec()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 314
    sget-object v0, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FOTA_REPORT_Exec:Start FUMO and no any GUI for sync version with Server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionResult()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v0}, Lcom/htc/omadm/rule/DMSession;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/VdmcCtl;->StartFumo()Z

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public FUMO_Exec()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v6, 0x0

    .line 243
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/omadm/rule/Transaction;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    .line 245
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v7

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->sendEmptyMessage(I)Z

    .line 246
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 248
    sget-object v7, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    const-string v8, "....FUMO/DL_CONNECTING"

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->sendEmptyMessage(I)Z

    .line 251
    const-wide/16 v7, 0x7d0

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 255
    invoke-virtual {p0}, Lcom/htc/omadm/rule/Transaction;->readLocalPkg()[B

    move-result-object v0

    .line 256
    .local v0, data:[B
    iget-object v7, p0, Lcom/htc/omadm/rule/Transaction;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-virtual {v7}, Lcom/htc/omadm/libdo/firmware/FumoManager;->GetMaxStorageSize()J

    move-result-wide v3

    .line 257
    .local v3, maxPkgSize:J
    sget-object v7, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MAX package size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",data.length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    array-length v7, v0

    int-to-long v7, v7

    cmp-long v7, v7, v3

    if-lez v7, :cond_1

    .line 259
    iget-object v7, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    sget v8, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {v7, v8}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    .line 297
    :cond_0
    :goto_0
    return v6

    .line 263
    :cond_1
    const/16 v7, 0x400

    new-array v1, v7, [B

    .line 264
    .local v1, dest:[B
    const/4 v2, 0x0

    .line 265
    .local v2, i:I
    const/4 v2, 0x0

    :goto_1
    array-length v7, v0

    if-ge v2, v7, :cond_3

    .line 266
    iget-object v7, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->getSessionControl()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 268
    sget-object v7, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    const-string v8, "....FUMO/PROGRESS"

    invoke-static {v7, v8}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 271
    .local v5, msg:Landroid/os/Message;
    const/4 v7, 0x4

    iput v7, v5, Landroid/os/Message;->what:I

    .line 272
    iput v2, v5, Landroid/os/Message;->arg1:I

    .line 273
    array-length v7, v0

    iput v7, v5, Landroid/os/Message;->arg2:I

    .line 274
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 276
    array-length v7, v1

    add-int/2addr v7, v2

    array-length v8, v0

    if-gt v7, v8, :cond_2

    .line 277
    array-length v7, v1

    invoke-static {v0, v2, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    iget-object v7, p0, Lcom/htc/omadm/rule/Transaction;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    array-length v7, v1

    invoke-static {v6, v1, v7}, Lcom/htc/omadm/libdo/firmware/FumoManager;->WriteData(I[BI)Z

    .line 284
    :goto_2
    const-wide/16 v7, 0xc8

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V

    .line 265
    add-int/lit16 v2, v2, 0x400

    goto :goto_1

    .line 280
    :cond_2
    array-length v7, v0

    sub-int/2addr v7, v2

    invoke-static {v0, v2, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    iget-object v7, p0, Lcom/htc/omadm/rule/Transaction;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    array-length v7, v0

    sub-int/2addr v7, v2

    invoke-static {v6, v1, v7}, Lcom/htc/omadm/libdo/firmware/FumoManager;->WriteData(I[BI)Z

    goto :goto_2

    .line 288
    .end local v5           #msg:Landroid/os/Message;
    :cond_3
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 289
    iget-object v7, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->getSessionControl()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 294
    invoke-static {}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->getSingleton()Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Lcom/htc/omadm/vendor/vdmc/VdmcEventHandler;->sendEmptyMessage(I)Z

    .line 297
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public FUMO_REPORT_Exec()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 301
    sget-object v1, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FUMO_REPORT_Exec:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionResult()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/rule/DMSession;->GetSessionResult()I

    move-result v0

    .line 304
    .local v0, result:I
    if-ne v0, v4, :cond_0

    .line 305
    iget-object v1, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v1}, Lcom/htc/omadm/rule/DMSession;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/htc/VdmcCtl;->ReportFumo(Z)Z

    .line 310
    :goto_0
    return v4

    .line 306
    :cond_0
    if-nez v0, :cond_1

    .line 307
    iget-object v1, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v1}, Lcom/htc/omadm/rule/DMSession;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/VdmcCtl;->ReportFumo(Z)Z

    goto :goto_0

    .line 309
    :cond_1
    sget-object v1, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Other result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public NI_Exec()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    const-string v1, "NI_Exec()"

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v0}, Lcom/htc/omadm/rule/DMSession;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v0

    sget-object v1, Lcom/htc/omadm/rule/DMSession;->WAP_DATA:[B

    invoke-virtual {v0, v1}, Lcom/htc/VdmcCtl;->handleNiaMessage([B)Z

    .line 324
    const/4 v0, 0x1

    return v0
.end method

.method public PRL_Exec()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 227
    sget-object v2, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    const-string v3, "....PRL/READY key disable"

    invoke-static {v2, v3}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/omadm/rule/DMSession;->sendEmptyMessage(I)Z

    .line 230
    new-instance v0, Lcom/htc/omadm/libdo/config/ConfigManager;

    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    invoke-virtual {v2}, Lcom/htc/omadm/rule/DMSession;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/omadm/libdo/config/ConfigManager;-><init>(Landroid/content/Context;)V

    .line 231
    .local v0, mCM:Lcom/htc/omadm/libdo/config/ConfigManager;
    const-string v1, "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"

    .line 236
    .local v1, prl:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/omadm/rule/Transaction;->mDMSession:Lcom/htc/omadm/rule/DMSession;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/htc/omadm/rule/DMSession;->sendEmptyMessage(I)Z

    .line 238
    const/4 v2, 0x1

    return v2
.end method

.method protected Vdmc_ExecCIDC()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 160
    invoke-static {}, Lcom/htc/omadm/test/VdmcSimular;->getSingleton()Lcom/htc/omadm/test/VdmcSimular;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/omadm/test/VdmcSimular;->sendEmptyMessage(I)Z

    .line 161
    return v1
.end method

.method protected Vdmc_ExecCIFUMO()Z
    .locals 2

    .prologue
    .line 164
    invoke-static {}, Lcom/htc/omadm/test/VdmcSimular;->getSingleton()Lcom/htc/omadm/test/VdmcSimular;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/omadm/test/VdmcSimular;->sendEmptyMessage(I)Z

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method protected Vdmc_ExecHFADC()Z
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/htc/omadm/test/VdmcSimular;->getSingleton()Lcom/htc/omadm/test/VdmcSimular;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/omadm/test/VdmcSimular;->sendEmptyMessage(I)Z

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method protected readLocalPkg()[B
    .locals 13

    .prologue
    .line 334
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "data/data/com.redbend.vdmc/"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 336
    .local v3, files:[Ljava/io/File;
    const/4 v4, 0x0

    .line 337
    .local v4, i:I
    const/4 v4, 0x0

    :goto_0
    array-length v10, v3

    if-ge v4, v10, :cond_0

    .line 338
    sget-object v10, Lcom/htc/omadm/rule/Transaction;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    aget-object v10, v3, v4

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 343
    :cond_0
    new-instance v5, Ljava/io/FileInputStream;

    aget-object v10, v3, v4

    invoke-direct {v5, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 346
    .local v5, is:Ljava/io/InputStream;
    aget-object v10, v3, v4

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 348
    .local v6, length:J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    .line 353
    :cond_1
    long-to-int v10, v6

    new-array v0, v10, [B

    .line 356
    .local v0, bytes:[B
    const/4 v9, 0x0

    .line 357
    .local v9, offset:I
    const/4 v8, 0x0

    .line 359
    .local v8, numRead:I
    :goto_1
    array-length v10, v0

    if-ge v9, v10, :cond_3

    array-length v10, v0

    sub-int/2addr v10, v9

    invoke-virtual {v5, v0, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    if-ltz v8, :cond_3

    .line 360
    add-int/2addr v9, v8

    goto :goto_1

    .line 337
    .end local v0           #bytes:[B
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #length:J
    .end local v8           #numRead:I
    .end local v9           #offset:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 364
    .restart local v0       #bytes:[B
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #length:J
    .restart local v8       #numRead:I
    .restart local v9       #offset:I
    :cond_3
    array-length v10, v0

    if-ge v9, v10, :cond_4

    .line 365
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not completely read file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v3, v4

    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    .end local v0           #bytes:[B
    .end local v2           #file:Ljava/io/File;
    .end local v3           #files:[Ljava/io/File;
    .end local v4           #i:I
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #length:J
    .end local v8           #numRead:I
    .end local v9           #offset:I
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    const/4 v0, 0x0

    .end local v1           #e:Ljava/lang/Exception;
    :goto_2
    return-object v0

    .line 369
    .restart local v0       #bytes:[B
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #files:[Ljava/io/File;
    .restart local v4       #i:I
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #length:J
    .restart local v8       #numRead:I
    .restart local v9       #offset:I
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

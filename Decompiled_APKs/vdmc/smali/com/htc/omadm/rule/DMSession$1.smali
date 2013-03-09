.class Lcom/htc/omadm/rule/DMSession$1;
.super Landroid/os/Handler;
.source "DMSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/rule/DMSession;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/rule/DMSession;


# direct methods
.method constructor <init>(Lcom/htc/omadm/rule/DMSession;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/16 v10, 0x12

    const/16 v8, 0xe

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x64

    .line 68
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage:status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",option:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",result:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_1

    .line 75
    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    invoke-static {v3}, Lcom/htc/omadm/rule/Rule;->SetSessionState(I)V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_2

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-eq v3, v6, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    sget-boolean v3, Lcom/htc/omadm/gui/SprintGuiPrototype;->bTriggerDSS:Z

    if-eqz v3, :cond_5

    .line 83
    :cond_3
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "trigger DSA"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v0, ActIntent:Landroid/content/Intent;
    const-string v3, "com.sprint.dsa.DSA_ACTIVITY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    const-string v3, "vnd.sprint.dsa/vnd.sprint.dsa.main"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v3, "com.sprint.dsa.url"

    invoke-static {}, Lcom/htc/omadm/libdo/config/ConfigManager;->getSingleton()Lcom/htc/omadm/libdo/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/omadm/libdo/config/ConfigManager;->Get_DSAURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v3, "com.sprint.dsa.source"

    const-string v4, "HFA"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    sget-object v3, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 91
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 92
    .local v1, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    sget-object v3, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    :goto_1
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    sput-boolean v7, Lcom/htc/omadm/gui/SprintGuiPrototype;->bTriggerDSS:Z

    .line 99
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v3}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 100
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto :goto_0

    .line 95
    :cond_4
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "No DSA"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 102
    .end local v0           #ActIntent:Landroid/content/Intent;
    .end local v1           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_5
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_6

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_6

    .line 104
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v3}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    .line 105
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 107
    :cond_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_7

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0x68

    if-ne v3, v4, :cond_7

    .line 109
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_NOPAYLOAD:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 111
    :cond_7
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_a

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_a

    .line 116
    invoke-static {}, Lcom/htc/omadm/rule/Rule;->GetSessionType()I

    move-result v3

    const/16 v4, 0x17

    if-ne v3, v4, :cond_9

    .line 118
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    new-instance v4, Lcom/htc/omadm/gui/DMGuiFUMO;

    sget-object v5, Lcom/htc/omadm/rule/Rule;->mCONTEXT:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v6, v6, Lcom/htc/omadm/rule/Rule;->mGUICallBack:Landroid/os/Handler;

    sget-object v7, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    invoke-static {}, Lcom/htc/omadm/rule/Rule;->GetSessionType()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/htc/omadm/gui/DMGuiFUMO;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v4, v3, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    .line 121
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v3, v9}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showReady(Z)V

    .line 124
    invoke-static {}, Lcom/htc/omadm/rule/Rule;->GetSessionState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    .line 125
    sput-boolean v9, Lcom/htc/omadm/prop/PropertyState;->UI_PROGRESS_BAR_ENABLE:Z

    .line 127
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/VdmcCtl;->StartFumoDL()Z

    .line 128
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "StartFumoDL for downloading"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    #getter for: Lcom/htc/omadm/rule/DMSession;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/omadm/rule/DMSession;->access$000(Lcom/htc/omadm/rule/DMSession;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 134
    :cond_8
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Fake connecting and UI"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    #getter for: Lcom/htc/omadm/rule/DMSession;->mUIHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/htc/omadm/rule/DMSession;->access$000(Lcom/htc/omadm/rule/DMSession;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 136
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_FAIL:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 140
    :cond_9
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_SUCCESS:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 143
    :cond_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0x10

    if-ne v3, v4, :cond_b

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_b

    .line 145
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->DeletePackage()Z

    .line 146
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/VdmcCtl;->CancelFumo()Z

    .line 148
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/firmware/FumoManager;->DeleteDLfile()V

    .line 149
    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    invoke-static {v3}, Lcom/htc/omadm/rule/Rule;->SetSessionState(I)V

    goto/16 :goto_0

    .line 151
    :cond_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v10, :cond_10

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_10

    .line 153
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    if-nez v3, :cond_c

    .line 154
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    move-result-object v4

    iput-object v4, v3, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    .line 157
    :cond_c
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->VerifyPackage()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 161
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/omadm/util/Setting;->isPendingPackage()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 162
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v3

    sget v4, Lcom/htc/omadm/prop/PropertyState;->PackageInstalling:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/Setting;->setPeningPackageState(I)V

    .line 164
    :cond_d
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/firmware/FumoManager;->StartFirmwareUpdate()V

    .line 165
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_INSTALLING:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0

    .line 168
    :cond_e
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "verify package fail"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    const/16 v4, 0x194

    invoke-virtual {v3, v4}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showError(I)V

    .line 170
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->DeletePackage()Z

    .line 171
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/DMSession;->mFumoMgr:Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-virtual {v3}, Lcom/htc/omadm/libdo/firmware/FumoManager;->DeleteDLfile()V

    .line 174
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/omadm/util/Setting;->isPendingPackage()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 175
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v3

    sget v4, Lcom/htc/omadm/prop/PropertyState;->PackageInstalled:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/Setting;->setPeningPackageState(I)V

    goto/16 :goto_0

    .line 178
    :cond_f
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/htc/VdmcCtl;->ReportFumo(Z)Z

    goto/16 :goto_0

    .line 182
    :cond_10
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v10, :cond_14

    iget v3, p1, Landroid/os/Message;->arg2:I

    const/16 v4, 0x65

    if-ne v3, v4, :cond_14

    .line 184
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "user has cancel UI INSTALL"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/Rule;->mDMGui:Lcom/htc/omadm/gui/SprintGuiPrototype;

    invoke-virtual {v3, v7, v7}, Lcom/htc/omadm/gui/SprintGuiPrototype;->showOther(II)V

    .line 187
    sget-boolean v3, Lcom/htc/omadm/prop/PropertyFeature;->IS_KINDOM_DEVICE:Z

    if-eqz v3, :cond_11

    sget-boolean v3, Lcom/htc/omadm/prop/PropertyFeature;->IS_SPRINT_PROJECT:Z

    if-nez v3, :cond_12

    :cond_11
    sget-boolean v3, Lcom/htc/omadm/prop/PropertyFeature;->IS_JEWEL_DEVICE:Z

    if-eqz v3, :cond_13

    .line 189
    :cond_12
    invoke-static {}, Lcom/htc/omadm/rule/Rule;->GetSessionState()I

    move-result v3

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_DOWNLOADED:I

    if-ne v3, v4, :cond_0

    .line 190
    sget v3, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_USER_CANCELING:I

    invoke-static {v3}, Lcom/htc/omadm/rule/Rule;->SetSessionState(I)V

    .line 191
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v3

    sget v4, Lcom/htc/omadm/prop/PropertyState;->PackagePending:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/util/Setting;->setPeningPackageState(I)V

    .line 194
    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/VdmcCtl;->getInstance(Landroid/content/Context;)Lcom/htc/VdmcCtl;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/htc/VdmcCtl;->ReportFumo(I)Z

    .line 195
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Downloaded from Server , but defer to install fumo"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 198
    :cond_13
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    iget-object v3, v3, Lcom/htc/omadm/rule/Rule;->mConn:Lcom/htc/omadm/rule/ConnMo;

    invoke-virtual {v3}, Lcom/htc/omadm/rule/ConnMo;->CloseDataConnection()Z

    goto/16 :goto_0

    .line 200
    :cond_14
    iget v3, p1, Landroid/os/Message;->what:I

    if-nez v3, :cond_0

    iget v3, p1, Landroid/os/Message;->arg1:I

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v6, :cond_0

    .line 203
    sget-object v3, Lcom/htc/omadm/rule/Rule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "user can a null type session"

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v3, p0, Lcom/htc/omadm/rule/DMSession$1;->this$0:Lcom/htc/omadm/rule/DMSession;

    sget v4, Lcom/htc/omadm/prop/PropertyState;->DM_STATE_END_CANCEL:I

    invoke-virtual {v3, v4}, Lcom/htc/omadm/rule/DMSession;->EndSession(I)V

    goto/16 :goto_0
.end method

.class public Lcom/htc/omadm/core/DeviceNotifyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeviceNotifyReceiver.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final QUICKBOOT_INTENT:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const-string v0, "DeviceNotifyReceiver"

    iput-object v0, p0, Lcom/htc/omadm/core/DeviceNotifyReceiver;->LOG_TAG:Ljava/lang/String;

    .line 30
    const-string v0, "android.intent.action.QUICKBOOT_POWERON"

    iput-object v0, p0, Lcom/htc/omadm/core/DeviceNotifyReceiver;->QUICKBOOT_INTENT:Ljava/lang/String;

    return-void
.end method

.method public static hasOOBE(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 171
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "setup_wizard_has_run"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 175
    :cond_0
    :goto_0
    return v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    const-string v8, "DeviceNotifyReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "context: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", intent: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    const-string v8, "DeviceNotifyReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FUMO enable: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_FUMO:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {p1}, Lcom/htc/omadm/rule/Factory;->checkFactoryInit(Landroid/content/Context;)V

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.htc.omadm.trigger"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 43
    const-string v8, "DeviceNotifyReceiver"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/4 v8, 0x0

    sput-boolean v8, Lcom/htc/omadm/prop/PropertyState;->DM_NI_MODE:Z

    .line 45
    const/4 v8, 0x0

    sput-boolean v8, Lcom/htc/omadm/prop/PropertyState;->DM_NIFUMO_RUNNING:Z

    .line 47
    const-string v8, "SESSION_TYPE"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 49
    .local v4, sessionType:I
    const-string v8, "DeviceNotifyReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sessionType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.htc.omadm.core.start"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, i:Landroid/content/Intent;
    const-string v8, "SESSION_TYPE"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const-class v8, Lcom/htc/omadm/core/DMService;

    invoke-virtual {v1, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 57
    .end local v1           #i:Landroid/content/Intent;
    .end local v4           #sessionType:I
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 59
    :cond_3
    const/4 v0, 0x1

    .line 62
    .local v0, bBootcomplete:Z
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.htc.omadm.core.init"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v9, "com.redbend.vdmc"

    const-string v10, "com.htc.omadm.core.DMService"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 66
    const-string v8, "DeviceNotifyReceiver"

    const-string v9, "For quickboot."

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const/4 v0, 0x0

    .line 70
    :cond_4
    invoke-static {p1}, Lcom/htc/omadm/core/DeviceNotifyReceiver;->hasOOBE(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 72
    invoke-static {p1}, Lcom/htc/omadm/rule/Factory;->SetContext(Landroid/content/Context;)V

    .line 73
    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->getSingleton()Lcom/htc/omadm/libdo/firmware/FumoManager;

    invoke-static {}, Lcom/htc/omadm/libdo/firmware/FumoManager;->CheckUpdateResult()I

    move-result v6

    .line 74
    .local v6, updateResult:I
    const-string v8, "DeviceNotifyReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateResult: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v8, -0x1

    if-eq v6, v8, :cond_d

    const/4 v8, 0x1

    if-ne v0, v8, :cond_d

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.htc.omadm.core.start"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v1       #i:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/omadm/util/Setting;->getSingleton()Lcom/htc/omadm/util/Setting;

    move-result-object v5

    .line 81
    .local v5, st:Lcom/htc/omadm/util/Setting;
    invoke-virtual {v5}, Lcom/htc/omadm/util/Setting;->getPeningPackageState()I

    move-result v2

    .line 82
    .local v2, packageInstall:I
    sget-boolean v8, Lcom/htc/omadm/prop/PropertyFeature;->IS_KINDOM_DEVICE:Z

    if-eqz v8, :cond_5

    sget-boolean v8, Lcom/htc/omadm/prop/PropertyFeature;->IS_SPRINT_PROJECT:Z

    if-eqz v8, :cond_5

    sget v8, Lcom/htc/omadm/prop/PropertyState;->PackageInstalling:I

    if-ne v2, v8, :cond_5

    .line 85
    sget v8, Lcom/htc/omadm/prop/PropertyState;->PackageInstalled:I

    invoke-virtual {v5, v8}, Lcom/htc/omadm/util/Setting;->setPeningPackageState(I)V

    .line 86
    const-string v8, "SESSION_TYPE"

    const/16 v9, 0x17

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v8, "SESSION_RESULT"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 91
    const-string v8, "com.redbend.vdmc"

    const-string v9, "com.htc.omadm.core.DMService"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v8, "DeviceNotifyReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fumo report defer updateResult: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 97
    :cond_5
    sget-boolean v8, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_FUMO:Z

    if-eqz v8, :cond_a

    .line 98
    const/4 v8, 0x1

    if-eq v6, v8, :cond_6

    if-nez v6, :cond_8

    .line 100
    :cond_6
    const-string v8, "SESSION_TYPE"

    const/16 v9, 0xc

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    :cond_7
    :goto_1
    const-string v8, "SESSION_RESULT"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const-string v8, "com.redbend.vdmc"

    const-string v9, "com.htc.omadm.core.DMService"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 103
    :cond_8
    const/4 v8, 0x3

    if-eq v6, v8, :cond_9

    const/4 v8, 0x2

    if-ne v6, v8, :cond_7

    .line 105
    :cond_9
    const-string v8, "SESSION_TYPE"

    const/16 v9, 0xd

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 114
    :cond_a
    const-string v8, "DeviceNotifyReceiver"

    const-string v9, "Report FOTA result."

    invoke-static {v8, v9}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v8, 0x3

    if-eq v6, v8, :cond_b

    const/4 v8, 0x2

    if-ne v6, v8, :cond_c

    .line 117
    :cond_b
    const-string v8, "SESSION_TYPE"

    const/16 v9, 0xd

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 120
    :cond_c
    const-string v8, "SESSION_RESULT"

    invoke-virtual {v1, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string v8, "com.redbend.vdmc"

    const-string v9, "com.htc.omadm.core.DMService"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 128
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #packageInstall:I
    .end local v5           #st:Lcom/htc/omadm/util/Setting;
    :cond_d
    invoke-static {}, Lcom/htc/omadm/libdo/system/PhoneInfo;->getSingleton()Lcom/htc/omadm/libdo/system/PhoneInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/omadm/libdo/system/PhoneInfo;->IsHFACondition()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 129
    sget-boolean v8, Lcom/htc/omadm/prop/PropertyFeature;->ENABLE_LAWMO:Z

    if-eqz v8, :cond_e

    const-string v8, "ro.omadm.lockstate"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 134
    :cond_e
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.htc.omadm.core.start"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .restart local v1       #i:Landroid/content/Intent;
    const-string v8, "SESSION_TYPE"

    const/4 v9, 0x2

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const-string v8, "com.redbend.vdmc"

    const-string v9, "com.htc.omadm.core.DMService"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 143
    .end local v1           #i:Landroid/content/Intent;
    :cond_f
    invoke-static {p1}, Lcom/htc/omadm/rule/Factory;->SetContext(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getNextSessionType()I

    move-result v4

    .line 145
    .restart local v4       #sessionType:I
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getNextSessionID()I

    move-result v3

    .line 146
    .local v3, sessionID:I
    invoke-static {}, Lcom/htc/omadm/core/SessionManager;->getNextSessionWapData()[B

    move-result-object v7

    .line 148
    .local v7, wapData:[B
    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    if-eqz v7, :cond_0

    .line 149
    new-instance v1, Landroid/content/Intent;

    const-string v8, "com.htc.omadm.core.start"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v1       #i:Landroid/content/Intent;
    const-string v8, "SESSION_TYPE"

    invoke-virtual {v1, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    const-string v8, "SESSION_ID"

    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v8, "SESSION_WAP_DATA"

    invoke-virtual {v1, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 159
    const-string v8, "com.redbend.vdmc"

    const-string v9, "com.htc.omadm.core.DMService"

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

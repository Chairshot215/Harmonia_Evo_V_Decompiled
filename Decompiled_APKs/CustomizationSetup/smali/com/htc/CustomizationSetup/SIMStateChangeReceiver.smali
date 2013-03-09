.class public Lcom/htc/CustomizationSetup/SIMStateChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMStateChangeReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SIMStateChangeReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private requestGetGID1()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 61
    :try_start_0
    const-string v6, "com.htc.telephony.HtcTelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 75
    .local v0, clsHtcTelephonyManager:Ljava/lang/Class;
    :try_start_1
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v3

    .line 89
    .local v3, method:Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    :try_start_2
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v4

    .line 90
    .local v4, objHtcTelephonyManager:Ljava/lang/Object;
    if-nez v4, :cond_0

    move-object v2, v5

    .line 137
    .end local v0           #clsHtcTelephonyManager:Ljava/lang/Class;
    .end local v3           #method:Ljava/lang/reflect/Method;
    .end local v4           #objHtcTelephonyManager:Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 64
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "Class.forName exception: ClassNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 65
    goto :goto_0

    .line 66
    .end local v1           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    const-string v6, "SIMStateChangeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class.forName exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 69
    goto :goto_0

    .line 76
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #clsHtcTelephonyManager:Ljava/lang/Class;
    :catch_2
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 78
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "getMethod exception: SecurityException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 79
    goto :goto_0

    .line 80
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v1

    .line 81
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 82
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "getMethod exception: NoSuchMethodException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 83
    goto :goto_0

    .line 93
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    .restart local v3       #method:Ljava/lang/reflect/Method;
    :catch_4
    move-exception v1

    .line 94
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 95
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "invoke exception: IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 96
    goto :goto_0

    .line 97
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 98
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 99
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "invoke exception: IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 100
    goto :goto_0

    .line 101
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v1

    .line 102
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 103
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "invoke exception: InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 104
    goto :goto_0

    .line 109
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    .restart local v4       #objHtcTelephonyManager:Ljava/lang/Object;
    :cond_0
    :try_start_3
    const-string v6, "requestGetGID1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_8

    move-result-object v3

    .line 123
    const/4 v6, 0x0

    :try_start_4
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_b

    .local v2, gid1:Ljava/lang/String;
    goto :goto_0

    .line 110
    .end local v2           #gid1:Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 111
    .local v1, e:Ljava/lang/SecurityException;
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 112
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "getMethod exception: SecurityException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 113
    goto/16 :goto_0

    .line 114
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_8
    move-exception v1

    .line 115
    .local v1, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 116
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "getMethod exception: NoSuchMethodException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 117
    goto/16 :goto_0

    .line 124
    .end local v1           #e:Ljava/lang/NoSuchMethodException;
    :catch_9
    move-exception v1

    .line 125
    .local v1, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 126
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "invoke exception: IllegalArgumentException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 127
    goto/16 :goto_0

    .line 128
    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v1

    .line 129
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 130
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "invoke exception: IllegalAccessException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 131
    goto/16 :goto_0

    .line 132
    .end local v1           #e:Ljava/lang/IllegalAccessException;
    :catch_b
    move-exception v1

    .line 133
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 134
    const-string v6, "SIMStateChangeReceiver"

    const-string v7, "invoke exception: InvocationTargetException"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 135
    goto/16 :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 22
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v4, v5, :cond_0

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "setup_wizard_has_run"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 28
    .local v0, hasSetupWizRun:I
    if-nez v0, :cond_1

    .line 29
    const-string v4, "SIMStateChangeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasSetupWizRun = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .end local v0           #hasSetupWizRun:I
    :cond_0
    :goto_0
    return-void

    .line 33
    .restart local v0       #hasSetupWizRun:I
    :cond_1
    const-string v4, "ss"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, mSimState:Ljava/lang/String;
    const-string v4, "SIMStateChangeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    if-eqz v2, :cond_2

    const-string v4, "ABSENT"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    :cond_2
    if-eqz v2, :cond_0

    const-string v4, "LOADED"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 44
    const-string v4, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, mSimOperator:Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v3, simStateChange:Landroid/content/Intent;
    const-string v4, "com.htc.CustomizationSetup"

    const-string v5, "com.htc.CustomizationSetup.SIMStateChangeService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v4, "ICC_OPERATOR_NUMERIC"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string v4, "GID1"

    invoke-direct {p0}, Lcom/htc/CustomizationSetup/SIMStateChangeReceiver;->requestGetGID1()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string v4, "SIMStateChangeReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM loaded, start SIM State Change Service, operator="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-virtual {p1, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

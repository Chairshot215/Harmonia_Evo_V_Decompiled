.class public Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;
.super Ljava/lang/Object;
.source "HtcLocalDevicePolicyManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static method_getAllowGPSStatus:Ljava/lang/reflect/Method;

.field private static method_getAllowGoogleLBSStatus:Ljava/lang/reflect/Method;

.field private static method_getAllowVzwLBSStatus:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllowGPSStatus(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)I
    .locals 8
    .parameter "dpm"
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 38
    if-nez p0, :cond_0

    move v2, v3

    .line 65
    :goto_0
    return v2

    .line 42
    :cond_0
    sget-object v1, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->method_getAllowGPSStatus:Ljava/lang/reflect/Method;

    .line 45
    .local v1, method:Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getAllowGPSStatus"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 48
    sput-object v1, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->method_getAllowGPSStatus:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 52
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    move v2, v3

    .line 65
    goto :goto_0

    .line 55
    :catch_1
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 60
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 57
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 62
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 63
    .local v0, e:Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "NoSuchMethodException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getAllowGoogleLBSStatus(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)I
    .locals 8
    .parameter "dpm"
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 120
    if-nez p0, :cond_0

    move v2, v3

    .line 147
    :goto_0
    return v2

    .line 124
    :cond_0
    sget-object v1, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->method_getAllowGoogleLBSStatus:Ljava/lang/reflect/Method;

    .line 127
    .local v1, method:Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getAllowGoogleLBSStatus"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 130
    sput-object v1, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->method_getAllowGoogleLBSStatus:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 134
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    move v2, v3

    .line 147
    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 142
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 143
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 139
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 140
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 144
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "NoSuchMethodException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static getAllowVzwLBSStatus(Landroid/app/admin/DevicePolicyManager;Landroid/content/ComponentName;)I
    .locals 8
    .parameter "dpm"
    .parameter "who"

    .prologue
    const/4 v3, 0x0

    .line 79
    if-nez p0, :cond_0

    move v2, v3

    .line 106
    :goto_0
    return v2

    .line 83
    :cond_0
    sget-object v1, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->method_getAllowVzwLBSStatus:Ljava/lang/reflect/Method;

    .line 86
    .local v1, method:Ljava/lang/reflect/Method;
    if-nez v1, :cond_1

    .line 87
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "getAllowVzwLBSStatus"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 89
    sput-object v1, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->method_getAllowVzwLBSStatus:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 93
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    move v2, v3

    .line 106
    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 101
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 102
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_3
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    .line 103
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 104
    .local v0, e:Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/android/settings/framework/bridge/HtcLocalDevicePolicyManager;->TAG:Ljava/lang/String;

    const-string v4, "NoSuchMethodException"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

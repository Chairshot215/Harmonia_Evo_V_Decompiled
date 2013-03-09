.class public Lcom/android/providers/telephony/util/TelephUtils;
.super Ljava/lang/Object;
.source "TelephUtils.java"


# static fields
.field public static final HTC_DEBUG:Z = false

.field private static final PERF_KEY_CORRUPT_COUNT:Ljava/lang/String; = "pref_key_corrupt_count"

.field private static final PREF_FILE:Ljava/lang/String; = "telephony_pref_file"

.field private static final TAG:Ljava/lang/String; = "TelephUtils"

.field private static s_bHasCheckDbCorruptCount:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/providers/telephony/util/TelephUtils;->s_bHasCheckDbCorruptCount:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDbLoadable(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/telephony/util/TelephUtils$1;

    invoke-direct {v1, p0}, Lcom/android/providers/telephony/util/TelephUtils$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 63
    return-void
.end method

.method public static getDbCorruptCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 33
    const-string v1, "telephony_pref_file"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 34
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "pref_key_corrupt_count"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPhoneType()I
    .locals 7

    .prologue
    .line 68
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 70
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 71
    .local v3, tmanager:Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getCurrentPhoneType"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 75
    .local v1, mth:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    .local v2, rType:Ljava/lang/Object;
    if-eqz v2, :cond_0

    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 77
    check-cast v2, Ljava/lang/Integer;

    .end local v2           #rType:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result v4

    .line 93
    .end local v1           #mth:Ljava/lang/reflect/Method;
    .end local v3           #tmanager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v4

    .line 79
    .restart local v3       #tmanager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 91
    .end local v0           #e:Ljava/lang/SecurityException;
    :cond_0
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 83
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v0

    .line 84
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 85
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 87
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v0

    .line 88
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1

    .line 93
    .end local v0           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v3           #tmanager:Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    goto :goto_0
.end method

.method public static declared-synchronized resetDbCorruptCountAtFirstLaunch(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 45
    const-class v3, Lcom/android/providers/telephony/util/TelephUtils;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/android/providers/telephony/util/TelephUtils;->s_bHasCheckDbCorruptCount:Z

    if-nez v2, :cond_0

    .line 46
    const-string v2, "TelephUtils"

    const-string v4, "resetDbCorruptCountAtFirstLaunch"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    const-string v2, "telephony_pref_file"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 48
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 49
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_corrupt_count"

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 51
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/providers/telephony/util/TelephUtils;->s_bHasCheckDbCorruptCount:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_0
    monitor-exit v3

    return-void

    .line 45
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static setDbCorruptCount(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "count"

    .prologue
    .line 38
    const-string v2, "telephony_pref_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 40
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_key_corrupt_count"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    return-void
.end method

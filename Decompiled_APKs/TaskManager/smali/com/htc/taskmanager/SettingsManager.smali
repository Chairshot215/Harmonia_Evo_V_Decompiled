.class public Lcom/htc/taskmanager/SettingsManager;
.super Ljava/lang/Object;
.source "SettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/taskmanager/SettingsManager$ThresholdSettingObserver;
    }
.end annotation


# static fields
.field private static final DEFAULT_MEMORY_THRESHOLD:I = 0xa

.field private static final PRODUCTION_CHECK_INTERVAL:I = 0x493e0

.field private static final QA_MODE_CHECK_INTERVAL:I = 0x2710

.field private static sInstance:Lcom/htc/taskmanager/SettingsManager;

.field private static final sQAMode:Z

.field private static final sQAModeThreshold:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/htc/taskmanager/SettingsManager;->isQAMode()Z

    move-result v0

    sput-boolean v0, Lcom/htc/taskmanager/SettingsManager;->sQAMode:Z

    .line 25
    invoke-static {}, Lcom/htc/taskmanager/SettingsManager;->getQAModeThreshold()I

    move-result v0

    sput v0, Lcom/htc/taskmanager/SettingsManager;->sQAModeThreshold:I

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/taskmanager/SettingsManager;->sInstance:Lcom/htc/taskmanager/SettingsManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/taskmanager/SettingsManager;->mContext:Landroid/content/Context;

    .line 28
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/htc/taskmanager/SettingsManager;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/htc/taskmanager/SettingsManager;->mContext:Landroid/content/Context;

    .line 52
    const-string v1, "htc_application_notification"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 53
    .local v0, thresholdSettingUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/taskmanager/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/htc/taskmanager/SettingsManager$ThresholdSettingObserver;

    iget-object v4, p0, Lcom/htc/taskmanager/SettingsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcom/htc/taskmanager/SettingsManager$ThresholdSettingObserver;-><init>(Lcom/htc/taskmanager/SettingsManager;Landroid/os/Handler;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/htc/taskmanager/SettingsManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/htc/taskmanager/SettingsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCheckInterval()I
    .locals 1

    .prologue
    .line 98
    sget-boolean v0, Lcom/htc/taskmanager/SettingsManager;->sQAMode:Z

    if-eqz v0, :cond_0

    .line 99
    const/16 v0, 0x2710

    .line 101
    :goto_0
    return v0

    :cond_0
    const v0, 0x493e0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/taskmanager/SettingsManager;
    .locals 1
    .parameter "c"

    .prologue
    .line 43
    sget-object v0, Lcom/htc/taskmanager/SettingsManager;->sInstance:Lcom/htc/taskmanager/SettingsManager;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/htc/taskmanager/SettingsManager;

    invoke-direct {v0, p0}, Lcom/htc/taskmanager/SettingsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/taskmanager/SettingsManager;->sInstance:Lcom/htc/taskmanager/SettingsManager;

    .line 46
    :cond_0
    sget-object v0, Lcom/htc/taskmanager/SettingsManager;->sInstance:Lcom/htc/taskmanager/SettingsManager;

    return-object v0
.end method

.method private static getQAModeThreshold()I
    .locals 4

    .prologue
    .line 86
    const/16 v2, 0xa

    .line 88
    .local v2, v:I
    :try_start_0
    const-string v3, "com.htc.taskmanager.Config"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "THRESHOLD"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 90
    .local v1, f:Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 94
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #f:Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 91
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isQAMode()Z
    .locals 4

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 74
    .local v2, v:Z
    :try_start_0
    const-string v3, "com.htc.taskmanager.Config"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "QA_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 76
    .local v1, f:Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 80
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v1           #f:Ljava/lang/reflect/Field;
    :goto_0
    return v2

    .line 77
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public getAutorunSettingValue()Z
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/htc/taskmanager/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "htc_application_automatic_startup"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 58
    .local v0, v:Z
    return v0
.end method

.method public getThresholdSettingValue()I
    .locals 3

    .prologue
    .line 62
    sget-boolean v0, Lcom/htc/taskmanager/SettingsManager;->sQAMode:Z

    if-eqz v0, :cond_0

    .line 63
    sget v0, Lcom/htc/taskmanager/SettingsManager;->sQAModeThreshold:I

    .line 65
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/taskmanager/SettingsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "htc_application_notification"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

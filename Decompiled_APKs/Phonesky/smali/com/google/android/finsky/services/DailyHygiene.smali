.class public Lcom/google/android/finsky/services/DailyHygiene;
.super Landroid/app/Service;
.source "DailyHygiene.java"


# static fields
.field public static final BOOT_DELAY_MS:J

.field public static final IMMEDIATE_DELAY_MS:J

.field public static final REGULAR_INTERVAL_MS:J

.field private static final RETRY_INTERVALS:[I

.field public static final RETRY_INTERVAL_MS:J

.field private static final UPDATE_CHECK:Landroid/content/Intent;


# instance fields
.field private mUpdateSuccess:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneImmediateDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->IMMEDIATE_DELAY_MS:J

    .line 34
    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneBootDelayMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->BOOT_DELAY_MS:J

    .line 36
    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneRegularIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    .line 38
    sget-object v0, Lcom/google/android/finsky/config/G;->dailyHygieneRetryIntervalMs:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVAL_MS:J

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVALS:[I

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/services/DailyHygiene;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/services/DailyHygiene;->UPDATE_CHECK:Landroid/content/Intent;

    return-void

    .line 40
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0x1bt 0x0t 0x0t 0x0t
        0x51t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/services/DailyHygiene;->mUpdateSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/DailyHygiene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/services/DailyHygiene;->onLoaded()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/finsky/services/DailyHygiene;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/google/android/finsky/services/DailyHygiene;->mUpdateSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/android/finsky/services/DailyHygiene;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/finsky/services/DailyHygiene;->reschedule()V

    return-void
.end method

.method public static goMakeHygieneIfDirty(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-static {}, Lcom/google/android/finsky/services/DailyHygiene;->needsDailyHygiene()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/finsky/services/DailyHygiene;->hasDatabaseVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    const-string v0, "Dirty, need more hygiene."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    sget-wide v0, Lcom/google/android/finsky/services/DailyHygiene;->IMMEDIATE_DELAY_MS:J

    invoke-static {p0, v0, v1}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v0, "No need to run daily hygiene."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static hasDatabaseVersionChanged()Z
    .locals 3

    .prologue
    .line 171
    sget-object v2, Lcom/google/android/finsky/utils/FinskyPreferences;->lastReplicatedDatabaseVersion:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 172
    .local v1, prevDatabaseVersion:I
    invoke-static {}, Lcom/google/android/finsky/library/SQLiteLibrary;->getVersion()I

    move-result v0

    .line 173
    .local v0, currentDatabaseVersion:I
    if-eq v1, v0, :cond_0

    .line 174
    const/4 v2, 0x1

    .line 176
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static needsDailyHygiene()Z
    .locals 6

    .prologue
    .line 163
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onLoaded()V
    .locals 8

    .prologue
    .line 98
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v2

    .line 99
    .local v2, libraries:Lcom/google/android/finsky/library/Libraries;
    new-instance v0, Lcom/google/android/finsky/appstate/UpdateChecker;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v3

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstallPolicies()Lcom/google/android/finsky/installer/InstallPolicies;

    move-result-object v5

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getInstaller()Lcom/google/android/finsky/receivers/Installer;

    move-result-object v6

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v7

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/finsky/appstate/UpdateChecker;-><init>(Landroid/content/Context;Lcom/google/android/finsky/library/Libraries;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/api/DfeApiProvider;Lcom/google/android/finsky/installer/InstallPolicies;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;)V

    .line 107
    .local v0, updateChecker:Lcom/google/android/finsky/appstate/UpdateChecker;
    invoke-virtual {v2}, Lcom/google/android/finsky/library/Libraries;->cleanup()V

    .line 109
    new-instance v1, Lcom/google/android/finsky/services/DailyHygiene$2;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/services/DailyHygiene$2;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    new-instance v3, Lcom/google/android/finsky/services/DailyHygiene$3;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/services/DailyHygiene$3;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/finsky/appstate/UpdateChecker;->checkForUpdates(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 123
    return-void
.end method

.method private reschedule()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 129
    iget-boolean v3, p0, Lcom/google/android/finsky/services/DailyHygiene;->mUpdateSuccess:Z

    if-eqz v3, :cond_1

    .line 130
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 134
    sget-wide v3, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x3fe0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    add-double/2addr v5, v7

    mul-double/2addr v3, v5

    double-to-long v1, v3

    .line 135
    .local v1, interval:J
    const-string v3, "Scheduling first run in %1.1f hours"

    new-array v4, v10, [Ljava/lang/Object;

    long-to-float v5, v1

    const v6, 0x4a5bba00

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    :goto_0
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneLastSuccessMs:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 141
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->lastReplicatedDatabaseVersion:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {}, Lcom/google/android/finsky/library/SQLiteLibrary;->getVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 155
    :goto_1
    invoke-static {p0, v1, v2}, Lcom/google/android/finsky/services/DailyHygiene;->schedule(Landroid/content/Context;J)V

    .line 156
    invoke-virtual {p0}, Lcom/google/android/finsky/services/DailyHygiene;->stopSelf()V

    .line 157
    return-void

    .line 137
    .end local v1           #interval:J
    :cond_0
    sget-wide v1, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    .restart local v1       #interval:J
    goto :goto_0

    .line 143
    .end local v1           #interval:J
    :cond_1
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 144
    .local v0, failures:I
    sget-object v3, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVALS:[I

    array-length v3, v3

    if-gt v0, v3, :cond_2

    .line 145
    sget-object v3, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVALS:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    int-to-long v3, v3

    sget-wide v5, Lcom/google/android/finsky/services/DailyHygiene;->RETRY_INTERVAL_MS:J

    mul-long v1, v3, v5

    .line 146
    .restart local v1       #interval:J
    const-string v3, "Scheduling new run in %d minutes (failures=%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-wide/32 v5, 0xea60

    div-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    .end local v1           #interval:J
    :cond_2
    const-string v3, "Giving up. (failures=%d)"

    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dailyHygieneFailedCount:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 152
    sget-wide v1, Lcom/google/android/finsky/services/DailyHygiene;->REGULAR_INTERVAL_MS:J

    .restart local v1       #interval:J
    goto :goto_1
.end method

.method public static schedule(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "delayMs"

    .prologue
    const/4 v4, 0x0

    .line 65
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 66
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    sget-object v3, Lcom/google/android/finsky/services/DailyHygiene;->UPDATE_CHECK:Landroid/content/Intent;

    invoke-static {p0, v4, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 68
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 79
    new-instance v0, Lcom/google/android/finsky/services/DailyHygiene$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/DailyHygiene$1;-><init>(Lcom/google/android/finsky/services/DailyHygiene;)V

    .line 89
    .local v0, continueRunnable:Ljava/lang/Runnable;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraries()Lcom/google/android/finsky/library/Libraries;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/library/Libraries;->load(Ljava/lang/Runnable;)V

    .line 90
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getLibraryReplicators()Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v1

    const-string v2, "daily-hygiene"

    invoke-interface {v1, v0, v2}, Lcom/google/android/finsky/library/LibraryReplicators;->replicateAllAccounts(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getAppStates()Lcom/google/android/finsky/appstate/AppStates;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    .line 93
    const/4 v1, 0x2

    return v1
.end method

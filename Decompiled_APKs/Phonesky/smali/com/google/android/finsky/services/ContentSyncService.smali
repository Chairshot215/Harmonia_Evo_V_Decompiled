.class public Lcom/google/android/finsky/services/ContentSyncService;
.super Landroid/app/Service;
.source "ContentSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/services/ContentSyncService$Facade;
    }
.end annotation


# static fields
.field private static final WAKE_ME_UP:Landroid/content/Intent;


# instance fields
.field private final mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

.field private mReplicating:Z

.field private mReplicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

.field private mReplicationRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    const-class v2, Lcom/google/android/finsky/services/ContentSyncService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/finsky/services/ContentSyncService;->WAKE_ME_UP:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAppStatesReplicator()Lcom/google/android/finsky/appstate/AppStatesReplicator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    .line 146
    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$5;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/services/ContentSyncService$5;-><init>(Lcom/google/android/finsky/services/ContentSyncService;)V

    iput-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/services/ContentSyncService;)Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationListener:Lcom/google/android/finsky/appstate/AppStatesReplicator$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/services/ContentSyncService;)Lcom/google/android/finsky/appstate/AppStatesReplicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->scheduleReplication()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/finsky/services/ContentSyncService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicating:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/services/ContentSyncService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationRequested:Z

    return v0
.end method

.method public static get()Lcom/google/android/finsky/services/ContentSyncService$Facade;
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$2;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ContentSyncService$2;-><init>()V

    return-object v0
.end method

.method private static scheduleReplication()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 177
    sget-object v4, Lcom/google/android/finsky/utils/FinskyPreferences;->installationReplicationRetries:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v4}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 178
    .local v3, retries:I
    if-nez v3, :cond_0

    const-wide/16 v1, 0x3a98

    .line 179
    .local v1, delay:J
    :goto_0
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Lcom/google/android/finsky/FinskyApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 181
    .local v0, alarmManager:Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    sget-object v7, Lcom/google/android/finsky/services/ContentSyncService;->WAKE_ME_UP:Landroid/content/Intent;

    invoke-static {v6, v8, v7, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v8, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 183
    return-void

    .line 178
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #delay:J
    :cond_0
    const-wide/16 v1, 0x4e20

    goto :goto_0
.end method

.method public static setupListeners(Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
    .locals 1
    .parameter "libraryReplicators"
    .parameter "packageMonitorReceiver"

    .prologue
    .line 107
    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$3;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ContentSyncService$3;-><init>()V

    invoke-interface {p0, v0}, Lcom/google/android/finsky/library/LibraryReplicators;->addListener(Lcom/google/android/finsky/library/LibraryReplicators$Listener;)V

    .line 118
    new-instance v0, Lcom/google/android/finsky/services/ContentSyncService$4;

    invoke-direct {v0}, Lcom/google/android/finsky/services/ContentSyncService$4;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/finsky/receivers/PackageMonitorReceiver;->attach(Lcom/google/android/finsky/receivers/PackageMonitorReceiver$PackageStatusListener;)V

    .line 144
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicating:Z

    if-eqz v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationRequested:Z

    .line 82
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 74
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mReplicationRequested:Z

    .line 75
    iget-object v0, p0, Lcom/google/android/finsky/services/ContentSyncService;->mAppStatesReplicator:Lcom/google/android/finsky/appstate/AppStatesReplicator;

    new-instance v1, Lcom/google/android/finsky/services/ContentSyncService$1;

    invoke-direct {v1, p0}, Lcom/google/android/finsky/services/ContentSyncService$1;-><init>(Lcom/google/android/finsky/services/ContentSyncService;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStatesReplicator;->load(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

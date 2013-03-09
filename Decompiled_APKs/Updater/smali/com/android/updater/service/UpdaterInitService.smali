.class public Lcom/android/updater/service/UpdaterInitService;
.super Landroid/app/Service;
.source "UpdaterInitService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/updater/service/UpdaterInitService$InitThread;,
        Lcom/android/updater/service/UpdaterInitService$CustomizeThread;
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "UpdaterAPK | UpdaterInitService"

.field private static final UPDATE_RECORD_FILE:Ljava/lang/String; = "update_record"

.field private static final UPDATE_RESULT_LOG_PATH:Ljava/lang/String; = "/data/data/recovery/HTCFOTA/update_result.log"

.field private static final UPDATE_RESULT_NO_ERROR_MSG:Ljava/lang/String; = "NA"

.field private static isCustomizeStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/updater/service/UpdaterInitService;->isCustomizeStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 188
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/updater/service/UpdaterInitService;->isCustomizeStarted:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-boolean p0, Lcom/android/updater/service/UpdaterInitService;->isCustomizeStarted:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/updater/service/UpdaterInitService;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/updater/service/UpdaterInitService;->getCustomizeData(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private getCustomizeData(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .parameter "settings"
    .parameter "keyValue"

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, returnValue:Z
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, value:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 176
    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :cond_1
    const-string v2, "Default_Download_Wifi"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Enable_Backup"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getValueString(Z)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 167
    if-eqz p1, :cond_0

    const-string v0, "yes"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "no"

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 52
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 58
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v1, "customize_change"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, isCustomizeChange:Z
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;

    invoke-direct {v1, p0, p0}, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;-><init>(Lcom/android/updater/service/UpdaterInitService;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/updater/service/UpdaterInitService$CustomizeThread;->start()V

    .line 72
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 69
    :cond_0
    new-instance v1, Lcom/android/updater/service/UpdaterInitService$InitThread;

    invoke-direct {v1, p0, p0, v2}, Lcom/android/updater/service/UpdaterInitService$InitThread;-><init>(Lcom/android/updater/service/UpdaterInitService;Landroid/content/Context;Z)V

    invoke-virtual {v1}, Lcom/android/updater/service/UpdaterInitService$InitThread;->start()V

    goto :goto_0
.end method

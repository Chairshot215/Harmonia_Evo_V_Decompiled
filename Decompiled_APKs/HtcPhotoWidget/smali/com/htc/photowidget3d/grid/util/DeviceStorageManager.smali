.class public Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;
.super Ljava/lang/Object;
.source "DeviceStorageManager.java"


# static fields
.field private static final m_bSupportPhoneStorage:Z

.field private static final m_nSupportedStorages:I

.field private static m_szExternalStorageState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Landroid/os/Environment;->getSupportedStorages()I

    move-result v0

    sput v0, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_nSupportedStorages:I

    .line 14
    sget v0, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_nSupportedStorages:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    .line 15
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageState(Z)Ljava/lang/String;
    .locals 2
    .parameter "bRefresh"

    .prologue
    .line 24
    sget-object v0, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 34
    .local v0, state:Ljava/lang/String;
    sget-object v1, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz p0, :cond_1

    .line 36
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 38
    :cond_1
    sget-object v0, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_szExternalStorageState:Ljava/lang/String;

    .line 41
    return-object v0
.end method

.method public static isExternalStorageReady(Z)Z
    .locals 1
    .parameter "requireWriteAccess"

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->getExternalStorageState(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->isStorageReady(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isStorageMediaMounted(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 46
    const-string v0, "mounted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isStorageMediaReadOnly(Ljava/lang/String;)Z
    .locals 1
    .parameter "State"

    .prologue
    .line 51
    const-string v0, "mounted_ro"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isStorageReady(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "state"
    .parameter "requireWriteAccess"

    .prologue
    .line 56
    invoke-static {p0}, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->isStorageMediaMounted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->isStorageMediaReadOnly(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportPhoneStorage()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/htc/photowidget3d/grid/util/DeviceStorageManager;->m_bSupportPhoneStorage:Z

    return v0
.end method

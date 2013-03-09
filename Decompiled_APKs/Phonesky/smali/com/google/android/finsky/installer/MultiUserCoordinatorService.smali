.class public Lcom/google/android/finsky/installer/MultiUserCoordinatorService;
.super Landroid/app/Service;
.source "MultiUserCoordinatorService.java"


# instance fields
.field private DEBUG_FORCE_BUSY_WITH_DELAY:Z

.field private final mBinder:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;

.field private mDebugPackageJustReleased:Ljava/lang/String;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/UserHandle;",
            "Lcom/google/android/finsky/installer/IMultiUserCoordinatorServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageOwners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->DEBUG_FORCE_BUSY_WITH_DELAY:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mDebugPackageJustReleased:Ljava/lang/String;

    .line 43
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;

    .line 46
    invoke-static {}, Lcom/google/android/finsky/utils/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;

    .line 60
    new-instance v0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;

    invoke-direct {v0, p0}, Lcom/google/android/finsky/installer/MultiUserCoordinatorService$1;-><init>(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)V

    iput-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mBinder:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mListeners:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->DEBUG_FORCE_BUSY_WITH_DELAY:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mDebugPackageJustReleased:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mDebugPackageJustReleased:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/finsky/installer/MultiUserCoordinatorService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mPackageOwners:Ljava/util/HashMap;

    return-object v0
.end method

.method public static createBindIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .parameter

    .prologue
    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/finsky/installer/MultiUserCoordinatorService;->mBinder:Lcom/google/android/finsky/installer/IMultiUserCoordinatorService$Stub;

    return-object v0
.end method

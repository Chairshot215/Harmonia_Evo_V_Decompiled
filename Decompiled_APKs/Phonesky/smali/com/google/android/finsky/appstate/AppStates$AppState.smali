.class public Lcom/google/android/finsky/appstate/AppStates$AppState;
.super Ljava/lang/Object;
.source "AppStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/appstate/AppStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppState"
.end annotation


# instance fields
.field public final installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

.field public final packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

.field public final packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 0
    .parameter "packageName"
    .parameter "packageManagerState"
    .parameter "installerData"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    .line 36
    iput-object p3, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    .line 37
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, -0x1

    .line 41
    const-string v2, "{package=%s installed=%d desired=%d}"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageName:Ljava/lang/String;

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->packageManagerState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    iget v0, v0, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->installedVersion:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/AppStates$AppState;->installerData:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-virtual {v1}, Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;->getDesiredVersion()I

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.class Lcom/htc/store/util/InstallationUtils$ApkUnInstallObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "InstallationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/util/InstallationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApkUnInstallObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0
    .parameter "context"
    .parameter "label"
    .parameter "onlineId"
    .parameter "contentType"
    .parameter "id"

    .prologue
    .line 284
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    .line 290
    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "retCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 294
    invoke-static {}, Lcom/htc/store/util/InstallationUtils;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Package UN-Installed: "

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    const/4 v2, 0x2

    const-string v3, ", result: "

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    if-ne p2, v4, :cond_0

    .line 304
    :cond_0
    return-void
.end method

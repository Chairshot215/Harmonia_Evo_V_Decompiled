.class Lcom/google/android/finsky/utils/SelfUpdateScheduler$2$1;
.super Ljava/lang/Object;
.source "SelfUpdateScheduler.java"

# interfaces
.implements Lcom/google/android/finsky/utils/PackageManagerHelper$InstallPackageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/google/android/finsky/utils/SelfUpdateScheduler$2$1;->this$1:Lcom/google/android/finsky/utils/SelfUpdateScheduler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installCompleted(ZLjava/lang/String;)V
    .locals 5
    .parameter "successful"
    .parameter "failReason"

    .prologue
    .line 161
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v1, "install.installerFinished"

    const-string v2, "selfupdate"

    invoke-interface {v0, v1, v2, p2}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v1, "selfUpdateInstallDone"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "r"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    return-void
.end method

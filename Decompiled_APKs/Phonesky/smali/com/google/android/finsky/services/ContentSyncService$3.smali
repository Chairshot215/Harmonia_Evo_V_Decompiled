.class final Lcom/google/android/finsky/services/ContentSyncService$3;
.super Ljava/lang/Object;
.source "ContentSyncService.java"

# interfaces
.implements Lcom/google/android/finsky/library/LibraryReplicators$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/services/ContentSyncService;->setupListeners(Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/receivers/PackageMonitorReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMutationsApplied(Lcom/google/android/finsky/library/AccountLibrary;Ljava/lang/String;)V
    .locals 2
    .parameter "library"
    .parameter "libraryId"

    .prologue
    .line 110
    sget-object v0, Lcom/google/android/finsky/library/AccountLibrary;->LIBRARY_ID_APPS:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, "App library has changed, requesting content sync."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-static {}, Lcom/google/android/finsky/services/ContentSyncService;->get()Lcom/google/android/finsky/services/ContentSyncService$Facade;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/services/ContentSyncService$Facade;->scheduleSync()V

    .line 114
    :cond_0
    return-void
.end method

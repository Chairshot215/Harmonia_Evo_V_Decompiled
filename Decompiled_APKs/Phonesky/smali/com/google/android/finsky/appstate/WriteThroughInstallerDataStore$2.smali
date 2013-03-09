.class Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$2;
.super Ljava/lang/Object;
.source "WriteThroughInstallerDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

.field final synthetic val$state:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$2;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$2;->val$state:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$2;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    #getter for: Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-static {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->access$000(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;)Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$2;->val$state:Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;

    invoke-interface {v0, v1}, Lcom/google/android/finsky/appstate/InstallerDataStore;->put(Lcom/google/android/finsky/appstate/InstallerDataStore$InstallerData;)V

    .line 109
    return-void
.end method

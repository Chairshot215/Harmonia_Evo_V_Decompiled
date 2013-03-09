.class Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;
.super Ljava/lang/Object;
.source "WriteThroughInstallerDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->setFirstDownloadMs(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

.field final synthetic val$firstDownloadMs:J

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;->val$packageName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;->val$firstDownloadMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    #getter for: Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-static {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->access$000(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;)Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;->val$packageName:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$9;->val$firstDownloadMs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setFirstDownloadMs(Ljava/lang/String;J)V

    .line 190
    return-void
.end method

.class Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;
.super Ljava/lang/Object;
.source "WriteThroughInstallerDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->setLastNotifiedVersion(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

.field final synthetic val$lastNotifiedVersion:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;->val$lastNotifiedVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    #getter for: Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-static {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->access$000(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;)Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$6;->val$lastNotifiedVersion:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setLastNotifiedVersion(Ljava/lang/String;I)V

    .line 154
    return-void
.end method

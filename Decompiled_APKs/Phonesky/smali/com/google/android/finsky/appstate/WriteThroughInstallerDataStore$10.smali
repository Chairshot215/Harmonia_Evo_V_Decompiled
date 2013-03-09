.class Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;
.super Ljava/lang/Object;
.source "WriteThroughInstallerDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->setReferrer(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$referrer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    iput-object p2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;->val$referrer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    #getter for: Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->mPersistentStore:Lcom/google/android/finsky/appstate/InstallerDataStore;
    invoke-static {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->access$000(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;)Lcom/google/android/finsky/appstate/InstallerDataStore;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$10;->val$referrer:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/finsky/appstate/InstallerDataStore;->setReferrer(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

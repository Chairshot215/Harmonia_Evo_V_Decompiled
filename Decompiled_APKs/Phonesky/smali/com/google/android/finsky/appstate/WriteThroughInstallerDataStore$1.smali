.class Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$1;
.super Ljava/lang/Object;
.source "WriteThroughInstallerDataStore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->load(Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$1;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore$1;->this$0:Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/WriteThroughInstallerDataStore;->load()V

    .line 86
    return-void
.end method

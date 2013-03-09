.class Lcom/google/android/finsky/FinskyApp$3;
.super Ljava/lang/Object;
.source "FinskyApp.java"

# interfaces
.implements Lcom/google/android/finsky/library/Libraries$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/FinskyApp;->setupAccountLibrariesAndReplicator(Landroid/os/Handler;Landroid/os/Handler;Lcom/google/android/finsky/library/Accounts;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/FinskyApp;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/FinskyApp;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    iput-object p1, p0, Lcom/google/android/finsky/FinskyApp$3;->this$0:Lcom/google/android/finsky/FinskyApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllLibrariesLoaded()V
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/android/finsky/FinskyApp$3;->this$0:Lcom/google/android/finsky/FinskyApp;

    #getter for: Lcom/google/android/finsky/FinskyApp;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;
    invoke-static {v0}, Lcom/google/android/finsky/FinskyApp;->access$000(Lcom/google/android/finsky/FinskyApp;)Lcom/google/android/finsky/library/LibraryReplicators;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/finsky/library/LibraryReplicators;->reinitialize()V

    .line 407
    return-void
.end method

.method public onLibraryContentsChanged(Lcom/google/android/finsky/library/AccountLibrary;)V
    .locals 0
    .parameter "library"

    .prologue
    .line 412
    return-void
.end method

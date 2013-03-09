.class Lcom/google/android/talk/fragments/RosterListFragment$2;
.super Ljava/lang/Object;
.source "RosterListFragment.java"

# interfaces
.implements Lcom/google/android/talk/ServiceAvailableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/RosterListFragment;->startLoading(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/RosterListFragment;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/RosterListFragment;ILandroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    iput p2, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->val$id:I

    iput-object p3, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->val$args:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lcom/google/android/gtalkservice/IGTalkService;)V
    .locals 5
    .parameter "service"

    .prologue
    .line 266
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    const-string v2, "startLoading serviceAvailable runnable"

    #calls: Lcom/google/android/talk/fragments/RosterListFragment;->logv(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/google/android/talk/fragments/RosterListFragment;->access$000(Lcom/google/android/talk/fragments/RosterListFragment;Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    #getter for: Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v1}, Lcom/google/android/talk/fragments/RosterListFragment;->access$100(Lcom/google/android/talk/fragments/RosterListFragment;)Landroid/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->val$id:I

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v0

    .line 268
    .local v0, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {v0}, Landroid/content/Loader;->forceLoad()V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    #getter for: Lcom/google/android/talk/fragments/RosterListFragment;->mLoaderManager:Landroid/app/LoaderManager;
    invoke-static {v1}, Lcom/google/android/talk/fragments/RosterListFragment;->access$100(Lcom/google/android/talk/fragments/RosterListFragment;)Landroid/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->val$id:I

    iget-object v3, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->val$args:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/google/android/talk/fragments/RosterListFragment$2;->this$0:Lcom/google/android/talk/fragments/RosterListFragment;

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

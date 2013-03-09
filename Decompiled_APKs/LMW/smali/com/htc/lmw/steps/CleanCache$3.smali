.class Lcom/htc/lmw/steps/CleanCache$3;
.super Ljava/lang/Object;
.source "CleanCache.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/CleanCache;->showAppsLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/lmw/steps/CleanCache;


# direct methods
.method constructor <init>(Lcom/htc/lmw/steps/CleanCache;)V
    .locals 0
    .parameter

    .prologue
    .line 282
    iput-object p1, p0, Lcom/htc/lmw/steps/CleanCache$3;->this$0:Lcom/htc/lmw/steps/CleanCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache$3;->this$0:Lcom/htc/lmw/steps/CleanCache;

    #getter for: Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;
    invoke-static {v0}, Lcom/htc/lmw/steps/CleanCache;->access$200(Lcom/htc/lmw/steps/CleanCache;)Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache$3;->this$0:Lcom/htc/lmw/steps/CleanCache;

    #getter for: Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;
    invoke-static {v0}, Lcom/htc/lmw/steps/CleanCache;->access$200(Lcom/htc/lmw/steps/CleanCache;)Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;->interrupt()V

    .line 288
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache$3;->this$0:Lcom/htc/lmw/steps/CleanCache;

    const/4 v1, 0x0

    #setter for: Lcom/htc/lmw/steps/CleanCache;->loader:Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;
    invoke-static {v0, v1}, Lcom/htc/lmw/steps/CleanCache;->access$202(Lcom/htc/lmw/steps/CleanCache;Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;)Lcom/htc/lmw/steps/CleanCache$AppsLoaderThread;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache$3;->this$0:Lcom/htc/lmw/steps/CleanCache;

    #calls: Lcom/htc/lmw/steps/CleanCache;->dismissLoadingDialog()V
    invoke-static {v0}, Lcom/htc/lmw/steps/CleanCache;->access$300(Lcom/htc/lmw/steps/CleanCache;)V

    .line 291
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache$3;->this$0:Lcom/htc/lmw/steps/CleanCache;

    invoke-virtual {v0}, Lcom/htc/lmw/steps/CleanCache;->finish()V

    .line 292
    return-void
.end method

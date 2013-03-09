.class Lcom/htc/lmw/steps/CleanCache$2;
.super Ljava/lang/Object;
.source "CleanCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/lmw/steps/CleanCache;->onAppsLoaded(Ljava/util/List;)V
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
    .line 254
    iput-object p1, p0, Lcom/htc/lmw/steps/CleanCache$2;->this$0:Lcom/htc/lmw/steps/CleanCache;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache$2;->this$0:Lcom/htc/lmw/steps/CleanCache;

    #calls: Lcom/htc/lmw/steps/CleanCache;->dismissLoadingDialog()V
    invoke-static {v0}, Lcom/htc/lmw/steps/CleanCache;->access$000(Lcom/htc/lmw/steps/CleanCache;)V

    .line 259
    iget-object v0, p0, Lcom/htc/lmw/steps/CleanCache$2;->this$0:Lcom/htc/lmw/steps/CleanCache;

    const/4 v1, 0x1

    #calls: Lcom/htc/lmw/steps/CleanCache;->setNextButtonEnabled(Z)V
    invoke-static {v0, v1}, Lcom/htc/lmw/steps/CleanCache;->access$100(Lcom/htc/lmw/steps/CleanCache;Z)V

    .line 260
    return-void
.end method

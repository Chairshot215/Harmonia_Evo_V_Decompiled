.class Lcom/htc/album/helper/OnlineDeleteManager$4;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/OnlineDeleteManager;->deleteMultipleMedia(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/OnlineDeleteManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$4;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$4;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$300(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/htc/album/helper/OnlineDeleteManager$4;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    #getter for: Lcom/htc/album/helper/OnlineDeleteManager;->mDeleteCallback:Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/OnlineDeleteManager;->access$300(Lcom/htc/album/helper/OnlineDeleteManager;)Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/album/helper/OnlineDeleteManager$DeleteCallbackListener;->onDismissDeleteAll()V

    .line 115
    :cond_0
    return-void
.end method

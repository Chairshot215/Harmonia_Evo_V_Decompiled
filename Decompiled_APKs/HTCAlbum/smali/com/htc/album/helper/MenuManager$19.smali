.class Lcom/htc/album/helper/MenuManager$19;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->setFavorite(Landroid/app/Activity;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 4859
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$19;->this$0:Lcom/htc/album/helper/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 4861
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$19;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$1200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$19;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$1200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4863
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$19;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mSetAsThread:Lcom/htc/album/helper/MenuManager$SetAsFavorThread;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$1200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$SetAsFavorThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/album/helper/MenuManager$SetAsFavorThread;->cancel()V

    .line 4865
    :cond_0
    return-void
.end method

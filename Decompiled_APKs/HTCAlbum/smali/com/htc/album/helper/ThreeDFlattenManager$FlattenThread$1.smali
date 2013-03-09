.class Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$1;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$1;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1188
    const/4 v0, 0x0

    .line 1189
    .local v0, isNeedActivityFinish:Z
    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$1;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v2, v2, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$1;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v2, v2, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->targetIntent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$900(Lcom/htc/album/helper/ThreeDFlattenManager;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "share_single_mode"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 1190
    :goto_0
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$1;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v1, v1, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->onShowSDCardFullDialog(Z)V

    .line 1191
    return-void

    :cond_0
    move v0, v1

    .line 1189
    goto :goto_0
.end method

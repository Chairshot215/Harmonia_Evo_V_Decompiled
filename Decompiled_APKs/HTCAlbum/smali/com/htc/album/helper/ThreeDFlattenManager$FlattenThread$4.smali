.class Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$4;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->release()V
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
    .line 1470
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$4;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$4;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$700(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1475
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$4;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v0, v0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->mFlattenCallback:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$700(Lcom/htc/album/helper/ThreeDFlattenManager;)Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$4;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    iget-object v1, v1, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->this$0:Lcom/htc/album/helper/ThreeDFlattenManager;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager;->featureID:I
    invoke-static {v1}, Lcom/htc/album/helper/ThreeDFlattenManager;->access$1500(Lcom/htc/album/helper/ThreeDFlattenManager;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenCallbackListener;->onFlattenEnd(I)V

    .line 1477
    :cond_0
    return-void
.end method

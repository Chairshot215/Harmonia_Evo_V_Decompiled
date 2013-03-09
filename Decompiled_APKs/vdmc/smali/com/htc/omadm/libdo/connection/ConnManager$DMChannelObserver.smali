.class Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;
.super Ljava/lang/Object;
.source "ConnManager.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/omadm/libdo/connection/ConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DMChannelObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/libdo/connection/ConnManager;


# direct methods
.method constructor <init>(Lcom/htc/omadm/libdo/connection/ConnManager;)V
    .locals 0
    .parameter

    .prologue
    .line 346
    iput-object p1, p0, Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 3
    .parameter "obj"
    .parameter "arg"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #setter for: Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I
    invoke-static {v1, v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->access$002(Lcom/htc/omadm/libdo/connection/ConnManager;I)I

    .line 349
    const-string v0, "ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMChannel is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/htc/omadm/libdo/connection/ConnManager$DMChannelObserver;->this$0:Lcom/htc/omadm/libdo/connection/ConnManager;

    #getter for: Lcom/htc/omadm/libdo/connection/ConnManager;->mDMChannelConnState:I
    invoke-static {v0}, Lcom/htc/omadm/libdo/connection/ConnManager;->access$000(Lcom/htc/omadm/libdo/connection/ConnManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 357
    :pswitch_0
    return-void

    .line 350
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

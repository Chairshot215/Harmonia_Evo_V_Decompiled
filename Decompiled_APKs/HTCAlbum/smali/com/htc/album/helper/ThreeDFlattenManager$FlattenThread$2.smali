.class Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$2;
.super Ljava/lang/Object;
.source "ThreeDFlattenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->finished()V
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
    .line 1323
    iput-object p1, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$2;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1326
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$2;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->access$2000(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread$2;->this$1:Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;

    #getter for: Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;->access$2000(Lcom/htc/album/helper/ThreeDFlattenManager$FlattenThread;)Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b00d3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1330
    :cond_0
    return-void
.end method

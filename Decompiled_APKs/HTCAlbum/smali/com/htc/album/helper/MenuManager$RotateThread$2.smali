.class Lcom/htc/album/helper/MenuManager$RotateThread$2;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$RotateThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$RotateThread;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$RotateThread;)V
    .locals 0
    .parameter

    .prologue
    .line 5348
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$RotateThread$2;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5350
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread$2;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5351
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$RotateThread$2;->this$1:Lcom/htc/album/helper/MenuManager$RotateThread;

    #getter for: Lcom/htc/album/helper/MenuManager$RotateThread;->mDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager$RotateThread;->access$1600(Lcom/htc/album/helper/MenuManager$RotateThread;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 5352
    :cond_0
    return-void
.end method

.class Lcom/htc/album/processor/ImageProcessorManager$2;
.super Ljava/lang/Object;
.source "ImageProcessorManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/processor/ImageProcessorManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/processor/ImageProcessorManager;

.field final synthetic val$runSingle:Z


# direct methods
.method constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$2;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    iput-boolean p2, p0, Lcom/htc/album/processor/ImageProcessorManager$2;->val$runSingle:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/htc/album/processor/ImageProcessorManager$2;->val$runSingle:Z

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$2;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->runSingleProcessor()V

    .line 134
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$2;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->runMultipleProcessor()V

    goto :goto_0
.end method

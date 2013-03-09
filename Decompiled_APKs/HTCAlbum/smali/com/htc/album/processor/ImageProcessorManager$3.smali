.class Lcom/htc/album/processor/ImageProcessorManager$3;
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


# direct methods
.method constructor <init>(Lcom/htc/album/processor/ImageProcessorManager;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/htc/album/processor/ImageProcessorManager$3;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "arg1"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/album/processor/ImageProcessorManager$3;->this$0:Lcom/htc/album/processor/ImageProcessorManager;

    check-cast p1, Landroid/app/Dialog;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/htc/album/processor/ImageProcessorManager;->OnProcessEnd(Landroid/app/Dialog;)V

    .line 120
    return-void
.end method

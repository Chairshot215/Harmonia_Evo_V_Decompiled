.class Lcom/htc/album/addons/slideshow/Slideshow3D$4;
.super Ljava/lang/Object;
.source "Slideshow3D.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/Slideshow3D;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/Slideshow3D;)V
    .locals 0
    .parameter

    .prologue
    .line 1356
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$4;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/Slideshow3D$4;->this$0:Lcom/htc/album/addons/slideshow/Slideshow3D;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/Slideshow3D;->finish()V

    .line 1360
    return-void
.end method

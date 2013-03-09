.class Lcom/htc/album/addons/slideshow/SlideShow$5;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/slideshow/SlideShow;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/slideshow/SlideShow;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/slideshow/SlideShow;)V
    .locals 0
    .parameter

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/htc/album/addons/slideshow/SlideShow$5;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/htc/album/addons/slideshow/SlideShow$5;->this$0:Lcom/htc/album/addons/slideshow/SlideShow;

    invoke-virtual {v0}, Lcom/htc/album/addons/slideshow/SlideShow;->finish()V

    .line 1489
    const/4 v0, 0x1

    return v0
.end method

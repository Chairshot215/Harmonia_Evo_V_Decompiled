.class Lcom/htc/video/ViewVideo$14;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/ViewVideo;


# direct methods
.method constructor <init>(Lcom/htc/video/ViewVideo;)V
    .locals 0
    .parameter

    .prologue
    .line 1870
    iput-object p1, p0, Lcom/htc/video/ViewVideo$14;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/htc/video/ViewVideo$14;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mDMP:Z
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$2700(Lcom/htc/video/ViewVideo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1874
    iget-object v0, p0, Lcom/htc/video/ViewVideo$14;->this$0:Lcom/htc/video/ViewVideo;

    #calls: Lcom/htc/video/ViewVideo;->launchFolderList()V
    invoke-static {v0}, Lcom/htc/video/ViewVideo;->access$3300(Lcom/htc/video/ViewVideo;)V

    .line 1876
    :cond_0
    iget-object v0, p0, Lcom/htc/video/ViewVideo$14;->this$0:Lcom/htc/video/ViewVideo;

    invoke-virtual {v0}, Lcom/htc/video/ViewVideo;->finish()V

    .line 1877
    return-void
.end method

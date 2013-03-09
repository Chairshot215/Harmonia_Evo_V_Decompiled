.class Lcom/htc/video/ViewVideo$21;
.super Ljava/lang/Object;
.source "ViewVideo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/ViewVideo;->createSoundEffectDialog()Landroid/app/Dialog;
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
    .line 2973
    iput-object p1, p0, Lcom/htc/video/ViewVideo$21;->this$0:Lcom/htc/video/ViewVideo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 2976
    const-string v0, "SoundEffectDialog"

    const-string v1, "onCancel +++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    iget-object v0, p0, Lcom/htc/video/ViewVideo$21;->this$0:Lcom/htc/video/ViewVideo;

    iget-object v1, p0, Lcom/htc/video/ViewVideo$21;->this$0:Lcom/htc/video/ViewVideo;

    #getter for: Lcom/htc/video/ViewVideo;->mCurrentEffect:I
    invoke-static {v1}, Lcom/htc/video/ViewVideo;->access$000(Lcom/htc/video/ViewVideo;)I

    move-result v1

    #calls: Lcom/htc/video/ViewVideo;->applyNewVideoSoundEffect(IZZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/htc/video/ViewVideo;->access$100(Lcom/htc/video/ViewVideo;IZZ)V

    .line 2978
    const-string v0, "SoundEffectDialog"

    const-string v1, "onCancel ---"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    return-void
.end method

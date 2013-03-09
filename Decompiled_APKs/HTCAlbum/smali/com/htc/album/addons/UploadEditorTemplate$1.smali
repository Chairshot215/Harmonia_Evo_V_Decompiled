.class Lcom/htc/album/addons/UploadEditorTemplate$1;
.super Ljava/lang/Object;
.source "UploadEditorTemplate.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/addons/UploadEditorTemplate;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/addons/UploadEditorTemplate;


# direct methods
.method constructor <init>(Lcom/htc/album/addons/UploadEditorTemplate;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate$1;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

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
    .line 672
    sparse-switch p2, :sswitch_data_0

    .line 679
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 676
    :sswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate$1;->this$0:Lcom/htc/album/addons/UploadEditorTemplate;

    #getter for: Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;
    invoke-static {v0}, Lcom/htc/album/addons/UploadEditorTemplate;->access$600(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 677
    const/4 v0, 0x1

    goto :goto_0

    .line 672
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

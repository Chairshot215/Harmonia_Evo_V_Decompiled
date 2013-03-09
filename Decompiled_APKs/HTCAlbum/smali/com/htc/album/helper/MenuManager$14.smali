.class Lcom/htc/album/helper/MenuManager$14;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showTabletItemDetails(Landroid/content/Context;ILcom/htc/opensense2/album/util/ImageManager$IImage;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;Z)Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;)V
    .locals 0
    .parameter

    .prologue
    .line 3687
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$14;->this$0:Lcom/htc/album/helper/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 3691
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$14;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3693
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$14;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->mDecodeThumbTask:Lcom/htc/album/helper/MenuManager$DecodeThumbTask;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$200(Lcom/htc/album/helper/MenuManager;)Lcom/htc/album/helper/MenuManager$DecodeThumbTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/helper/MenuManager$DecodeThumbTask;->cancel(Z)Z

    .line 3696
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$14;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    if-eqz v0, :cond_1

    .line 3697
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$14;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v0, v0, Lcom/htc/album/helper/MenuManager;->mIDlgEndCallBack:Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;

    invoke-interface {v0}, Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;->OnEndDlgCallBack()V

    .line 3699
    :cond_1
    return-void
.end method

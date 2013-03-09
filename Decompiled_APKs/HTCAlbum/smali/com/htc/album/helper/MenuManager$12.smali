.class Lcom/htc/album/helper/MenuManager$12;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

.field final synthetic val$editText:Landroid/widget/EditText;

.field final synthetic val$isDrm:Z

.field final synthetic val$pos:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;ZLandroid/widget/EditText;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3536
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$12;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-boolean p2, p0, Lcom/htc/album/helper/MenuManager$12;->val$isDrm:Z

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$12;->val$editText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/htc/album/helper/MenuManager$12;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/htc/album/helper/MenuManager$12;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iput p6, p0, Lcom/htc/album/helper/MenuManager$12;->val$pos:I

    iput-object p7, p0, Lcom/htc/album/helper/MenuManager$12;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3539
    iget-boolean v0, p0, Lcom/htc/album/helper/MenuManager$12;->val$isDrm:Z

    if-eqz v0, :cond_0

    .line 3540
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3573
    :goto_0
    return-void

    .line 3544
    :cond_0
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$12;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3546
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 3550
    :cond_1
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$12;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3552
    .local v6, newName:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 3554
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$12;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->access$500(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3555
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 3559
    :cond_2
    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3560
    :cond_3
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$12;->val$context:Landroid/content/Context;

    const v1, 0x7f0b0096

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3563
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 3568
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$12;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/album/helper/MenuManager;->access$600(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3571
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$12;->this$0:Lcom/htc/album/helper/MenuManager;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$12;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$12;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    iget v3, p0, Lcom/htc/album/helper/MenuManager$12;->val$pos:I

    iget-object v4, p0, Lcom/htc/album/helper/MenuManager$12;->val$curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;

    iget-object v5, p0, Lcom/htc/album/helper/MenuManager$12;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->imgName:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/album/helper/MenuManager;->access$500(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/htc/album/helper/MenuManager$12;->this$0:Lcom/htc/album/helper/MenuManager;

    #getter for: Lcom/htc/album/helper/MenuManager;->imgSubName:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/album/helper/MenuManager;->access$600(Lcom/htc/album/helper/MenuManager;)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/htc/album/helper/MenuManager;->renameFile(Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v7}, Lcom/htc/album/helper/MenuManager;->access$700(Lcom/htc/album/helper/MenuManager;Landroid/content/Context;Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;ILcom/htc/opensense2/album/util/ImageManager$IImage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3572
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method

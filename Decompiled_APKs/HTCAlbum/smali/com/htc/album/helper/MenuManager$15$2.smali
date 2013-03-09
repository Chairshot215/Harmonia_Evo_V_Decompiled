.class Lcom/htc/album/helper/MenuManager$15$2;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/album/helper/MenuManager$15;

.field final synthetic val$showMsg:I


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager$15;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4227
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$15$2;->this$1:Lcom/htc/album/helper/MenuManager$15;

    iput p2, p0, Lcom/htc/album/helper/MenuManager$15$2;->val$showMsg:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4230
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$15$2;->this$1:Lcom/htc/album/helper/MenuManager$15;

    iget-object v1, v1, Lcom/htc/album/helper/MenuManager$15;->val$dialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v1}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 4231
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$15$2;->this$1:Lcom/htc/album/helper/MenuManager$15;

    iget-object v1, v1, Lcom/htc/album/helper/MenuManager$15;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/htc/album/helper/MenuManager$15$2;->val$showMsg:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 4232
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4233
    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$15$2;->this$1:Lcom/htc/album/helper/MenuManager$15;

    iget-object v1, v1, Lcom/htc/album/helper/MenuManager$15;->val$adapter:Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;

    invoke-virtual {v1}, Lcom/htc/album/TabPluginDevice/AdapterLocalPhoto;->notifyDataSetChanged()V

    .line 4234
    return-void
.end method

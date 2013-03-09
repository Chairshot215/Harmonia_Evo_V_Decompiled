.class Lcom/htc/album/helper/MenuManager$1;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->gotoShareLink(Landroid/content/Context;ILjava/lang/String;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$szWebLink:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 585
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$1;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$1;->val$szWebLink:Ljava/lang/String;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$1;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V
    .locals 5
    .parameter "dialog"
    .parameter "adapter"
    .parameter "position"

    .prologue
    .line 588
    invoke-virtual {p2, p3}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    .line 589
    .local v1, target:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 591
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v2, "android.intent.extra.TEXT"

    iget-object v3, p0, Lcom/htc/album/helper/MenuManager$1;->val$szWebLink:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    :try_start_0
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 600
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/htc/album/helper/MenuManager$1;->val$context:Landroid/content/Context;

    const v3, 0x7f0b0083

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

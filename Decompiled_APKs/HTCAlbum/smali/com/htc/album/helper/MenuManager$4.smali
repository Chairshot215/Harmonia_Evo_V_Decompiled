.class Lcom/htc/album/helper/MenuManager$4;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->menuIconListDialog(Landroid/content/Context;ILjava/util/ArrayList;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/MenuManager;

.field final synthetic val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

.field final synthetic val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/MenuManager;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1829
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$4;->this$0:Lcom/htc/album/helper/MenuManager;

    iput-object p2, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    iput-object p3, p0, Lcom/htc/album/helper/MenuManager$4;->val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    if-eqz v0, :cond_0

    .line 1834
    iget-object v0, p0, Lcom/htc/album/helper/MenuManager$4;->val$clickListener:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;

    iget-object v1, p0, Lcom/htc/album/helper/MenuManager$4;->val$adapter:Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;

    invoke-interface {v0, p1, v1, p2}, Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter$OnListClickListener;->onClick(Landroid/content/DialogInterface;Lcom/htc/opensense2/album/SocialNetwork/SharedAdapter;I)V

    .line 1837
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1838
    return-void
.end method

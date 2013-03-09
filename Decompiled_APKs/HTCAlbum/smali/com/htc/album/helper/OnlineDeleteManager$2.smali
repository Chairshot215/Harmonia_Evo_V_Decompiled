.class Lcom/htc/album/helper/OnlineDeleteManager$2;
.super Ljava/lang/Object;
.source "OnlineDeleteManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/OnlineDeleteManager;->deleteMultipleMedia(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/helper/OnlineDeleteManager;


# direct methods
.method constructor <init>(Lcom/htc/album/helper/OnlineDeleteManager;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/htc/album/helper/OnlineDeleteManager$2;->this$0:Lcom/htc/album/helper/OnlineDeleteManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 106
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 107
    return-void
.end method

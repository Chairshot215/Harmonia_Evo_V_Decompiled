.class Lcom/htc/album/helper/MenuManager$6;
.super Ljava/lang/Object;
.source "MenuManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/album/helper/MenuManager;->showTabletProtectedInfo(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$IImage;)V
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
    .line 2300
    iput-object p1, p0, Lcom/htc/album/helper/MenuManager$6;->this$0:Lcom/htc/album/helper/MenuManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 2303
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 2304
    return-void
.end method

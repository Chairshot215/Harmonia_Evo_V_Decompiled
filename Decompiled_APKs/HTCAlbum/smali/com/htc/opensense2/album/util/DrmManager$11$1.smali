.class Lcom/htc/opensense2/album/util/DrmManager$11$1;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/DrmManager$11;->update(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense2/album/util/DrmManager$11;


# direct methods
.method constructor <init>(Lcom/htc/opensense2/album/util/DrmManager$11;)V
    .locals 0
    .parameter

    .prologue
    .line 1246
    iput-object p1, p0, Lcom/htc/opensense2/album/util/DrmManager$11$1;->this$0:Lcom/htc/opensense2/album/util/DrmManager$11;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1248
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1249
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1250
    invoke-static {}, Lcom/htc/opensense2/album/util/DrmManager;->access$700()Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    .line 1251
    :cond_0
    return-void
.end method

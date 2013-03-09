.class Lcom/htc/video/VideoUtility/DrmManager$8$1;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/VideoUtility/DrmManager$8;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/VideoUtility/DrmManager$8;


# direct methods
.method constructor <init>(Lcom/htc/video/VideoUtility/DrmManager$8;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/htc/video/VideoUtility/DrmManager$8$1;->this$0:Lcom/htc/video/VideoUtility/DrmManager$8;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 763
    invoke-static {v0}, Lcom/htc/video/VideoUtility/DrmManager;->access$502(Landroid/net/Uri;)Landroid/net/Uri;

    .line 764
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 765
    invoke-static {v0}, Lcom/htc/video/VideoUtility/DrmManager;->access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 766
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$700()Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 767
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$700()Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;->onAbort()V

    .line 768
    :cond_0
    return-void
.end method

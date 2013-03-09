.class final Lcom/htc/video/VideoUtility/DrmManager$10;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/VideoUtility/DrmManager;->renewRight(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 857
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    const/4 v0, 0x0

    .line 860
    invoke-static {v0}, Lcom/htc/video/VideoUtility/DrmManager;->access$502(Landroid/net/Uri;)Landroid/net/Uri;

    .line 861
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 862
    invoke-static {v0}, Lcom/htc/video/VideoUtility/DrmManager;->access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 863
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$700()Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 864
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$700()Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/video/VideoUtility/DrmManager$OnRenewRightListener;->onAbort()V

    .line 865
    :cond_0
    return-void
.end method

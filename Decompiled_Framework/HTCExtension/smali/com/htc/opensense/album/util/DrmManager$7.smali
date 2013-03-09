.class final Lcom/htc/opensense/album/util/DrmManager$7;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/DrmManager;->renewRight(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/opensense/album/util/DrmManager;->access$402(Landroid/net/Uri;)Landroid/net/Uri;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {v0}, Lcom/htc/opensense/album/util/DrmManager;->access$502(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->access$600()Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/htc/opensense/album/util/DrmManager;->access$600()Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/util/DrmManager$OnRenewRightListener;->onAbort()V

    :cond_0
    return-void
.end method

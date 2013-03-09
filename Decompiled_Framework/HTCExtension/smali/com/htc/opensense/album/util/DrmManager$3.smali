.class final Lcom/htc/opensense/album/util/DrmManager$3;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/album/util/DrmManager;->createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/util/DrmManager$3;->val$listener:Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/htc/opensense/album/util/DrmManager$3;->val$listener:Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/util/DrmManager$3;->val$listener:Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;

    invoke-interface {v0}, Lcom/htc/opensense/album/util/DrmManager$OnDrmItemClickListener;->onCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {v1}, Lcom/htc/opensense/album/util/DrmManager;->access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {v1}, Lcom/htc/opensense/album/util/DrmManager;->access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

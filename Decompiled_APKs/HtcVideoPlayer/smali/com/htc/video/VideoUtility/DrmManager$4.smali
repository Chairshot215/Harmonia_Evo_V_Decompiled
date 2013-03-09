.class final Lcom/htc/video/VideoUtility/DrmManager$4;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/VideoUtility/DrmManager;->createDialog(Landroid/content/Context;Ljava/lang/String;ILcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;


# direct methods
.method constructor <init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 487
    iput-object p1, p0, Lcom/htc/video/VideoUtility/DrmManager$4;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v1, 0x0

    .line 489
    iget-object v0, p0, Lcom/htc/video/VideoUtility/DrmManager$4;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/htc/video/VideoUtility/DrmManager$4;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    invoke-interface {v0}, Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;->onCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 492
    invoke-static {v1}, Lcom/htc/video/VideoUtility/DrmManager;->access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 496
    invoke-static {v1}, Lcom/htc/video/VideoUtility/DrmManager;->access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    goto :goto_0
.end method

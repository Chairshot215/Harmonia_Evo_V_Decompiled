.class final Lcom/htc/video/VideoUtility/DrmManager$1;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/VideoUtility/DrmManager;->showDateNotSyncMsg(Landroid/content/Context;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)Lcom/htc/widget/HtcAlertDialog;
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
    .line 433
    iput-object p1, p0, Lcom/htc/video/VideoUtility/DrmManager$1;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/htc/video/VideoUtility/DrmManager$1;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/htc/video/VideoUtility/DrmManager$1;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    invoke-interface {v0}, Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;->onCancel()Z

    .line 437
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 438
    return-void
.end method

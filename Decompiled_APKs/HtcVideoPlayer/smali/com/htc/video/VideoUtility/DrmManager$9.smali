.class final Lcom/htc/video/VideoUtility/DrmManager$9;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/VideoUtility/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/video/VideoUtility/VideoData;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;)V
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
    .line 814
    iput-object p1, p0, Lcom/htc/video/VideoUtility/DrmManager$9;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 816
    const/4 v0, 0x0

    .line 817
    .local v0, res:Z
    iget-object v1, p0, Lcom/htc/video/VideoUtility/DrmManager$9;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Lcom/htc/video/VideoUtility/DrmManager$9;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    invoke-interface {v1}, Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;->onCancel()Z

    move-result v0

    .line 820
    :cond_0
    if-eqz v0, :cond_1

    .line 821
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 825
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/video/VideoUtility/DrmManager;->access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 828
    :cond_1
    return-void
.end method

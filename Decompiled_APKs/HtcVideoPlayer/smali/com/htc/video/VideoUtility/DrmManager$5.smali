.class final Lcom/htc/video/VideoUtility/DrmManager$5;
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

.field final synthetic val$mediaType:I


# direct methods
.method constructor <init>(Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 480
    iput-object p1, p0, Lcom/htc/video/VideoUtility/DrmManager$5;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    iput p2, p0, Lcom/htc/video/VideoUtility/DrmManager$5;->val$mediaType:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 482
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 483
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/video/VideoUtility/DrmManager;->access$302(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 484
    iget-object v0, p0, Lcom/htc/video/VideoUtility/DrmManager$5;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    iget v1, p0, Lcom/htc/video/VideoUtility/DrmManager$5;->val$mediaType:I

    invoke-interface {v0, v1}, Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;->onDrmItemClick(I)V

    .line 485
    return-void
.end method

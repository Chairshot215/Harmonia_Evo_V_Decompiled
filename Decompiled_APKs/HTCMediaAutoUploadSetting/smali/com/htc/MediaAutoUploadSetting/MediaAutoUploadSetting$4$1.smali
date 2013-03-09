.class Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;
.super Ljava/lang/Object;
.source "MediaAutoUploadSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;


# direct methods
.method constructor <init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;)V
    .locals 0
    .parameter

    .prologue
    .line 504
    iput-object p1, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 507
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 510
    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v2, v2, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I
    invoke-static {v2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v2, v2, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    #getter for: Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->mUploadFrequency:I
    invoke-static {v2}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;->access$1900(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;)I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 553
    :goto_0
    return-void

    .line 515
    :cond_0
    move v1, p2

    .line 516
    .local v1, selected_frequency:I
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;->this$1:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;

    iget-object v3, v3, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4;->this$0:Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting;

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070009

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000a

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000b

    new-instance v4, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;

    invoke-direct {v4, p0, v1}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$2;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;I)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07000c

    new-instance v4, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$1;

    invoke-direct {v4, p0}, Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1$1;-><init>(Lcom/htc/MediaAutoUploadSetting/MediaAutoUploadSetting$4$1;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 553
    .local v0, d:Landroid/app/Dialog;
    goto :goto_0
.end method

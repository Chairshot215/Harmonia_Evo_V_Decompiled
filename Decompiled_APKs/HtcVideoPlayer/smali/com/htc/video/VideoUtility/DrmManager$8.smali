.class final Lcom/htc/video/VideoUtility/DrmManager$8;
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
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$fileMediaType:I

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    iput p3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$fileMediaType:I

    iput-object p4, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$filename:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 725
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 726
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/video/VideoUtility/DrmManager;->access$402(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 728
    iget-object v3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/video/VideoUtility/DrmManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 731
    :try_start_0
    iget-object v3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 733
    .local v1, rc:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$ctx:Landroid/content/Context;

    const v4, 0x20c0156

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    .end local v1           #rc:Landroid/content/res/Resources;
    :goto_0
    iget-object v3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    if-eqz v3, :cond_0

    .line 739
    iget-object v3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$listener:Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;

    invoke-interface {v3}, Lcom/htc/video/VideoUtility/DrmManager$OnDrmItemClickListener;->onCancel()Z

    .line 771
    :cond_0
    :goto_1
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DrmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show toast failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    .line 745
    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$fileMediaType:I

    if-nez v3, :cond_4

    .line 746
    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    .line 752
    :cond_2
    :goto_2
    const-string v3, "DrmManager"

    const-string v4, "acquire rights"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    iget-object v3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$filename:Ljava/lang/String;

    const-class v5, Lcom/htc/video/VideoUtility/DrmManager$DRMActionActivityBroadcastReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v2, v4, v5}, Landroid/provider/DrmStore;->acquireRights(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/video/VideoUtility/DrmManager;->access$502(Landroid/net/Uri;)Landroid/net/Uri;

    .line 754
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 755
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 757
    :cond_3
    new-instance v3, Lcom/htc/app/HtcProgressDialog;

    iget-object v4, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/htc/video/VideoUtility/DrmManager;->access$602(Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;

    .line 758
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$ctx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20c0208

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 759
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 760
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    new-instance v4, Lcom/htc/video/VideoUtility/DrmManager$8$1;

    invoke-direct {v4, p0}, Lcom/htc/video/VideoUtility/DrmManager$8$1;-><init>(Lcom/htc/video/VideoUtility/DrmManager$8;)V

    invoke-virtual {v3, v4}, Lcom/htc/app/HtcProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 770
    invoke-static {}, Lcom/htc/video/VideoUtility/DrmManager;->access$600()Lcom/htc/app/HtcProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/app/HtcProgressDialog;->show()V

    goto/16 :goto_1

    .line 747
    :cond_4
    iget v3, p0, Lcom/htc/video/VideoUtility/DrmManager$8;->val$fileMediaType:I

    if-ne v3, v6, :cond_2

    .line 748
    sget-object v2, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_2
.end method

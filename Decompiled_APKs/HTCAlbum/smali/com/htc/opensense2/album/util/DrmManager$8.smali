.class final Lcom/htc/opensense2/album/util/DrmManager$8;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/DrmManager;->showExpireMessage(Landroid/content/Context;Lcom/htc/opensense2/album/util/ImageManager$DrmMedia;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$fileMediaType:I

.field final synthetic val$filename:Ljava/lang/String;

.field final synthetic val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 980
    iput-object p1, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    iput p3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$fileMediaType:I

    iput-object p4, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$filename:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 982
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 983
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/htc/opensense2/album/util/DrmManager;->access$402(Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    .line 985
    iget-object v3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/opensense2/album/util/DrmManager;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 988
    :try_start_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.htc"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 990
    .local v1, rc:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$ctx:Landroid/content/Context;

    const v4, 0x20c0156

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 995
    .end local v1           #rc:Landroid/content/res/Resources;
    :goto_0
    iget-object v3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    if-eqz v3, :cond_0

    .line 996
    iget-object v3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$listener:Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;

    invoke-interface {v3}, Lcom/htc/opensense2/album/util/DrmManager$OnDrmItemClickListener;->onCancel()Z

    .line 1030
    :cond_0
    :goto_1
    return-void

    .line 992
    :catch_0
    move-exception v0

    .line 993
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

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1001
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    .line 1002
    .local v2, uri:Landroid/net/Uri;
    iget v3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$fileMediaType:I

    if-nez v3, :cond_3

    .line 1003
    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    .line 1010
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$ctx:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$filename:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/htc/opensense2/album/util/DrmManager;->renewRight(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_1

    .line 1004
    :cond_3
    iget v3, p0, Lcom/htc/opensense2/album/util/DrmManager$8;->val$fileMediaType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1005
    sget-object v2, Landroid/provider/DrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_2
.end method

.class final Lcom/htc/opensense2/album/util/DrmManager$11;
.super Ljava/lang/Object;
.source "DrmManager.java"

# interfaces
.implements Landroid/provider/DrmStore$UpdateLicense;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense2/album/util/DrmManager;->getDrmState(Landroid/content/Context;Landroid/net/Uri;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cx:Landroid/content/Context;

.field final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/htc/opensense2/album/util/DrmManager$11;->val$cx:Landroid/content/Context;

    iput-object p2, p0, Lcom/htc/opensense2/album/util/DrmManager$11;->val$fileName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;)V
    .locals 8
    .parameter "rightsIssuer"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x2

    .line 1211
    const-string v4, "DrmManager"

    const-string v5, "show UpdateLicense dialog"

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    if-nez p1, :cond_0

    .line 1213
    invoke-static {v6}, Lcom/htc/opensense2/album/util/DrmManager;->access$802(I)I

    .line 1254
    :goto_0
    return-void

    .line 1214
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1215
    invoke-static {v6}, Lcom/htc/opensense2/album/util/DrmManager;->access$802(I)I

    goto :goto_0

    .line 1217
    :cond_1
    invoke-static {v7}, Lcom/htc/opensense2/album/util/DrmManager;->access$802(I)I

    .line 1218
    move-object v1, p1

    .line 1219
    .local v1, issuer:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1220
    .local v2, message:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1222
    .local v3, rc:Landroid/content/res/Resources;
    :try_start_0
    iget-object v4, p0, Lcom/htc/opensense2/album/util/DrmManager$11;->val$cx:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.htc"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1227
    :goto_1
    const v4, 0x20c00e0

    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/htc/opensense2/album/util/DrmManager$11;->val$fileName:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1232
    :goto_2
    new-instance v4, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v5, p0, Lcom/htc/opensense2/album/util/DrmManager$11;->val$cx:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b00a8

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c01da

    new-instance v6, Lcom/htc/opensense2/album/util/DrmManager$11$2;

    invoke-direct {v6, p0, v1}, Lcom/htc/opensense2/album/util/DrmManager$11$2;-><init>(Lcom/htc/opensense2/album/util/DrmManager$11;Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    const v5, 0x20c01db

    new-instance v6, Lcom/htc/opensense2/album/util/DrmManager$11$1;

    invoke-direct {v6, p0}, Lcom/htc/opensense2/album/util/DrmManager$11$1;-><init>(Lcom/htc/opensense2/album/util/DrmManager$11;)V

    invoke-virtual {v4, v5, v6}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 1228
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1229
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Your license is expired for the file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/opensense2/album/util/DrmManager$11;->val$fileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Would you like to connect to the internet to renew your license?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

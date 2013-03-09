.class public Lcom/htc/album/helper/ThreeDConvert;
.super Landroid/app/Activity;
.source "ThreeDConvert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/helper/ThreeDConvert$1;,
        Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

.field private mSelectSharedPkgName:Ljava/lang/String;

.field private mShareIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/htc/album/helper/ThreeDConvert;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    .line 19
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvert;->mSelectSharedPkgName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvert;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/htc/album/helper/ThreeDConvert;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private checkShareIntent()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 76
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvert;->getIntent()Landroid/content/Intent;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, component:Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_PACKAGE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, sharedPkgName:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_PACKAGE_FOR_OTHER"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, sharedPkgNameForOther:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    const-string v8, "SharedAdapter.KEY_CLASS_NAME"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, sharedClassName:Ljava/lang/String;
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 84
    .local v5, uri:Landroid/net/Uri;
    if-nez v5, :cond_0

    .line 86
    sget-object v7, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] Uri is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :goto_0
    return v6

    .line 90
    :cond_0
    iget-object v7, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, mimeType:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 93
    sget-object v7, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] MimeType is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_1
    if-nez v2, :cond_2

    .line 98
    sget-object v7, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] ClassName is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_2
    if-eqz v3, :cond_3

    .line 104
    iput-object v3, p0, Lcom/htc/album/helper/ThreeDConvert;->mSelectSharedPkgName:Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .restart local v0       #component:Landroid/content/ComponentName;
    :goto_1
    iget-object v6, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 119
    sget-object v6, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] Uri: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v6, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] MimeType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v6, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] PkgName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/album/helper/ThreeDConvert;->mSelectSharedPkgName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v6, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[setShareIntent] ClassName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 107
    :cond_3
    if-eqz v4, :cond_4

    .line 109
    iput-object v4, p0, Lcom/htc/album/helper/ThreeDConvert;->mSelectSharedPkgName:Ljava/lang/String;

    .line 110
    new-instance v0, Landroid/content/ComponentName;

    .end local v0           #component:Landroid/content/ComponentName;
    invoke-direct {v0, v4, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #component:Landroid/content/ComponentName;
    goto :goto_1

    .line 114
    :cond_4
    sget-object v7, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[setShareIntent] PackageName is null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private selectConvert()V
    .locals 5

    .prologue
    .line 53
    new-instance v2, Lcom/htc/album/processor/ImageProcessorManager;

    new-instance v3, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/htc/album/helper/ThreeDConvert$ImageProcessListener;-><init>(Lcom/htc/album/helper/ThreeDConvert;Lcom/htc/album/helper/ThreeDConvert$1;)V

    invoke-direct {v2, p0, v3}, Lcom/htc/album/processor/ImageProcessorManager;-><init>(Landroid/app/Activity;Lcom/htc/album/processor/ImageProcessorManager$OnImageProcessListener;)V

    iput-object v2, p0, Lcom/htc/album/helper/ThreeDConvert;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 54
    iget-object v2, p0, Lcom/htc/album/helper/ThreeDConvert;->mSelectSharedPkgName:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/album/helper/MenuManager;->support3DShare(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 55
    .local v1, force2D:Z
    :goto_0
    const/16 v0, 0x67

    .line 57
    .local v0, dlgId:I
    if-eqz v1, :cond_1

    const/16 v0, 0x68

    .line 61
    :goto_1
    iget-object v2, p0, Lcom/htc/album/helper/ThreeDConvert;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    iget-object v3, p0, Lcom/htc/album/helper/ThreeDConvert;->mShareIntent:Landroid/content/Intent;

    invoke-virtual {v2, v0, v3}, Lcom/htc/album/processor/ImageProcessorManager;->startProcessing(ILandroid/content/Intent;)V

    .line 62
    return-void

    .line 54
    .end local v0           #dlgId:I
    .end local v1           #force2D:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 57
    .restart local v0       #dlgId:I
    .restart local v1       #force2D:Z
    :cond_1
    const/16 v0, 0x67

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget-object v1, Lcom/htc/album/helper/ThreeDConvert;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[onCreate]"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, errorCheck:Z
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDConvert;->checkShareIntent()Z

    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvert;->finish()V

    .line 35
    :cond_0
    invoke-direct {p0}, Lcom/htc/album/helper/ThreeDConvert;->selectConvert()V

    .line 36
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvert;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/htc/album/helper/ThreeDConvert;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/htc/album/processor/ImageProcessorManager;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 46
    :cond_0
    if-eqz v0, :cond_1

    .line 49
    .end local v0           #dialog:Landroid/app/Dialog;
    :goto_0
    return-object v0

    .restart local v0       #dialog:Landroid/app/Dialog;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvert;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/htc/album/helper/ThreeDConvert;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    invoke-virtual {v0}, Lcom/htc/album/processor/ImageProcessorManager;->release()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/helper/ThreeDConvert;->mImageProcessor:Lcom/htc/album/processor/ImageProcessorManager;

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/helper/ThreeDConvert;->finish()V

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 73
    return-void
.end method

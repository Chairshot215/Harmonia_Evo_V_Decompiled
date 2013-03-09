.class public Lcom/htc/providers/uploads/uploadUI/UploadDialog;
.super Ljava/lang/Object;
.source "UploadDialog.java"


# static fields
.field static final CREATE_ALBUM:I = 0x4

.field static final LOGIN:I = 0x1

.field static final PROGRESS:I = 0x2

.field static final UPLOADING:I = 0x3


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field public isPublic:I

.field mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->isPublic:I

    .line 51
    const-string v0, "Upload Dialog"

    iput-object v0, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->LOG_TAG:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    .line 56
    return-void
.end method


# virtual methods
.method public getCreateAlbumBuilder(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 3
    .parameter "create"

    .prologue
    .line 91
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    iget-object v1, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 94
    invoke-virtual {v0, p1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 95
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    .line 96
    return-object v0
.end method

.method public getLoginBuilder(Ljava/lang/String;)Lcom/htc/widget/HtcAlertDialog$Builder;
    .locals 7
    .parameter "service"

    .prologue
    .line 60
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    .line 61
    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "common_icon_dialog_alert"

    const-string v5, "drawable"

    const-string v6, "com.htc"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 66
    .local v2, resId:I
    :goto_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 68
    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f04001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 70
    const-string v1, ""

    .line 71
    .local v1, message:Ljava/lang/String;
    const-string v3, "facebook"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 80
    new-instance v3, Lcom/htc/providers/uploads/uploadUI/UploadDialog$1;

    invoke-direct {v3, p0}, Lcom/htc/providers/uploads/uploadUI/UploadDialog$1;-><init>(Lcom/htc/providers/uploads/uploadUI/UploadDialog;)V

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 87
    return-object v0

    .line 64
    .end local v0           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v1           #message:Ljava/lang/String;
    .end local v2           #resId:I
    :cond_1
    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_dialog_alert"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .restart local v2       #resId:I
    goto :goto_0

    .line 74
    .restart local v0       #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .restart local v1       #message:Ljava/lang/String;
    :cond_2
    const-string v3, "flickr"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/htc/providers/uploads/uploadUI/UploadDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040020

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

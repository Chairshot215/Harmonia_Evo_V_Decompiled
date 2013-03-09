.class public Lcom/htc/album/DetailDlgActivity;
.super Landroid/app/Activity;
.source "DetailDlgActivity.java"

# interfaces
.implements Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

.field protected mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

.field private mMenuManager:Lcom/htc/album/helper/MenuManager;

.field private mbCreate:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-class v0, Lcom/htc/album/DetailDlgActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->LOG_TAG:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mMenuManager:Lcom/htc/album/helper/MenuManager;

    .line 31
    iput-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 33
    new-instance v0, Lcom/htc/album/DetailDlgParams;

    invoke-direct {v0}, Lcom/htc/album/DetailDlgParams;-><init>()V

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    .line 37
    iput-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    return-void
.end method

.method private CreateDetailDialog()Z
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsLocalFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog_LocalFile()Z

    move-result v0

    .line 125
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsRemoteFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog_RemoteFile()Z

    move-result v0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private CreateDetailDialog_LocalFile()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mMenuManager:Lcom/htc/album/helper/MenuManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-nez v1, :cond_1

    :cond_0
    move v6, v0

    .line 175
    :goto_0
    return v6

    .line 141
    :cond_1
    iget-boolean v1, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    if-ne v1, v2, :cond_2

    move v6, v0

    .line 146
    goto :goto_0

    .line 149
    :cond_2
    iput-boolean v2, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    .line 151
    const/4 v6, 0x0

    .line 155
    .local v6, bRet:Z
    :try_start_0
    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->getImageAt(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v4

    .line 157
    .local v4, curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-nez v4, :cond_3

    move v6, v0

    .line 158
    goto :goto_0

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mMenuManager:Lcom/htc/album/helper/MenuManager;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/helper/MenuManager;->showItemDetails_FromIImage(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;ILcom/htc/opensense2/album/util/ImageManager$IImage;Z)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    const/4 v6, 0x1

    goto :goto_0

    .line 165
    .end local v4           #curImage:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private CreateDetailDialog_RemoteFile()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 180
    iget-boolean v1, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    if-ne v1, v0, :cond_0

    .line 185
    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mMenuManager:Lcom/htc/album/helper/MenuManager;

    iget-object v2, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v1, p0, p0, v2, v0}, Lcom/htc/album/helper/MenuManager;->showItemDetails_FromDetailDlgParams(Landroid/content/Context;Lcom/htc/album/helper/MenuManager$IEndDlgCallBack;Lcom/htc/album/DetailDlgParams;Z)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/DetailDlgActivity;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 190
    iput-boolean v0, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    goto :goto_0
.end method


# virtual methods
.method public OnEndDlgCallBack()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/DetailDlgActivity;->mbCreate:Z

    .line 24
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    .line 25
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/album/DetailDlgParams;->GetExtraParam(Landroid/content/Intent;)Z

    .line 49
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mMenuManager:Lcom/htc/album/helper/MenuManager;

    .line 52
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v0}, Lcom/htc/album/DetailDlgParams;->IsLocalFile()Z

    move-result v0

    if-ne v5, v0, :cond_0

    .line 54
    invoke-static {}, Lcom/htc/opensense2/album/util/ImageManager;->instance()Lcom/htc/opensense2/album/util/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v3}, Lcom/htc/album/DetailDlgParams;->GetDataLocation()Lcom/htc/opensense2/album/util/ImageManager$DataLocation;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v4}, Lcom/htc/album/DetailDlgParams;->GetIncludes()I

    move-result v4

    iget-object v6, p0, Lcom/htc/album/DetailDlgActivity;->mDetailDlgParams:Lcom/htc/album/DetailDlgParams;

    invoke-virtual {v6}, Lcom/htc/album/DetailDlgParams;->GetWhere()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/htc/opensense2/album/util/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/htc/opensense2/album/util/ImageManager$DataLocation;IIZLjava/lang/String;Ljava/lang/String;)Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 67
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/DetailDlgActivity;->mHtcAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 89
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 98
    invoke-direct {p0}, Lcom/htc/album/DetailDlgActivity;->CreateDetailDialog()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    .line 104
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 112
    invoke-virtual {p0}, Lcom/htc/album/DetailDlgActivity;->finish()V

    .line 113
    return-void
.end method

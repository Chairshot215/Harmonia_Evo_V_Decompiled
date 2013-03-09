.class public Lcom/htc/musicenhancer/ProgressActivity;
.super Lcom/htc/app/HtcAlertActivity;
.source "ProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final CURRENT_DOWNLOAD_COUNT:Ljava/lang/String; = "current_download_count"

.field private static final DIALOG_CONFIRM_CANCEL:I = 0x1

.field public static final IS_AUTO_UDPATE:Ljava/lang/String; = "auto_update"

.field private static final TAG:Ljava/lang/String; = "[ProgressActivity]"

.field public static final TOTAL_DOWNLOAD_COUNT:Ljava/lang/String; = "total_download_count"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCancelConfirmOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCurrentCount:I

.field private mDownloadState:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressMessage:Landroid/widget/TextView;

.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 39
    iput-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    .line 40
    iput-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mDownloadState:Landroid/widget/TextView;

    .line 41
    iput v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    .line 42
    iput v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    .line 166
    new-instance v0, Lcom/htc/musicenhancer/ProgressActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/ProgressActivity$1;-><init>(Lcom/htc/musicenhancer/ProgressActivity;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCancelConfirmOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 238
    new-instance v0, Lcom/htc/musicenhancer/ProgressActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/ProgressActivity$2;-><init>(Lcom/htc/musicenhancer/ProgressActivity;)V

    iput-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/musicenhancer/ProgressActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/musicenhancer/ProgressActivity;->disableAutoUpdateSetting()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/musicenhancer/ProgressActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/htc/musicenhancer/ProgressActivity;->cancelDownload()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/musicenhancer/ProgressActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/htc/musicenhancer/ProgressActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/htc/musicenhancer/ProgressActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/musicenhancer/ProgressActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    return p1
.end method

.method static synthetic access$400(Lcom/htc/musicenhancer/ProgressActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/musicenhancer/ProgressActivity;->refreshProgress(II)V

    return-void
.end method

.method private cancelDownload()V
    .locals 2

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_cancel_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/ProgressActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method private disableAutoUpdateSetting()V
    .locals 6

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 224
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "auto_download"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    sget-object v3, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v2           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "[ProgressActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in disableAutoUpdateSetting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAutoUpdateEnabled()Z
    .locals 1

    .prologue
    .line 233
    invoke-static {p0}, Lcom/htc/musicenhancer/util/EnhancerUtils;->isAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private refreshProgress(II)V
    .locals 4
    .parameter "totalDownloadCount"
    .parameter "currentDownloadcount"

    .prologue
    const/4 v3, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 201
    const-string v1, "[ProgressActivity]"

    const-string v2, "Total download count is 0, it should not be 0 in refreshProgress"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->finish()V

    .line 214
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, downloadProgress:Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 213
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 152
    const-string v0, "[ProgressActivity]"

    const-string v1, "dismiss"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 186
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 187
    const-string v0, "[ProgressActivity]"

    const-string v1, "Do nothing"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->finish()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 190
    const-string v0, "[ProgressActivity]"

    const-string v1, "Album Art download is canceled by user!"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/htc/musicenhancer/ProgressActivity;->isAutoUpdateEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/ProgressActivity;->showDialog(I)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-direct {p0}, Lcom/htc/musicenhancer/ProgressActivity;->cancelDownload()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 46
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v3, "[ProgressActivity]"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030003

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, progressView:Landroid/view/View;
    const v3, 0x7f080002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 50
    const v3, 0x7f080006

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressMessage:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mDownloadState:Landroid/widget/TextView;

    .line 52
    iget-object v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 55
    .local v1, params:Lcom/htc/app/HtcAlertController$AlertParams;
    const v3, 0x7f07000b

    invoke-virtual {p0, v3}, Lcom/htc/musicenhancer/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 56
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x108009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 57
    const v3, 0x20c013c

    invoke-virtual {p0, v3}, Lcom/htc/musicenhancer/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 58
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    const v3, 0x20c013d

    invoke-virtual {p0, v3}, Lcom/htc/musicenhancer/ProgressActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 60
    iput-object p0, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    iput-object v2, v1, Lcom/htc/app/HtcAlertController$AlertParams;->mView:Landroid/view/View;

    .line 62
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->setupAlert()V

    .line 64
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "total_download_count"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    .line 66
    const-string v3, "current_download_count"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    .line 67
    iget v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    iget v4, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    invoke-direct {p0, v3, v4}, Lcom/htc/musicenhancer/ProgressActivity;->refreshProgress(II)V

    .line 70
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 147
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Lcom/htc/app/HtcAlertActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 137
    :pswitch_0
    const-string v1, "[ProgressActivity]"

    const-string v2, "create dialog"

    invoke-static {v1, v2}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013c

    iget-object v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCancelConfirmOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c013d

    iget-object v3, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCancelConfirmOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    .line 144
    .local v0, repeatDialog:Lcom/htc/widget/HtcAlertDialog;
    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onDestroy()V

    .line 131
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 89
    const-string v0, "[ProgressActivity]"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1}, Lcom/htc/musicenhancer/ProgressActivity;->setIntent(Landroid/content/Intent;)V

    .line 91
    const-string v0, "total_download_count"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    .line 92
    const-string v0, "current_download_count"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    .line 93
    iget v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    iget v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    invoke-direct {p0, v0, v1}, Lcom/htc/musicenhancer/ProgressActivity;->refreshProgress(II)V

    .line 94
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onPause()V

    .line 126
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 157
    packed-switch p1, :pswitch_data_0

    .line 164
    .end local p2
    :goto_0
    return-void

    .line 159
    .restart local p2
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/musicenhancer/ProgressActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, msg:Ljava/lang/String;
    check-cast p2, Lcom/htc/widget/HtcAlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 99
    const-string v0, "total_download_count"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    .line 100
    const-string v0, "current_download_count"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    .line 101
    iget v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    iget v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    invoke-direct {p0, v0, v1}, Lcom/htc/musicenhancer/ProgressActivity;->refreshProgress(II)V

    .line 102
    const-string v0, "[ProgressActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState : total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 83
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onResume()V

    .line 84
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 109
    const-string v0, "total_download_count"

    iget v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    const-string v0, "current_download_count"

    iget v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v0, "[ProgressActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveInstanceState : total = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/musicenhancer/ProgressActivity;->mTotalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/musicenhancer/ProgressActivity;->mCurrentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStart()V

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 76
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "action_complete_one_download"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "action_download_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/htc/musicenhancer/ProgressActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/musicenhancer/ProgressActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 117
    const-string v0, "[ProgressActivity]"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/htc/musicenhancer/ProgressActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/ProgressActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    invoke-super {p0}, Lcom/htc/app/HtcAlertActivity;->onStop()V

    .line 120
    return-void
.end method

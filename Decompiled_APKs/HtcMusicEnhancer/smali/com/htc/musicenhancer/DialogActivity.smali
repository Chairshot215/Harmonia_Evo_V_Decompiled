.class public Lcom/htc/musicenhancer/DialogActivity;
.super Landroid/app/Activity;
.source "DialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/musicenhancer/DialogActivity$DismissListener;,
        Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;,
        Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;
    }
.end annotation


# static fields
.field public static ACTION_SHOW_CONNECTION_FAIL:Ljava/lang/String;

.field public static ACTION_SHOW_DATA_FEE_WARNING:Ljava/lang/String;

.field public static DOWNLOAD_ACTION:Ljava/lang/String;


# instance fields
.field private final DIALOG_CONNECTION_FAIL:I

.field private final DIALOG_DATA_FEE_WARNING:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "action_show_data_fee_warning"

    sput-object v0, Lcom/htc/musicenhancer/DialogActivity;->ACTION_SHOW_DATA_FEE_WARNING:Ljava/lang/String;

    .line 30
    const-string v0, "action_show_connection_fail"

    sput-object v0, Lcom/htc/musicenhancer/DialogActivity;->ACTION_SHOW_CONNECTION_FAIL:Ljava/lang/String;

    .line 33
    const-string v0, "download_action"

    sput-object v0, Lcom/htc/musicenhancer/DialogActivity;->DOWNLOAD_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/musicenhancer/DialogActivity;->DIALOG_DATA_FEE_WARNING:I

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/musicenhancer/DialogActivity;->DIALOG_CONNECTION_FAIL:I

    .line 226
    return-void
.end method

.method static synthetic access$000(Lcom/htc/musicenhancer/DialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/musicenhancer/DialogActivity;->startEnhanceService()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/musicenhancer/DialogActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/DialogActivity;->saveFirstDownload(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/musicenhancer/DialogActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/htc/musicenhancer/DialogActivity;->setAutoUpdateSetting(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/musicenhancer/DialogActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/htc/musicenhancer/DialogActivity;->cancelDownload()V

    return-void
.end method

.method private cancelDownload()V
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action_cancel_download"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/DialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 172
    return-void
.end method

.method private createConnectionFailDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 190
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v2, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x20c009e

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 193
    new-instance v0, Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;-><init>(Lcom/htc/musicenhancer/DialogActivity;)V

    .line 194
    .local v0, clickListener:Lcom/htc/musicenhancer/DialogActivity$ConnectionFailDialogClickListener;
    const v3, 0x20c0163

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 195
    const v3, 0x20c013d

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 196
    const v3, 0x20c009f

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 197
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 198
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 199
    new-instance v3, Lcom/htc/musicenhancer/DialogActivity$DismissListener;

    invoke-direct {v3, p0}, Lcom/htc/musicenhancer/DialogActivity$DismissListener;-><init>(Lcom/htc/musicenhancer/DialogActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 200
    :cond_0
    return-object v1
.end method

.method private createDataFeeWarningDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 106
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    .local v2, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x20c009c

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 109
    new-instance v0, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;

    invoke-direct {v0, p0}, Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;-><init>(Lcom/htc/musicenhancer/DialogActivity;)V

    .line 111
    .local v0, clickListener:Lcom/htc/musicenhancer/DialogActivity$DataFeeWanringDialogClickListener;
    const v3, 0x20c01da

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 112
    const v3, 0x20c01db

    invoke-virtual {v2, v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 113
    const v3, 0x20c009d

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 114
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 115
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_0

    .line 116
    new-instance v3, Lcom/htc/musicenhancer/DialogActivity$DismissListener;

    invoke-direct {v3, p0}, Lcom/htc/musicenhancer/DialogActivity$DismissListener;-><init>(Lcom/htc/musicenhancer/DialogActivity;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 117
    :cond_0
    return-object v1
.end method

.method private saveFirstDownload(Z)V
    .locals 6
    .parameter "firstDownload"

    .prologue
    .line 175
    const-string v3, "[EnhancerService]"

    const-string v4, "DialogActivity saveFirstDownload"

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v3, "HtcMusicEnhancer"

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v4}, Lcom/htc/musicenhancer/DialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 178
    .local v2, preferences:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 179
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "fisrt_download"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    :try_start_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "[EnhancerService]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DialogActivity saveFirstDownload apply ex =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/musicenhancer/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setAutoUpdateSetting(I)V
    .locals 5
    .parameter "isChecked"

    .prologue
    const/4 v4, 0x0

    .line 141
    const-string v2, "[EnhancerService]"

    const-string v3, "DialogActivity autoUpdateAlbumArt"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/htc/musicenhancer/DialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 144
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "auto_download"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    sget-object v2, Lcom/htc/musicenhancer/provider/DownloadStore$DownloadSetting;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method private startEnhanceService()V
    .locals 4

    .prologue
    .line 150
    const-string v2, "[EnhancerService]"

    const-string v3, "DialogActivity startDownload"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/htc/musicenhancer/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/htc/musicenhancer/DialogActivity;->DOWNLOAD_ACTION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, action:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, downloadAlbumArtIntent:Landroid/content/Intent;
    const-string v2, "action_auto_update_album"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string v2, "[EnhancerService]"

    const-string v3, "startEnhanceService auto update setting"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v2, "show_data_fee_dialog"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/htc/musicenhancer/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/htc/musicenhancer/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    :cond_1
    const-string v2, "com.htc.musicenhancer"

    const-string v3, "com.htc.musicenhancer.EnhancerService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v1}, Lcom/htc/musicenhancer/DialogActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v0, "[EnhancerService]"

    const-string v1, "Dialog Activity onCreate"

    invoke-static {v0, v1}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/DialogActivity;->requestWindowFeature(I)Z

    .line 40
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/htc/musicenhancer/DialogActivity;->setContentView(I)V

    .line 41
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "args"

    .prologue
    .line 81
    packed-switch p1, :pswitch_data_0

    .line 89
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 83
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/musicenhancer/DialogActivity;->createDataFeeWarningDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 86
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/musicenhancer/DialogActivity;->createConnectionFailDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 46
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 51
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "args"

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 96
    packed-switch p1, :pswitch_data_0

    .line 103
    :pswitch_0
    return-void

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 56
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 61
    const-string v2, "[EnhancerService]"

    const-string v3, "Dialog Activity onStart"

    invoke-static {v2, v3}, Lcom/htc/musicenhancer/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/htc/musicenhancer/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 63
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, action:Ljava/lang/String;
    sget-object v2, Lcom/htc/musicenhancer/DialogActivity;->ACTION_SHOW_DATA_FEE_WARNING:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/musicenhancer/DialogActivity;->showDialog(I)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    sget-object v2, Lcom/htc/musicenhancer/DialogActivity;->ACTION_SHOW_CONNECTION_FAIL:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/musicenhancer/DialogActivity;->showDialog(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 76
    return-void
.end method

.class public Lcom/htc/store/activity/DispatchActivity;
.super Lcom/htc/store/activity/BaseActivity;
.source "DispatchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;
    }
.end annotation


# static fields
.field private static final ACTION_CHECK_NETWORK_TO_GET_MORE:I = 0x2

.field private static final ACTION_GET_MORE:I = 0x1

.field private static final ACTION_NONE:I = 0x0

.field private static final ACTION_SHOW_ERROR_TO_FINISH:I = 0x3

.field public static final CS_EXCEPTION:Ljava/lang/String; = "cs_exception"

.field private static final DIALOG_INITIALIZING:I = 0x64

.field private static final DIALOG_RELAUNCH:I = 0xc8

.field public static final EXTRA_KEY_GET_MORE_KEY:Ljava/lang/String; = "get_more_key"

.field public static final EXTRA_KEY_NAVIGATE_TO:Ljava/lang/String; = "navigate_to"

.field public static final EXTRA_VALUE_NAVIGATE_TO_GET_MORE:Ljava/lang/String; = "get_more"

.field public static final EXTRA_VALUE_NAVIGATE_TO_ITEM_DETAIL:Ljava/lang/String; = "item_detail"

.field private static final REQUEST_CODE_CHECK_PRECONDITION:I = 0x1

.field private static final REQUEST_NEW_PASSWORD:I = 0x2

.field private static final REQUEST_RESIGNIN:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionOnResume:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/htc/store/activity/DispatchActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/store/activity/BaseActivity;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    .line 239
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/store/activity/DispatchActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/htc/store/activity/DispatchActivity;->doAction(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/htc/store/activity/DispatchActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    return p1
.end method

.method private doAction(I)V
    .locals 6
    .parameter "action"

    .prologue
    const/16 v1, 0x64

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 215
    packed-switch p1, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 217
    :pswitch_0
    new-instance v0, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;-><init>(Lcom/htc/store/activity/DispatchActivity;Lcom/htc/store/activity/DispatchActivity$1;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "get_more_key"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 221
    :pswitch_1
    invoke-static {p0}, Lcom/htc/store/util/CommonUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iput v5, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    .line 223
    invoke-virtual {p0, v1}, Lcom/htc/store/activity/DispatchActivity;->showDialog(I)V

    .line 224
    invoke-direct {p0, v2}, Lcom/htc/store/activity/DispatchActivity;->doAction(I)V

    goto :goto_0

    .line 226
    :cond_0
    sget-object v0, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Network is not available."

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    .line 228
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->showNoNetworkDialogCancelToFinish()V

    goto :goto_0

    .line 233
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/htc/store/activity/DispatchActivity;->removeDialog(I)V

    .line 234
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->showCommonErrorDialogToFinish()V

    goto :goto_0

    .line 215
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private doDispatch()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 173
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "navigate_to"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, navigateTo:Ljava/lang/String;
    sget-object v8, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "navigateTo: "

    aput-object v10, v9, v11

    aput-object v4, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 177
    const-string v8, "get_more"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 178
    const-string v8, "get_more_key"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, key:Ljava/lang/String;
    sget-object v8, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "key: "

    aput-object v10, v9, v11

    aput-object v3, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 181
    const/16 v8, 0x64

    invoke-virtual {p0, v8}, Lcom/htc/store/activity/DispatchActivity;->showDialog(I)V

    .line 182
    new-instance v8, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;-><init>(Lcom/htc/store/activity/DispatchActivity;Lcom/htc/store/activity/DispatchActivity$1;)V

    sget-object v9, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v3, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/htc/store/activity/DispatchActivity$DoGetMoreTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 207
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 184
    .restart local v3       #key:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->showCommonErrorDialogToFinish()V

    goto :goto_0

    .line 186
    .end local v3           #key:Ljava/lang/String;
    :cond_2
    const-string v8, "item_detail"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 187
    const-string v8, "online_item_id"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 188
    .local v6, onlineItemId:Ljava/lang/String;
    const-string v8, "online_item_v1_id"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 189
    .local v7, onlineItemV1Id:Ljava/lang/String;
    const-string v8, "online_item_content_type"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 190
    .local v5, onlineItemContentType:Ljava/lang/String;
    const-string v8, "download_status"

    const/4 v9, -0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .local v1, downloadStatus:I
    sget-object v8, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "onlineItemId: "

    aput-object v10, v9, v11

    aput-object v6, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    sget-object v8, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "onlineItemV1Id: "

    aput-object v10, v9, v11

    aput-object v7, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    sget-object v8, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "onlineItemContentType: "

    aput-object v10, v9, v11

    aput-object v5, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    sget-object v8, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "downloadStatus: "

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v8, Lcom/htc/store/activity/detail/DetailTab;

    invoke-direct {v0, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 198
    .local v0, detail:Landroid/content/Intent;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 199
    const/high16 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 200
    invoke-virtual {p0, v0}, Lcom/htc/store/activity/DispatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 201
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->finish()V

    goto :goto_0

    .line 203
    .end local v0           #detail:Landroid/content/Intent;
    .end local v1           #downloadStatus:I
    .end local v5           #onlineItemContentType:Ljava/lang/String;
    .end local v6           #onlineItemId:Ljava/lang/String;
    .end local v7           #onlineItemV1Id:Ljava/lang/String;
    :cond_3
    sget-object v8, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v9, v12, [Ljava/lang/Object;

    const-string v10, "Unknown action."

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Lcom/htc/store/util/LogUtils;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 89
    if-ne p1, v1, :cond_2

    .line 90
    if-ne p2, v4, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/htc/store/activity/DispatchActivity;->doDispatch()V

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 96
    sget-object v0, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "request code : new password"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    if-ne p2, v4, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->finish()V

    goto :goto_0

    .line 99
    :cond_3
    if-nez p2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->finish()V

    goto :goto_0

    .line 102
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 103
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->finish()V

    goto :goto_0

    .line 105
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/htc/store/activity/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 44
    invoke-super {p0, p1}, Lcom/htc/store/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v2, 0x7f030023

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/DispatchActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "cs_exception"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 47
    .local v0, csException:I
    if-eq v0, v6, :cond_3

    .line 48
    const/16 v2, 0x1b8

    if-ne v0, v2, :cond_1

    .line 49
    sget-object v2, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "request new password due to password changed..."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.cs.CSWebExceptionDB.RequireNewPassword"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.htc.cs"

    const-string v3, "com.htc.cs.activity.accountactivities.CSErrorHandlingDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/htc/store/activity/DispatchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 68
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/16 v2, 0x1ae

    if-ne v0, v2, :cond_2

    .line 54
    sget-object v2, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "request resign in due to missing device..."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.cs.CSWebExceptionDB.DeviceDisconnected"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "com.htc.cs"

    const-string v3, "com.htc.cs.activity.accountactivities.CSErrorHandlingDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/htc/store/activity/DispatchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 58
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/16 v2, 0x1c2

    if-ne v0, v2, :cond_0

    .line 59
    sget-object v2, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "request relaunch due to setup call version is expired..."

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    const/16 v2, 0xc8

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/DispatchActivity;->showDialog(I)V

    goto :goto_0

    .line 63
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/htc/store/activity/EntryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 64
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "check_precondition"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    const/high16 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v1, v4}, Lcom/htc/store/activity/DispatchActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, dialog:Landroid/app/Dialog;
    sparse-switch p1, :sswitch_data_0

    .line 165
    :goto_0
    if-nez v0, :cond_0

    .line 166
    invoke-super {p0, p1, p2}, Lcom/htc/store/activity/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 168
    :cond_0
    return-object v0

    .line 117
    :sswitch_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 118
    .local v1, progressDiaglog:Landroid/app/ProgressDialog;
    const v2, 0x7f0a0040

    invoke-virtual {p0, v2}, Lcom/htc/store/activity/DispatchActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 119
    new-instance v2, Lcom/htc/store/activity/DispatchActivity$1;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/DispatchActivity$1;-><init>(Lcom/htc/store/activity/DispatchActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 125
    new-instance v2, Lcom/htc/store/activity/DispatchActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/store/activity/DispatchActivity$2;-><init>(Lcom/htc/store/activity/DispatchActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 134
    move-object v0, v1

    .line 135
    goto :goto_0

    .line 137
    .end local v1           #progressDiaglog:Landroid/app/ProgressDialog;
    :sswitch_1
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/htc/store/activity/DispatchActivity;->getContext()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0a005a

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a005b

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a006a

    new-instance v4, Lcom/htc/store/activity/DispatchActivity$4;

    invoke-direct {v4, p0}, Lcom/htc/store/activity/DispatchActivity$4;-><init>(Lcom/htc/store/activity/DispatchActivity;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/htc/store/activity/DispatchActivity$3;

    invoke-direct {v3, p0}, Lcom/htc/store/activity/DispatchActivity$3;-><init>(Lcom/htc/store/activity/DispatchActivity;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 72
    invoke-super {p0}, Lcom/htc/store/activity/BaseActivity;->onResume()V

    .line 73
    iget v1, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    if-eqz v1, :cond_1

    .line 74
    sget-object v1, Lcom/htc/store/activity/DispatchActivity;->TAG:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "mActionOnResume: "

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/htc/store/util/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    iget v0, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    .line 76
    .local v0, action:I
    iget v1, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    if-eq v1, v6, :cond_0

    .line 77
    iput v5, p0, Lcom/htc/store/activity/DispatchActivity;->mActionOnResume:I

    .line 79
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/store/activity/DispatchActivity;->doAction(I)V

    .line 81
    .end local v0           #action:I
    :cond_1
    return-void
.end method

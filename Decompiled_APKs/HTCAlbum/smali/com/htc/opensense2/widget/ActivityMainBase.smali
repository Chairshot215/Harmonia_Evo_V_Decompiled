.class public abstract Lcom/htc/opensense2/widget/ActivityMainBase;
.super Landroid/app/Activity;
.source "ActivityMainBase.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiverHost;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IBroadcastReceiver;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

.field private mHandler:Landroid/os/Handler;

.field private mLastBroadcastIntent:Landroid/content/Intent;

.field private mMediaState:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const-class v0, Lcom/htc/opensense2/widget/ActivityMainBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->LOG_TAG:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 57
    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    .line 59
    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 423
    new-instance v0, Lcom/htc/opensense2/widget/ActivityMainBase$2;

    invoke-direct {v0, p0}, Lcom/htc/opensense2/widget/ActivityMainBase$2;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/htc/opensense2/widget/ActivityMainBase;Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onProgressBackPressed(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private onCreateProgressDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "bundle"

    .prologue
    .line 257
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 259
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    const/4 v1, 0x0

    .line 260
    .local v1, szMessage:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 261
    const-string v2, "loading_text"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 264
    :cond_1
    const v2, 0x7f0b003f

    invoke-virtual {p0, v2}, Lcom/htc/opensense2/widget/ActivityMainBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    :cond_2
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 267
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setCancelable(Z)V

    .line 268
    new-instance v2, Lcom/htc/opensense2/widget/ActivityMainBase$1;

    invoke-direct {v2, p0}, Lcom/htc/opensense2/widget/ActivityMainBase$1;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;)V

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 283
    return-object v0
.end method

.method private onPrepareProgressDialog(Lcom/htc/app/HtcProgressDialog;Landroid/os/Bundle;)V
    .locals 2
    .parameter "dialog"
    .parameter "bundle"

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 288
    .local v0, szMessage:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 289
    const-string v1, "loading_text"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 292
    :cond_1
    const v1, 0x7f0b003f

    invoke-virtual {p0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    :cond_2
    invoke-virtual {p1, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 295
    return-void
.end method

.method private onProgressBackPressed(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableProgressInterrupt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isSceneChangeLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->isDisplayControlBusy()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    :cond_2
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 417
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method


# virtual methods
.method protected checkCallerIntent(Landroid/content/Intent;)Z
    .locals 1
    .parameter "caller"

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public enableAccessCamera(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableAccessCamera(Z)V

    .line 164
    :cond_0
    return-void
.end method

.method public enableBroadcastReceiver()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public enableDataSourceUpdating(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 178
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableDataSourceUpdating(Z)V

    .line 180
    :cond_0
    return-void
.end method

.method public enableErrorScene()Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method protected enableProgressInterrupt()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public enableSourceContentPadding(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 186
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceContentPadding(Z)V

    .line 188
    :cond_0
    return-void
.end method

.method public enableSourceSwitch(ZZ)V
    .locals 2
    .parameter "bEnable"
    .parameter "bEnableAnimation"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v1, :cond_0

    .line 170
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->enableSourceSwitch(ZZ)V

    .line 172
    :cond_0
    return-void
.end method

.method public fullscreenMode(Z)V
    .locals 2
    .parameter "bEnable"

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/IScreenDisplay;->fullscreenMode(Z)V

    .line 216
    :goto_0
    return-void

    .line 214
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    invoke-static {p0, p1}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->showFullscreen(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method protected abstract getContentView()I
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected abstract getLayoutHost()Landroid/view/ViewGroup;
.end method

.method public getSourceSwitchView()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 193
    .local v1, view:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    if-eqz v2, :cond_0

    .line 195
    check-cast v0, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;

    .end local v0           #activity:Landroid/app/Activity;
    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/IDataSourceSwitchHost;->getSourceSwitchView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 197
    :cond_0
    return-object v1
.end method

.method public gotoErrorScene()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public isInErrorScene()Z
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onActivityResult(IILandroid/content/Intent;)V

    .line 396
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBackPressedOverride()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 371
    :cond_0
    return-void
.end method

.method public onBackPressedOverride()Z
    .locals 2

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 363
    .local v0, bResult:Z
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBackPressed()Z

    move-result v0

    .line 365
    return v0
.end method

.method public onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 91
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->activityLifeCycle()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 93
    :cond_0
    iput-object p2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 123
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v2, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 105
    .local v1, isHandled:Z
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    :cond_3
    const/4 v2, 0x1

    iput v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    .line 115
    :cond_4
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    if-eqz v2, :cond_1

    .line 119
    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mMediaState:I

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 391
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->requestWindowFeature(I)Z

    .line 223
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 224
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->setContentView(I)V

    .line 226
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->checkCallerIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->finish()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    new-instance v0, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    .line 233
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayStyle(I)V

    .line 235
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setDisplayLevel(I)V

    .line 236
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getLayoutHost()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setContentHost(Landroid/view/ViewGroup;)V

    .line 237
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setActivityReference(Landroid/app/Activity;)V

    .line 238
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setSceneFactory(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnySceneFactory;)V

    .line 239
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->setHandler(Landroid/os/Handler;)V

    .line 240
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->onCreateScene()Z

    .line 241
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableBroadcastReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->registerBroadcastReceiver()V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 375
    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 302
    .local v0, dialog:Landroid/app/Dialog;
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    return-object v0

    .line 307
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onCreateProgressDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateScene(Landroid/content/Intent;)Z
    .locals 1
    .parameter "newIntent"

    .prologue
    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 353
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->enableBroadcastReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->unregisterBroadcastReceiver()V

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onDestroy()V

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 357
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 358
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 441
    const/4 v0, 0x0

    .line 443
    .local v0, bResult:Z
    iget v1, p1, Landroid/os/Message;->what:I

    .line 446
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v1, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onMessage(Landroid/os/Message;)Z

    .line 451
    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPause()V

    .line 344
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4
    .parameter "nMessageID"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 459
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"
    .parameter "extras"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    packed-switch p1, :pswitch_data_0

    .line 326
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 322
    .restart local p2
    :pswitch_0
    check-cast p2, Lcom/htc/app/HtcProgressDialog;

    .end local p2
    invoke-direct {p0, p2, p3}, Lcom/htc/opensense2/widget/ActivityMainBase;->onPrepareProgressDialog(Lcom/htc/app/HtcProgressDialog;Landroid/os/Bundle;)V

    goto :goto_0

    .line 319
    :pswitch_data_0
    .packed-switch 0x2724
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onRemoveMessage(I)V
    .locals 1
    .parameter "nMessageID"

    .prologue
    .line 463
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 335
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onResume()V

    .line 336
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onBroadcastReceiveDispatcher(Landroid/content/Context;Landroid/content/Intent;)V

    .line 339
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mLastBroadcastIntent:Landroid/content/Intent;

    .line 340
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 329
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 330
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStart()V

    .line 331
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->onStop()V

    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 350
    return-void
.end method

.method public registerBroadcastReceiver()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 145
    :goto_0
    return-void

    .line 129
    :cond_0
    new-instance v1, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/htc/opensense2/widget/ActivityMainBase$sceneBroadCastReceiver;-><init>(Lcom/htc/opensense2/widget/ActivityMainBase;Lcom/htc/opensense2/widget/ActivityMainBase$1;)V

    iput-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 136
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.MEDIA_NOFS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 433
    return-void
.end method

.method public unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/opensense2/widget/ActivityMainBase;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/opensense2/widget/ActivityMainBase;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    goto :goto_0
.end method

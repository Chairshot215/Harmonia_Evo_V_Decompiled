.class public abstract Lcom/htc/widget/profile/HtcAbstractWidget;
.super Lcom/htc/android/rosie/widget/Widget$Base;
.source "HtcAbstractWidget.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;


# static fields
.field private static final ON_CONFIGURATION_CHANGED:I = 0x1

.field private static final ON_LOAD_CONTROLS:I = 0x2

.field private static final ON_UNLOAD_CONTROLS:I = 0x3

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

.field private mLandscapeFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

.field private mPortraitFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

.field private mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/htc/widget/profile/HtcAbstractWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/profile/HtcAbstractWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/android/rosie/widget/Widget$Base;-><init>()V

    .line 32
    new-instance v0, Lcom/htc/widget/profile/HtcFxObjects;

    invoke-direct {v0}, Lcom/htc/widget/profile/HtcFxObjects;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mPortraitFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    .line 33
    new-instance v0, Lcom/htc/widget/profile/HtcFxObjects;

    invoke-direct {v0}, Lcom/htc/widget/profile/HtcFxObjects;-><init>()V

    iput-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mLandscapeFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    return-void
.end method

.method private loadControls()V
    .locals 6

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->switchFxObjects()V

    .line 131
    iget-object v3, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v3}, Lcom/htc/widget/profile/HtcFxObjects;->loadControls()Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 139
    .local v1, config:Landroid/content/res/Configuration;
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v3, :pswitch_data_0

    .line 150
    const-string v0, "ORIENTATION_UNDEFINED"

    .line 152
    .local v0, ORIENTATION:Ljava/lang/String;
    :goto_0
    sget-object v3, Lcom/htc/widget/profile/HtcAbstractWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Configuration.orientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    sget-object v3, Lcom/htc/widget/profile/HtcAbstractWidget;->TAG:Ljava/lang/String;

    const-string v4, "loadControls() failed!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .end local v0           #ORIENTATION:Ljava/lang/String;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_1
    return-void

    .line 141
    .restart local v1       #config:Landroid/content/res/Configuration;
    :pswitch_0
    const-string v0, "ORIENTATION_PORTRAIT"

    .line 142
    .restart local v0       #ORIENTATION:Ljava/lang/String;
    goto :goto_0

    .line 144
    .end local v0           #ORIENTATION:Ljava/lang/String;
    :pswitch_1
    const-string v0, "ORIENTATION_LANDSCAPE"

    .line 145
    .restart local v0       #ORIENTATION:Ljava/lang/String;
    goto :goto_0

    .line 147
    .end local v0           #ORIENTATION:Ljava/lang/String;
    :pswitch_2
    const-string v0, "ORIENTATION_SQUARE"

    .line 148
    .restart local v0       #ORIENTATION:Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v0           #ORIENTATION:Ljava/lang/String;
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_0
    iget-object v3, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v3}, Lcom/htc/widget/profile/HtcFxObjects;->getButtonAgent()Lcom/htc/widget/profile/HtcFxButtonAgent;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/htc/widget/profile/HtcFxButtonAgent;->setOnClickListener(Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;)V

    .line 161
    iget-object v3, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v3}, Lcom/htc/widget/profile/HtcFxObjects;->getButtonAgent()Lcom/htc/widget/profile/HtcFxButtonAgent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/profile/HtcFxButtonAgent;->getButton()Lcom/htc/fusion/fx/FxControl;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/htc/widget/profile/HtcAbstractWidget;->onInitializeButton(Lcom/htc/fusion/fx/FxControl;)V

    .line 163
    iget-object v3, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v3}, Lcom/htc/widget/profile/HtcFxObjects;->getTextLabel()Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 164
    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 165
    .local v2, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v3}, Lcom/htc/widget/profile/HtcFxObjects;->getTextLabel()Lcom/htc/fusion/fx/controls/FxTextLabel;

    move-result-object v3

    const v4, 0x7f040003

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/controls/FxTextLabel;->setString(Ljava/lang/String;)V

    goto :goto_1

    .line 168
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_1
    sget-object v3, Lcom/htc/widget/profile/HtcAbstractWidget;->TAG:Ljava/lang/String;

    const-string v4, "this.mTextLabel should not be null!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private preloadScenes()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mPortraitFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/profile/HtcFxObjects;->loadScene(Lcom/htc/android/rosie/widget/Widget$Host;Z)V

    .line 119
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mLandscapeFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/profile/HtcFxObjects;->loadScene(Lcom/htc/android/rosie/widget/Widget$Host;Z)V

    .line 120
    return-void
.end method

.method private switchFxObjects()V
    .locals 3

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/android/rosie/widget/Widget$Host;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 107
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 108
    iget-object v1, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mPortraitFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    iput-object v1, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    .line 112
    :goto_0
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mLandscapeFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    iput-object v1, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    goto :goto_0
.end method

.method private unloadControls()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mPortraitFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v0}, Lcom/htc/widget/profile/HtcFxObjects;->unloadControls()V

    .line 174
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mLandscapeFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v0}, Lcom/htc/widget/profile/HtcFxObjects;->unloadControls()V

    .line 175
    return-void
.end method


# virtual methods
.method protected getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->switchFxObjects()V

    .line 67
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mFxObjects:Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v0}, Lcom/htc/widget/profile/HtcFxObjects;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method protected getWorker()Lcom/htc/android/rosie/widget/Widget$Host$Worker;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 84
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 86
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->loadControls()V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->unloadControls()V

    goto :goto_0

    .line 92
    :pswitch_2
    invoke-direct {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->loadControls()V

    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Lcom/htc/fusion/fx/FxControl;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 190
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 44
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->recall(I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->getHost()Lcom/htc/android/rosie/widget/Widget$Host;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/htc/android/rosie/widget/Widget$Host;->getWorker(Landroid/os/Handler$Callback;)Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    .line 54
    invoke-direct {p0}, Lcom/htc/widget/profile/HtcAbstractWidget;->preloadScenes()V

    .line 55
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 56
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/htc/android/rosie/widget/Widget$Base;->onDestroy()V

    .line 61
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    .line 62
    return-void
.end method

.method protected onHostMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/htc/android/rosie/widget/Widget$Base;->onHostMessage(Landroid/os/Message;)V

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/htc/widget/profile/HtcAbstractWidget;->mWorker:Lcom/htc/android/rosie/widget/Widget$Host$Worker;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host$Worker;->send(I)V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onInitializeButton(Lcom/htc/fusion/fx/FxControl;)V
    .locals 0
    .parameter "button"

    .prologue
    .line 186
    return-void
.end method

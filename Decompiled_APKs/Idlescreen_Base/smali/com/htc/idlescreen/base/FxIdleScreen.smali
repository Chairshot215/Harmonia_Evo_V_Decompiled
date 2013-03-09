.class public Lcom/htc/idlescreen/base/FxIdleScreen;
.super Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenBase;
.source "FxIdleScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;
    }
.end annotation


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "FxIdleScreen"

.field public static final SCOPE_RING:Ljava/lang/String; = "ring"

.field private static final WHAT_UI_RESET:I = 0x138c

.field private static final WHAT_UI_SET_BACKGROUND:I = 0x138b

.field private static final WHAT_UI_SET_SCENE:I = 0x138a

.field private static final WHAT_UI_SET_VISIBLE:I = 0x1389


# instance fields
.field private mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

.field mContext:Landroid/content/Context;

.field private mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

.field private mIdleScreenCallback:Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

.field mInPortrait:Z

.field mInit:Z

.field mIsResume:Z

.field mIsStart:Z

.field private mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

.field private mLocale:Ljava/util/Locale;

.field mPluginInPortrait:Z

.field private mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

.field mService:Landroid/content/Context;

.field private mUIHandler:Landroid/os/Handler;

.field private final mUIThread:Ljava/lang/Thread;

.field private mViewCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

.field private mViewMode:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;)V
    .locals 3
    .parameter "service"
    .parameter "context"
    .parameter "fxEngineCallback"
    .parameter "idleScreenCallback"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    move-object v0, p3

    check-cast v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;

    invoke-direct {p0, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenBase;-><init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V

    .line 94
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mVisible:Z

    .line 101
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInit:Z

    .line 103
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    .line 104
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPluginInPortrait:Z

    .line 105
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsResume:Z

    .line 106
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsStart:Z

    .line 108
    new-instance v0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;-><init>(Lcom/htc/idlescreen/base/FxIdleScreen;Lcom/htc/idlescreen/base/FxIdleScreen$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIHandler:Landroid/os/Handler;

    .line 383
    new-instance v0, Lcom/htc/idlescreen/base/FxIdleScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/base/FxIdleScreen$1;-><init>(Lcom/htc/idlescreen/base/FxIdleScreen;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mViewCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 117
    const-string v0, "FxIdleScreen"

    const-string v1, "onConstructor"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIThread:Ljava/lang/Thread;

    .line 119
    iput-object p1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mService:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    .line 122
    iput-object p3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    .line 123
    iput-object p4, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIdleScreenCallback:Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V
    .locals 2
    .parameter "service"
    .parameter "context"
    .parameter "engine"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, p3}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenBase;-><init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V

    .line 94
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mVisible:Z

    .line 101
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInit:Z

    .line 103
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    .line 104
    iput-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPluginInPortrait:Z

    .line 105
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsResume:Z

    .line 106
    iput-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsStart:Z

    .line 108
    new-instance v0, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/idlescreen/base/FxIdleScreen$MyUIHandler;-><init>(Lcom/htc/idlescreen/base/FxIdleScreen;Lcom/htc/idlescreen/base/FxIdleScreen$1;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIHandler:Landroid/os/Handler;

    .line 383
    new-instance v0, Lcom/htc/idlescreen/base/FxIdleScreen$1;

    invoke-direct {v0, p0}, Lcom/htc/idlescreen/base/FxIdleScreen$1;-><init>(Lcom/htc/idlescreen/base/FxIdleScreen;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mViewCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    .line 130
    const-string v0, "FxIdleScreen"

    const-string v1, "onConstructor"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIThread:Ljava/lang/Thread;

    .line 132
    iput-object p1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mService:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    .line 135
    iput-object p3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    .line 136
    iput-object p3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIdleScreenCallback:Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    .line 137
    return-void
.end method

.method static synthetic access$100(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/idlescreen/base/FxIdleScreen;Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/idlescreen/base/FxIdleScreen;->handleSetBackground(Lcom/htc/fusion/fx/FxScene;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/idlescreen/base/widget/IdleContainer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/idlescreen/base/FxIdleScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/htc/idlescreen/base/FxIdleScreen;->isPortrait()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/idlescreen/base/FxIdleScreen;)Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIdleScreenCallback:Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/idlescreen/base/FxIdleScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/idlescreen/base/FxIdleScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mViewMode:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/idlescreen/base/FxIdleScreen;Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Lcom/htc/idlescreen/base/FxIdleScreen;->handleSetScene(Lcom/htc/fusion/fx/FxScene;Z)V

    return-void
.end method

.method private checkThread()Z
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSetBackground(Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 4
    .parameter "bgScene"
    .parameter "isPortrait"

    .prologue
    .line 285
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInit:Z

    if-nez v1, :cond_1

    .line 286
    const-string v1, "FxIdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetBackground before init isPortrait:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    const/4 v0, 0x0

    .line 292
    .local v0, container:Lcom/htc/idlescreen/base/widget/IdleContainer;
    if-eqz p2, :cond_2

    .line 293
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 298
    :goto_1
    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setBackground(Lcom/htc/fusion/fx/FxScene;)V

    goto :goto_0

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    goto :goto_1
.end method

.method private handleSetScene(Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 4
    .parameter "plugin"
    .parameter "isPortrait"

    .prologue
    .line 246
    iget-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInit:Z

    if-nez v1, :cond_1

    .line 247
    const-string v1, "FxIdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetScene before init isPortrait:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    const-string v1, "FxIdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetScene isPortrait:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, container:Lcom/htc/idlescreen/base/widget/IdleContainer;
    if-eqz p2, :cond_2

    .line 261
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 267
    :goto_1
    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setPluginScene(Landroid/content/Context;Lcom/htc/fusion/fx/FxScene;)Lcom/htc/idlescreen/base/widget/IdleView;

    goto :goto_0

    .line 263
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    goto :goto_1
.end method

.method private isPortrait()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    return v0
.end method

.method private notifyPluginOrientationChanged()V
    .locals 3

    .prologue
    .line 673
    const-string v0, "FxIdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPluginOrientationChanged bPortrait:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    iget-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->onOrientationChanged(Z)V

    .line 676
    return-void
.end method

.method private updateTimeWidget()V
    .locals 4

    .prologue
    .line 708
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/IdleState;->getPlmnAndSpn()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 709
    .local v0, opNames:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setOperatorName(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 710
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateTime()V

    .line 711
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/FxIdleScreen;->uninit()V

    .line 306
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->closeOptionsMenu()V

    .line 922
    return-void
.end method

.method public createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "pluginPath"
    .parameter "visible"

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCommonDimen(Ljava/lang/String;I)I
    .locals 1
    .parameter "code"
    .parameter "defValue"

    .prologue
    .line 774
    const-string v0, "scroll"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const/16 p2, 0xc8

    .line 777
    .end local p2
    :cond_0
    return p2
.end method

.method public getCommonM10Path(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "m10Path"

    .prologue
    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Port/base/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lcom/htc/idlescreen/base/widget/IdleContainer;
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    return-object v0
.end method

.method public getErrorM10Path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 605
    const-string v0, "Port/base/Lockscreen_common_error.m10"

    return-object v0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 9
    .parameter "name"
    .parameter "scene"
    .parameter "root"
    .parameter "timelineY"
    .parameter "timelineX"
    .parameter "timelineScale"
    .parameter "timelineOpacity"
    .parameter "hitbox"

    .prologue
    .line 574
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V

    return-object v0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 11
    .parameter "name"
    .parameter "scene"
    .parameter "root"
    .parameter "container"
    .parameter "timelineY"
    .parameter "timelineX"
    .parameter "timelineScale"
    .parameter "timelineOpacity"
    .parameter "drag"
    .parameter "hitbox"

    .prologue
    .line 583
    if-nez p4, :cond_0

    .line 584
    move-object p4, p3

    .line 586
    :cond_0
    if-nez p4, :cond_1

    .line 587
    move-object p4, p2

    .line 589
    :cond_1
    move-object/from16 v0, p9

    invoke-virtual {p4, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v10

    check-cast v10, Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 591
    .local v10, dragControl:Lcom/htc/fusion/fx/controls/FxDragControl;
    if-eqz v10, :cond_2

    .line 592
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 593
    sget v1, Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;->MANUAL:I

    invoke-virtual {v10, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setBeginDragStyle(I)V

    .line 595
    :cond_2
    new-instance v1, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    invoke-virtual/range {p4 .. p5}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p6

    invoke-virtual {p4, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p7

    invoke-virtual {p4, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p8

    invoke-virtual {p4, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p10

    invoke-virtual {p4, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxHitbox;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V

    return-object v1
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 11
    .parameter "name"
    .parameter "scene"
    .parameter "root"
    .parameter "timelineY"
    .parameter "timelineX"
    .parameter "timelineScale"
    .parameter "timelineOpacity"
    .parameter "hitbox"

    .prologue
    .line 512
    move-object v10, p3

    .line 518
    .local v10, container:Lcom/htc/fusion/fx/FxTimelineControl;
    if-nez v10, :cond_0

    .line 519
    move-object v10, p2

    .line 521
    :cond_0
    invoke-virtual {v10, p4}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 522
    .local v5, mtimelineY:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v5, :cond_1

    move-object v10, v5

    .line 524
    :cond_1
    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 525
    .local v6, mtimelineX:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v6, :cond_2

    move-object v10, v6

    .line 527
    :cond_2
    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 528
    .local v7, mtimelineScale:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v7, :cond_3

    move-object v10, v7

    .line 530
    :cond_3
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/FxTimelineControl;

    .line 531
    .local v8, mtimelineOpacity:Lcom/htc/fusion/fx/FxTimelineControl;
    if-eqz v8, :cond_4

    move-object v10, v8

    .line 533
    :cond_4
    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxHitbox;

    .line 535
    .local v9, mhitbox:Lcom/htc/fusion/fx/controls/FxHitbox;
    new-instance v1, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V

    return-object v1
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 12
    .parameter "name"
    .parameter "scene"
    .parameter "root"
    .parameter "timelineY"
    .parameter "timelineX"
    .parameter "timelineScale"
    .parameter "timelineOpacity"
    .parameter "drag"
    .parameter "hitbox"

    .prologue
    .line 547
    move-object v10, p3

    .line 548
    .local v10, container:Lcom/htc/fusion/fx/FxTimelineControl;
    if-nez v10, :cond_0

    .line 549
    move-object v10, p2

    .line 551
    :cond_0
    move-object/from16 v0, p8

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v11

    check-cast v11, Lcom/htc/fusion/fx/controls/FxDragControl;

    .line 553
    .local v11, dragControl:Lcom/htc/fusion/fx/controls/FxDragControl;
    if-eqz v11, :cond_1

    .line 554
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setEnabled(Z)V

    .line 555
    sget v1, Lcom/htc/fusion/fx/FxDraggable$BeginDragStyle;->MANUAL:I

    invoke-virtual {v11, v1}, Lcom/htc/fusion/fx/controls/FxDragControl;->setBeginDragStyle(I)V

    .line 557
    :cond_1
    new-instance v1, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;

    move-object/from16 v0, p4

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v5

    check-cast v5, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p5

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v6

    check-cast v6, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v7

    check-cast v7, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v8

    check-cast v8, Lcom/htc/fusion/fx/FxTimelineControl;

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Lcom/htc/fusion/fx/FxTimelineControl;->getDescendant(Ljava/lang/String;)Lcom/htc/fusion/fx/FxObject;

    move-result-object v9

    check-cast v9, Lcom/htc/fusion/fx/controls/FxHitbox;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v9}, Lcom/htc/idlescreen/base/widget/IdleDragControlImpl;-><init>(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)V

    return-object v1
.end method

.method public getLoadingM10Path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    const-string v0, "Port/base/Lockscreen_common_loading.m10"

    return-object v0
.end method

.method public getRing()Lcom/htc/idlescreen/base/widget/IdleRing;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getRing()Lcom/htc/idlescreen/base/widget/IdleRing;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRingScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    const-string v0, "ring"

    return-object v0
.end method

.method public getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getShortcutPanel()Lcom/htc/idlescreen/base/widget/shortcut/ShortcutContainer;

    move-result-object v0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 144
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    if-nez v2, :cond_0

    .line 145
    const-string v2, "FxIdleScreen"

    const-string v3, "callback is null"

    invoke-static {v2, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 148
    :cond_0
    const-string v2, "FxIdleScreen"

    const-string v5, "init"

    invoke-static {v2, v5}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInit:Z

    .line 150
    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLocale:Ljava/util/Locale;

    .line 151
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mService:Landroid/content/Context;

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v2, v5}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    .line 153
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->hadLandScape()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    .line 155
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPluginInPortrait:Z

    .line 157
    :cond_1
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v2

    iget-object v5, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mViewCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-virtual {v2, v5, v6, v7}, Lcom/htc/idlescreen/base/IdleState;->init(Landroid/content/Context;Landroid/content/Context;Lcom/htc/idlescreen/base/IdleState$ViewCallback;)V

    .line 158
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    invoke-interface {v2}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v1

    .line 159
    .local v1, viewObject:Lcom/htc/fusion/fx/FxViewObject;
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mService:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    .line 161
    new-instance v2, Lcom/htc/idlescreen/base/widget/IdleContainer;

    iget-object v5, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    invoke-direct {v2, v5, p0, v6, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;Z)V

    iput-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 162
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxViewObject;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 163
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->hadLandScape()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    new-instance v0, Lcom/htc/idlescreen/base/widget/IdleContainer;

    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    invoke-direct {v0, v2, p0, v3, v4}, Lcom/htc/idlescreen/base/widget/IdleContainer;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;Z)V

    .line 166
    .local v0, landContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 167
    iput-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 168
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxViewObject;->addScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 171
    .end local v0           #landContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/FxIdleScreen;->updateContainer()V

    goto/16 :goto_0

    .end local v1           #viewObject:Lcom/htc/fusion/fx/FxViewObject;
    :cond_3
    move v2, v4

    .line 154
    goto :goto_1
.end method

.method public isInPortrait()Z
    .locals 1

    .prologue
    .line 769
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    return v0
.end method

.method public isShortcutVisible()Z
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->isShortcutVisible()Z

    move-result v0

    .line 824
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "config"

    .prologue
    const/4 v6, 0x1

    .line 638
    const-string v7, "FxIdleScreen"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onConfigurationChanged new orientation:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mLocale:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLocale:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " locale:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 656
    .local v4, start:J
    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->hadLandScape()Z

    move-result v7

    if-nez v7, :cond_0

    .line 670
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-boolean v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    .line 661
    .local v3, oldInPortrait:Z
    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v6, :cond_2

    move v2, v6

    .line 662
    .local v2, newInPortrait:Z
    :goto_1
    if-eq v3, v2, :cond_1

    .line 663
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    .line 664
    invoke-virtual {p0, v2, v6}, Lcom/htc/idlescreen/base/FxIdleScreen;->onOrientationChanged(ZZ)V

    .line 665
    iget-object v6, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mService:Landroid/content/Context;

    iget v7, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v6, v7}, Lcom/htc/fusion/fx/FxSkinUtility;->loadSkinResource(Landroid/content/Context;I)V

    .line 668
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 669
    .local v0, end:J
    const-string v6, "FxIdleScreen"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onConfigurationChanged end dur:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    .end local v0           #end:J
    .end local v2           #newInPortrait:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onCreateOptionMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 905
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onCreateOptionMenu(Landroid/view/Menu;)V

    .line 906
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 3
    .parameter "paramInt"
    .parameter "paramKeyEvent"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tweaks_menu_unlock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    .line 23
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->unlock()V

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onKeyDown(ILandroid/view/KeyEvent;)V

    .line 831
    :cond_1
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 1
    .parameter "keycode"
    .parameter "keyEvent"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1, p2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 837
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 912
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 918
    return-void
.end method

.method protected onOrientationChanged(ZZ)V
    .locals 3
    .parameter "bPortrait"
    .parameter "updateViewMode"

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsStart:Z

    if-eqz v0, :cond_0

    .line 685
    const-string v0, "FxIdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged bPortrait:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPluginInPortrait:Z

    .line 687
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->pauseRender()V

    .line 688
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    .line 689
    invoke-direct {p0}, Lcom/htc/idlescreen/base/FxIdleScreen;->notifyPluginOrientationChanged()V

    .line 690
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/FxIdleScreen;->resetLayout()V

    .line 691
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->waitFirstFrame(Lcom/htc/fusion/fx/FxScene;)V

    .line 692
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->resumeRender()V

    .line 694
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    const-string v0, "FxIdleScreen"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsResume:Z

    .line 328
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onPause()V

    .line 329
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->onUIPause()V

    .line 330
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->UIWakeLock(Landroid/content/Context;Z)V

    .line 331
    return-void
.end method

.method public onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 614
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/IdleState;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    .line 615
    return-void
.end method

.method public onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 841
    const-string v0, "FxIdleScreen"

    const-string v1, "onRemoteViewUpdate"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/IdleState;->onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    .line 843
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 334
    const-string v0, "FxIdleScreen"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsResume:Z

    .line 337
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->onUIResume()V

    .line 338
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onResume()V

    .line 339
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    iget-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mVisible:Z

    invoke-virtual {v0, v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setVisible(Z)V

    .line 341
    return-void
.end method

.method public onScreenOnOffChanged(Z)V
    .locals 1
    .parameter "screenOn"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onScreenOnOffChanged(Z)V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onScreenOnOffChanged(Z)V

    .line 893
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    .line 346
    const-string v0, "FxIdleScreen"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iput-boolean v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsStart:Z

    .line 348
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->onUIStart()V

    .line 350
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onStart()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onStart()V

    .line 357
    :cond_1
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPluginInPortrait:Z

    iget-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    if-eq v0, v1, :cond_2

    .line 358
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    invoke-virtual {p0, v0, v2}, Lcom/htc/idlescreen/base/FxIdleScreen;->onOrientationChanged(ZZ)V

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->eventWakeLock(Landroid/content/Context;Z)V

    .line 362
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 366
    const-string v0, "FxIdleScreen"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsStart:Z

    .line 368
    iput-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsResume:Z

    .line 369
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onStop()V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onStop()V

    .line 375
    :cond_1
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/idlescreen/base/IdleState;->onUIStop()V

    .line 376
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/htc/idlescreen/base/util/WakeLockUtil;->UIWakeLock(Landroid/content/Context;Z)V

    .line 377
    return-void
.end method

.method public onTouchEvent(III)V
    .locals 1
    .parameter "action"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onTouchEvent(III)V

    .line 322
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 318
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/16 v3, 0x138c

    .line 897
    if-nez p1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v0, v3}, Lcom/htc/idlescreen/base/util/MyUtil;->removeMessage(Landroid/os/Handler;I)V

    .line 899
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-static {v0, v3, v1, v2}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;IJ)V

    .line 901
    :cond_0
    return-void
.end method

.method protected resetLayout()V
    .locals 1

    .prologue
    .line 697
    iget-boolean v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInit:Z

    if-nez v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 703
    :cond_0
    invoke-virtual {p0}, Lcom/htc/idlescreen/base/FxIdleScreen;->updateContainer()V

    goto :goto_0
.end method

.method public setBackground(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 4
    .parameter "bgScene"
    .parameter "isPortrait"

    .prologue
    .line 275
    const-string v1, "FxIdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBackground isPortrait:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 277
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x138b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 278
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 279
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 280
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 281
    return-object p1

    .line 279
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 878
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setBackground(Landroid/graphics/Bitmap;)V

    .line 881
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_1

    .line 882
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setBackground(Landroid/graphics/Bitmap;)V

    .line 884
    :cond_1
    return-void
.end method

.method public setClockType(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 867
    const-string v0, "FxIdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setClockType type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setClockType(I)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setClockType(I)V

    .line 874
    :cond_1
    return-void
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "scene"

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 4
    .parameter "plugin"
    .parameter "isPortrait"

    .prologue
    .line 236
    const-string v1, "FxIdleScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScene isPortrait:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 238
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x138a

    iput v1, v0, Landroid/os/Message;->what:I

    .line 239
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 241
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mUIHandler:Landroid/os/Handler;

    invoke-static {v1, v0}, Lcom/htc/idlescreen/base/util/MyUtil;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)V

    .line 242
    return-object p1

    .line 240
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "pluginPath"

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public setScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1
    .parameter "pluginPath"
    .parameter "initVisible"

    .prologue
    .line 208
    const/4 v0, 0x0

    return-object v0
.end method

.method public setShortcutVisibility(I)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 857
    const-string v0, "FxIdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShortcutVisible flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setShortcutVisible(I)V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v0, :cond_1

    .line 862
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setShortcutVisible(I)V

    .line 864
    :cond_1
    return-void
.end method

.method public setShortcutVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 847
    const-string v1, "FxIdleScreen"

    const-string v2, "setShortcutVisible(boolean) is deprecated"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, flag:I
    if-nez p1, :cond_0

    .line 850
    const/4 v0, 0x1

    .line 852
    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/idlescreen/base/FxIdleScreen;->setShortcutVisibility(I)V

    .line 853
    return-void
.end method

.method public setVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 310
    const-string v0, "FxIdleScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisible visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iput-boolean p1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mVisible:Z

    .line 312
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v0, p1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setVisible(Z)V

    .line 314
    return-void
.end method

.method public uninit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 175
    const-string v1, "FxIdleScreen"

    const-string v2, "uninit"

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInit:Z

    .line 177
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mFxEngineCallback:Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;

    invoke-interface {v1}, Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;->getViewObject()Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v0

    .line 178
    .local v0, viewObject:Lcom/htc/fusion/fx/FxViewObject;
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->cleanup()V

    .line 180
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 181
    iput-object v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 183
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->cleanup()V

    .line 185
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v1}, Lcom/htc/idlescreen/base/widget/IdleContainer;->getScene()Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/fusion/fx/FxViewObject;->removeScene(Lcom/htc/fusion/fx/FxScene;)V

    .line 186
    iput-object v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 188
    :cond_1
    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mViewCallback:Lcom/htc/idlescreen/base/IdleState$ViewCallback;

    invoke-virtual {v1, v2}, Lcom/htc/idlescreen/base/IdleState;->uninit(Lcom/htc/idlescreen/base/IdleState$ViewCallback;)V

    .line 189
    return-void
.end method

.method public updateContainer()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 716
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mInPortrait:Z

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/idlescreen/base/util/ProjectSetting;->hadLandScape()Z

    move-result v2

    if-nez v2, :cond_2

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 718
    .local v1, showContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 725
    .local v0, hideContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    :goto_0
    if-eqz v0, :cond_1

    .line 726
    invoke-virtual {v0}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onPause()V

    .line 727
    invoke-virtual {v0, v4}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setVisible(Z)V

    .line 731
    :cond_1
    iput-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 732
    iget-boolean v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mIsResume:Z

    if-eqz v2, :cond_3

    .line 733
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v2, v4}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onResume(Z)V

    .line 737
    :goto_1
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-static {}, Lcom/htc/idlescreen/base/IdleState;->getInstance()Lcom/htc/idlescreen/base/IdleState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/idlescreen/base/IdleState;->getViewMode()Lcom/htc/idlescreen/base/IdleState$ViewMode;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/htc/idlescreen/base/widget/IdleContainer;->updateContainerView(Lcom/htc/idlescreen/base/IdleState$ViewMode;I)V

    .line 738
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    iget-boolean v3, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mVisible:Z

    invoke-virtual {v2, v3}, Lcom/htc/idlescreen/base/widget/IdleContainer;->setVisible(Z)V

    .line 739
    return-void

    .line 721
    .end local v0           #hideContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    .end local v1           #showContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mLandContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .line 722
    .restart local v1       #showContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    iget-object v0, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mPortraitContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    .restart local v0       #hideContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;
    goto :goto_0

    .line 735
    :cond_3
    iget-object v2, p0, Lcom/htc/idlescreen/base/FxIdleScreen;->mContainer:Lcom/htc/idlescreen/base/widget/IdleContainer;

    invoke-virtual {v2}, Lcom/htc/idlescreen/base/widget/IdleContainer;->onPause()V

    goto :goto_1
.end method

.method public waitFirstFrame(Lcom/htc/fusion/fx/FxScene;)V
    .locals 0
    .parameter "scene"

    .prologue
    .line 760
    return-void
.end method

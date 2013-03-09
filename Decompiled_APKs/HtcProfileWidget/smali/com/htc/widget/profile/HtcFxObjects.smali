.class public Lcom/htc/widget/profile/HtcFxObjects;
.super Ljava/lang/Object;
.source "HtcFxObjects.java"


# static fields
.field private static final BUTTON_NAME:Ljava/lang/String; = "button.settings_1x1"

.field private static final LABEL_NAME:Ljava/lang/String; = "textlabel.Settings"

.field private static final LANDSCAPE_SCENE_PATH:Ljava/lang/String; = "scenes/landscape_profile.m10"

.field private static final PORTRAIT_SCENE_PATH:Ljava/lang/String; = "scenes/portrait_profile.m10"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonAgent:Lcom/htc/widget/profile/HtcFxButtonAgent;

.field private mHasLoadedControls:Z

.field private mHasLoadedScene:Z

.field private mScene:Lcom/htc/fusion/fx/FxScene;

.field private mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/htc/widget/profile/HtcFxObjects;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/widget/profile/HtcFxObjects;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mHasLoadedScene:Z

    .line 34
    iput-boolean v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mHasLoadedControls:Z

    return-void
.end method


# virtual methods
.method public getButtonAgent()Lcom/htc/widget/profile/HtcFxButtonAgent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mButtonAgent:Lcom/htc/widget/profile/HtcFxButtonAgent;

    return-object v0
.end method

.method public getScene()Lcom/htc/fusion/fx/FxScene;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mScene:Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public getTextLabel()Lcom/htc/fusion/fx/controls/FxTextLabel;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    return-object v0
.end method

.method public declared-synchronized loadControls()Z
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/htc/widget/profile/HtcFxObjects;->mHasLoadedControls:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    move v1, v2

    .line 116
    :goto_0
    monitor-exit p0

    return v1

    .line 98
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/htc/widget/profile/HtcFxObjects;->mScene:Lcom/htc/fusion/fx/FxScene;

    if-nez v3, :cond_1

    .line 99
    sget-object v2, Lcom/htc/widget/profile/HtcFxObjects;->TAG:Ljava/lang/String;

    const-string v3, "this.mScene in loadControls() is null!"

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 104
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/htc/widget/profile/HtcFxObjects;->mScene:Lcom/htc/fusion/fx/FxScene;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "button.settings_1x1"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "textlabel.Settings"

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/htc/fusion/fx/FxScene;->getDescendants([Ljava/lang/String;)[Lcom/htc/fusion/fx/FxObject;

    move-result-object v0

    .line 107
    .local v0, itemArray:[Lcom/htc/fusion/fx/FxObject;
    if-eqz v0, :cond_2

    array-length v3, v0

    if-ge v3, v7, :cond_3

    .line 108
    :cond_2
    sget-object v2, Lcom/htc/widget/profile/HtcFxObjects;->TAG:Ljava/lang/String;

    const-string v3, "FxObject item in loadControls() is null!"

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    :cond_3
    new-instance v1, Lcom/htc/widget/profile/HtcFxButtonAgent;

    invoke-direct {v1}, Lcom/htc/widget/profile/HtcFxButtonAgent;-><init>()V

    iput-object v1, p0, Lcom/htc/widget/profile/HtcFxObjects;->mButtonAgent:Lcom/htc/widget/profile/HtcFxButtonAgent;

    .line 113
    iget-object v3, p0, Lcom/htc/widget/profile/HtcFxObjects;->mButtonAgent:Lcom/htc/widget/profile/HtcFxButtonAgent;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/FxControl;

    invoke-virtual {v3, v1}, Lcom/htc/widget/profile/HtcFxButtonAgent;->setButton(Lcom/htc/fusion/fx/FxControl;)V

    .line 114
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, Lcom/htc/fusion/fx/controls/FxTextLabel;

    iput-object v1, p0, Lcom/htc/widget/profile/HtcFxObjects;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/widget/profile/HtcFxObjects;->mHasLoadedControls:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public declared-synchronized loadScene(Lcom/htc/android/rosie/widget/Widget$Host;Z)V
    .locals 2
    .parameter "host"
    .parameter "isPortrait"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/htc/widget/profile/HtcFxObjects;->mHasLoadedScene:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 78
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/htc/widget/profile/HtcFxObjects;->mHasLoadedScene:Z

    .line 72
    if-eqz p2, :cond_1

    .line 73
    const-string v0, "scenes/portrait_profile.m10"

    .line 77
    .local v0, path:Ljava/lang/String;
    :goto_1
    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/htc/android/rosie/widget/Widget$Host;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/widget/profile/HtcFxObjects;->mScene:Lcom/htc/fusion/fx/FxScene;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 75
    :cond_1
    :try_start_2
    const-string v0, "scenes/landscape_profile.m10"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v0       #path:Ljava/lang/String;
    goto :goto_1
.end method

.method public declared-synchronized unloadControls()V
    .locals 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mHasLoadedControls:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mHasLoadedControls:Z

    .line 126
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mButtonAgent:Lcom/htc/widget/profile/HtcFxButtonAgent;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mButtonAgent:Lcom/htc/widget/profile/HtcFxButtonAgent;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/profile/HtcFxButtonAgent;->setOnClickListener(Lcom/htc/widget/profile/HtcFxButtonAgent$OnClickListener;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mButtonAgent:Lcom/htc/widget/profile/HtcFxButtonAgent;

    .line 133
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;

    if-eqz v0, :cond_2

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/widget/profile/HtcFxObjects;->mTextLabel:Lcom/htc/fusion/fx/controls/FxTextLabel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 130
    :cond_1
    :try_start_2
    sget-object v0, Lcom/htc/widget/profile/HtcFxObjects;->TAG:Ljava/lang/String;

    const-string v1, "this.mButtonAgent should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 136
    :cond_2
    sget-object v0, Lcom/htc/widget/profile/HtcFxObjects;->TAG:Ljava/lang/String;

    const-string v1, "this.mTextLabel should not be null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

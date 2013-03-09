.class public Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UpdateSceneReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;,
        Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static strLauncherDataClear:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "UpdateSceneReceiver"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "package:com.htc.launcher"

    sput-object v0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->strLauncherDataClear:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 114
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->getTranslateId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getTranslateId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "sceneName"

    .prologue
    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, defaultNames:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 55
    aget-object v2, v0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    .end local v1           #i:I
    :goto_1
    return v1

    .line 54
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 26
    sget-object v7, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, action:Ljava/lang/String;
    const-string v7, "com.htc.home.personalize.SceneProvider.ACTION_SCENE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 29
    invoke-static {p1}, Lcom/htc/htcSceneManager/scene/SceneManager;->getInstance(Landroid/content/Context;)Lcom/htc/htcSceneManager/scene/SceneManager;

    move-result-object v4

    .line 30
    .local v4, sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/htc/htcSceneManager/scene/SceneManager;->setSceneUpdate(Z)V

    .line 33
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.home.personalize.updateSceneList"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 34
    .local v6, updateScene:Landroid/content/Intent;
    const-string v7, "scene_changed_type"

    const-string v8, "scene_changed_type"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    const-string v7, "scene_changed_id"

    const-string v8, "scene_changed_id"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 36
    invoke-virtual {p1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    .end local v4           #sceneManager:Lcom/htc/htcSceneManager/scene/SceneManager;
    .end local v6           #updateScene:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    const-string v7, "com.htc.home.personalize.init_translateId"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 38
    const-string v7, "translate_ids"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    .line 39
    .local v3, sceneIds:[I
    new-instance v2, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;

    invoke-direct {v2, p0, p1, v3}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;-><init>(Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;Landroid/content/Context;[I)V

    .line 40
    .local v2, initScene:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;
    invoke-virtual {v2}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;->start()V

    goto :goto_0

    .line 41
    .end local v2           #initScene:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$initSceneTranslateId;
    .end local v3           #sceneIds:[I
    :cond_2
    const-string v7, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, strPackage:Ljava/lang/String;
    sget-object v7, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PACKAGE_DATA_CLEARED: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz v5, :cond_0

    sget-object v7, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;->strLauncherDataClear:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 46
    new-instance v0, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;

    invoke-direct {v0, p0, p1}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;-><init>(Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver;Landroid/content/Context;)V

    .line 47
    .local v0, CLS:Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;
    invoke-virtual {v0}, Lcom/htc/home/personalize/SceneProvider/UpdateSceneReceiver$ClearAllScenes;->start()V

    goto :goto_0
.end method

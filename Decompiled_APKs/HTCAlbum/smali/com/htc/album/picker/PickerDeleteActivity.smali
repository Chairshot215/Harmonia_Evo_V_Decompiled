.class public Lcom/htc/album/picker/PickerDeleteActivity;
.super Lcom/htc/album/TabPluginDevice/ActivityMainLocal;
.source "PickerDeleteActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mPickerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/album/picker/PickerDeleteActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerDeleteActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerDeleteActivity;->mPickerMode:I

    return-void
.end method


# virtual methods
.method public checkCallerIntent(Landroid/content/Intent;)Z
    .locals 3
    .parameter "caller"

    .prologue
    const/4 v0, 0x0

    .line 38
    if-nez p1, :cond_1

    .line 40
    sget-object v1, Lcom/htc/album/picker/PickerDeleteActivity;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[checkCallerIntent] Null Intent found!!"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v1

    iput v1, p0, Lcom/htc/album/picker/PickerDeleteActivity;->mPickerMode:I

    .line 45
    iget v1, p0, Lcom/htc/album/picker/PickerDeleteActivity;->mPickerMode:I

    if-eqz v1, :cond_0

    .line 49
    const-string v0, "picker_mode"

    iget v1, p0, Lcom/htc/album/picker/PickerDeleteActivity;->mPickerMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 51
    const-string v0, "com.htc.album.ACTION_PICK_DELETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onBroadcastMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 66
    sget-object v0, Lcom/htc/album/picker/PickerDeleteActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][PickerDeleteActivity][onBroadcastMediaDisconnected]: "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteActivity;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 68
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteActivity;->finish()V

    .line 70
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateScene()Z
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/htc/album/picker/PickerDeleteActivity;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {p0}, Lcom/htc/album/picker/PickerDeleteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 55
    const/4 v0, 0x0

    .line 56
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-class v1, Lcom/htc/album/picker/PickerDeleteScene;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    new-instance v0, Lcom/htc/album/picker/PickerDeleteScene;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/picker/PickerDeleteScene;-><init>()V

    .line 59
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    if-nez v0, :cond_1

    .line 60
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 62
    :cond_1
    return-object v0
.end method

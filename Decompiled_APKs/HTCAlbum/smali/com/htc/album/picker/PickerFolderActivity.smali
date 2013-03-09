.class public Lcom/htc/album/picker/PickerFolderActivity;
.super Lcom/htc/album/TabPluginDevice/ActivityMainLocal;
.source "PickerFolderActivity.java"


# static fields
.field static final CLS_NAME_FOLDER_PICKER:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mMediaType:I

.field private mPickerMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/htc/album/picker/PickerFolderActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerFolderActivity;->LOG_TAG:Ljava/lang/String;

    .line 24
    const-class v0, Lcom/htc/album/picker/PickerFolderScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/picker/PickerFolderActivity;->CLS_NAME_FOLDER_PICKER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/album/picker/PickerFolderActivity;->mPickerMode:I

    .line 23
    const/16 v0, 0xff

    iput v0, p0, Lcom/htc/album/picker/PickerFolderActivity;->mMediaType:I

    return-void
.end method


# virtual methods
.method public getPickerMode()I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/htc/album/picker/PickerFolderActivity;->mPickerMode:I

    return v0
.end method

.method public onCreateScene()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    invoke-static {p0}, Lcom/htc/album/picker/PickerConstants;->getPickerMode(Landroid/app/Activity;)I

    move-result v6

    iput v6, p0, Lcom/htc/album/picker/PickerFolderActivity;->mPickerMode:I

    .line 35
    iget v6, p0, Lcom/htc/album/picker/PickerFolderActivity;->mPickerMode:I

    if-nez v6, :cond_0

    .line 55
    :goto_0
    return v4

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "in_pickermode"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    iget v6, p0, Lcom/htc/album/picker/PickerFolderActivity;->mPickerMode:I

    invoke-static {v6}, Lcom/htc/album/picker/PickerConstants;->getMediaType(I)I

    move-result v6

    iput v6, p0, Lcom/htc/album/picker/PickerFolderActivity;->mMediaType:I

    .line 45
    invoke-virtual {p0}, Lcom/htc/album/picker/PickerFolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 46
    .local v3, request:Landroid/content/Intent;
    const-string v6, "no3d_contents"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 47
    .local v2, no3d:Z
    const-string v4, "MimeTypeFilter"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, filter:Ljava/lang/String;
    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 49
    const-string v4, "MimeTypeFilter"

    const-string v6, "image/jpeg;image/bmp;image/png;image/gif;image/vnd.wap.wbmp;image/x-ms-bmp;video/mp4;video/3gpp;video/x-ms-wmv;video/x-msvideo;video/x-xvid"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    :cond_1
    const-string v4, "mediaType"

    iget v6, p0, Lcom/htc/album/picker/PickerFolderActivity;->mMediaType:I

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    iget-object v4, p0, Lcom/htc/album/picker/PickerFolderActivity;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    sget-object v7, Lcom/htc/album/picker/PickerFolderActivity;->CLS_NAME_FOLDER_PICKER:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    move v4, v5

    .line 55
    goto :goto_0
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    sget-object v1, Lcom/htc/album/picker/PickerFolderActivity;->CLS_NAME_FOLDER_PICKER:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Lcom/htc/album/picker/PickerFolderScene;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/picker/PickerFolderScene;-><init>()V

    .line 68
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    if-nez v0, :cond_1

    .line 69
    invoke-super {p0, p1}, Lcom/htc/album/TabPluginDevice/ActivityMainLocal;->sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v0

    .line 71
    :cond_1
    return-object v0
.end method

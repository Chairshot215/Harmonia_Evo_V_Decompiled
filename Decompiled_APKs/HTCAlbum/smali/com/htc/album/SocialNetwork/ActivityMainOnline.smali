.class public Lcom/htc/album/SocialNetwork/ActivityMainOnline;
.super Lcom/htc/opensense2/widget/ActivityMainBase;
.source "ActivityMainOnline.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ActivityMainOnline"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/opensense2/widget/ActivityMainBase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainOnline;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->onLaunchSettings_Wireless()V

    return-void
.end method

.method private onLaunchSettings_Wireless()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 127
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void
.end method

.method private startSceneWithIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 54
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 56
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "service_name"

    const-string v2, "service_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "user_id"

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v1, "album_id"

    const-string v2, "album_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "album_name"

    const-string v2, "album_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "flag_genuine"

    const-string v2, "flag_genuine"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string v1, "from_tabhost"

    const-string v2, "from_tabhost"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string v1, "from_albumhost"

    const-string v2, "from_albumhost"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string v1, "from_tmoFaves"

    const-string v2, "from_tmoFaves"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "user_buddyicon"

    const-string v2, "user_buddyicon"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "from_outside"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 73
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const-string v2, "online_scene"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected enableProgressInterrupt()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .prologue
    .line 134
    const v0, 0x7f030029

    return v0
.end method

.method protected getLayoutHost()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 140
    const v0, 0x7f0a0060

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/high16 v5, 0x400

    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 165
    const/16 v3, 0x1390

    if-ne p1, v3, :cond_5

    if-ne p2, v4, :cond_5

    .line 167
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 168
    .local v2, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 169
    .local v0, action:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 171
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_0
    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    const-string v3, "com.htc.album.action.VIEW_PANORAMA_SHOTS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    :goto_0
    const-string v3, "goFinish"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    const-class v3, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 184
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->startActivity(Landroid/content/Intent;)V

    .line 187
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "login_btn_text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 190
    .local v1, bFirstDataPluginActivity:Z
    :goto_1
    if-nez v1, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->finish()V

    .line 209
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #bFirstDataPluginActivity:Z
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 176
    .restart local v0       #action:Ljava/lang/String;
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 177
    const-string v3, "com.htc.album.action.VIEW_BURST_SHOTS"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 179
    :cond_3
    const-string v3, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 187
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 193
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const/16 v3, 0x139b

    if-ne p1, v3, :cond_6

    if-ne p2, v4, :cond_6

    .line 195
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 196
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v3, "com.htc.album.action.VIEW_SNAPBOOTH"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v3, "goFinish"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    const-class v3, Lcom/htc/album/AlbumMain/ActivityMainDropList;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->startActivity(Landroid/content/Intent;)V

    .line 203
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->finish()V

    goto :goto_2

    .line 207
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense2/widget/ActivityMainBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "extras"

    .prologue
    .line 90
    const/16 v0, 0x272b

    if-ne p1, v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->showDialogNoConnection()Landroid/app/Dialog;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/opensense2/widget/ActivityMainBase;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateScene()Z
    .locals 5

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "from_outside"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 45
    .local v1, isOutside:Z
    if-nez v1, :cond_0

    .line 46
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    const/4 v3, 0x0

    const-string v4, "SceneOnlineFolder"

    invoke-virtual {v2, v3, v4}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->startScene(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 49
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 48
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->startSceneWithIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2
    .parameter "message"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x272c

    if-ne v0, v1, :cond_0

    .line 81
    const/16 v0, 0x272b

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->showDialog(I)V

    .line 84
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 32
    const-string v0, "ActivityMainOnline"

    const-string v1, "[HTCAlbum][MainActivity][onNewIntent]: ActivityMainOnline:... "

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/htc/opensense2/widget/ActivityMainBase;->onNewIntent(Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->setIntent(Landroid/content/Intent;)V

    .line 35
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->mContentView:Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/widgets/SunnyContainerView;->removeAllScene()Z

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->onCreateScene()Z

    .line 39
    return-void
.end method

.method public sceneFactory(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 2
    .parameter "szSceneIdentity"

    .prologue
    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    const-string v1, "SceneOnlineFolder"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlineFolder;-><init>()V

    .line 154
    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :cond_1
    const-string v1, "SceneOnlinePhotoThumbnail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoThumbnail;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 149
    :cond_2
    const-string v1, "SceneOnlinePhotoFullscreen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoFullscreen;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0

    .line 151
    :cond_3
    const-string v1, "SceneOnlinePhotoTagEditor"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v0, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;

    .end local v0           #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    invoke-direct {v0}, Lcom/htc/album/SocialNetwork/SceneOnlinePhotoTagEditor;-><init>()V

    .restart local v0       #scene:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    goto :goto_0
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 100
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c0162

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0156

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivityMainOnline;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 105
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c0200

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainOnline$1;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainOnline;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 112
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainOnline$2;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainOnline$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainOnline;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

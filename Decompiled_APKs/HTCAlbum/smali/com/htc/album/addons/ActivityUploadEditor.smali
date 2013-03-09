.class public Lcom/htc/album/addons/ActivityUploadEditor;
.super Lcom/htc/opensense2/album/TemplateActivityBase;
.source "ActivityUploadEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/TemplateActivityBase",
        "<",
        "Lcom/htc/opensense2/album/AdapterBase;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACTION_UPLOAD_EDITOR:Ljava/lang/String; = "com.htc.HTCAlbum.action.LAUNCH_UPLOAD_EDITOR"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final UPLOAD_MAX_LIMITE:I = 0x270f


# instance fields
.field private InitImageListSyncTask:Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;

.field mBundle:Landroid/os/Bundle;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mFilmstripviewTemplate:Lcom/htc/album/addons/UploadEditorTemplate;

.field mIntent:Landroid/content/Intent;

.field mIntentShare:Landroid/content/Intent;

.field private mIsAdapterReady:Z

.field mService:Ljava/lang/String;

.field public mShareForeignSource:Z

.field mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/htc/album/addons/ActivityUploadEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;-><init>()V

    .line 49
    iput-boolean v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareForeignSource:Z

    .line 50
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 52
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->InitImageListSyncTask:Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;

    .line 53
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mContentResolver:Landroid/content/ContentResolver;

    .line 55
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    .line 56
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntentShare:Landroid/content/Intent;

    .line 57
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mBundle:Landroid/os/Bundle;

    .line 58
    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mService:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIsAdapterReady:Z

    .line 388
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public checkSupportService(Ljava/lang/String;)Z
    .locals 4
    .parameter "strService"

    .prologue
    const/4 v0, 0x0

    .line 111
    if-nez p1, :cond_0

    .line 126
    :goto_0
    return v0

    .line 113
    :cond_0
    const-string v1, "facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "flickr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Sina"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "SinaWeiBo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "RenRen"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 119
    :cond_1
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityUploadEditor][checkSupportService]: launch UploadEditor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    :cond_2
    sget-object v1, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivityUploadEditor][checkSupportService]: Not support "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public doCreateAdapter()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    const/16 v5, 0x64

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 164
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor][onImageListFinish]: +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntentShare:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntentShare:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntentShare:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 168
    :cond_0
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor][onCreate]: unintended upload editor entry..."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 230
    :cond_1
    :goto_0
    return v6

    .line 173
    :cond_2
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    const-string v1, "photoIds"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v7

    .line 175
    .local v7, nPhotoIds:[I
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    const-string v1, "singleShare"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 177
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor][onCreate]: 1."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v5}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;Landroid/net/Uri;I)V

    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->setMainViewContainerId(I)V

    .line 199
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->setControlBarViewContainerId(I)V

    .line 200
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->setControlBarViewContainerId(I)V

    .line 202
    new-instance v1, Lcom/htc/album/addons/UploadEditorTemplate;

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    iget-object v2, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-direct {v1, v0, v2}, Lcom/htc/album/addons/UploadEditorTemplate;-><init>(Lcom/htc/opensense2/album/AdapterBase;Lcom/htc/opensense2/album/DisplayManagerInterface;)V

    iput-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mFilmstripviewTemplate:Lcom/htc/album/addons/UploadEditorTemplate;

    .line 204
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mFilmstripviewTemplate:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->addTemplate(Lcom/htc/opensense2/album/ViewTemplateBase;)Z

    .line 207
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mBundle:Landroid/os/Bundle;

    const-string v1, "UPLOAD_EDITOR_MODE"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mBundle:Landroid/os/Bundle;

    const-string v1, "SHARE_INTENT"

    iget-object v2, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    const-string v3, "SHARE_INTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 209
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mBundle:Landroid/os/Bundle;

    const-string v1, "SHARE_INFO"

    iget-object v2, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    const-string v3, "SHARE_INFO"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 211
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mFilmstripviewTemplate:Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-virtual {v1}, Lcom/htc/album/addons/UploadEditorTemplate;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v6}, Lcom/htc/opensense2/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 217
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    const-string v1, "foreign_source"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    :goto_2
    iput-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareForeignSource:Z

    .line 218
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->enableBroadcastReceiver()V

    .line 220
    iput-boolean v8, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIsAdapterReady:Z

    .line 223
    iget-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareForeignSource:Z

    if-nez v0, :cond_3

    invoke-static {v6}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/AdapterBase;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor][onImageListFinish]: -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v8

    .line 230
    goto/16 :goto_0

    .line 180
    :cond_4
    if-eqz v7, :cond_5

    .line 182
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor][onCreate]: 2."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    iget-object v2, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILjava/lang/Object;IZLjava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    goto/16 :goto_1

    .line 194
    :cond_5
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor][onCreate]: 4."

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    iget-object v2, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;-><init>(Landroid/app/Activity;Landroid/os/Handler;ILjava/lang/Object;I)V

    iput-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    goto/16 :goto_1

    :cond_6
    move v0, v6

    .line 217
    goto :goto_2
.end method

.method public getServicePKGName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "strService"

    .prologue
    .line 131
    if-nez p1, :cond_0

    const-string v0, ""

    .line 158
    :goto_0
    return-object v0

    .line 133
    :cond_0
    const-string v0, "facebook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    const-string v0, "com.htc.socialnetwork.facebook"

    goto :goto_0

    .line 137
    :cond_1
    const-string v0, "flickr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string v0, "com.htc.socialnetwork.flickr"

    goto :goto_0

    .line 142
    :cond_2
    const-string v0, "Sina"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    .line 146
    :cond_3
    const-string v0, "SinaWeiBo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 148
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    goto :goto_0

    .line 150
    :cond_4
    const-string v0, "RenRen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    goto :goto_0

    .line 157
    :cond_5
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivityUploadEditor][getServicePKHName]: Shouldn\'t have this case ! Service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleActivityMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    const/16 v2, 0x30

    .line 236
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 246
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase;->handleActivityMessage(Landroid/os/Message;)Z

    move-result v0

    :goto_0
    return v0

    .line 239
    :sswitch_0
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/ActivityUploadEditor;->showDialog(I)V

    goto :goto_0

    .line 242
    :sswitch_1
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    invoke-virtual {p0, v2}, Lcom/htc/album/addons/ActivityUploadEditor;->removeDialog(I)V

    goto :goto_0

    .line 236
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 68
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/TemplateActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/ActivityUploadEditor;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    .line 72
    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    const-string v2, "SHARE_INTENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntentShare:Landroid/content/Intent;

    .line 73
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mBundle:Landroid/os/Bundle;

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, bNeedWaitImageList:Z
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mContentResolver:Landroid/content/ContentResolver;

    .line 79
    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    const-string v2, "Launch_Service"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mService:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mService:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mService:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/ActivityUploadEditor;->checkSupportService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    sget-object v1, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityUploadEditor]: service name error."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mService:Ljava/lang/String;

    .line 88
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 99
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->doCreateAdapter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    sget-object v1, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivityUploadEditor][onCreate]: doCreateAdapter NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 107
    :cond_1
    return-void

    .line 93
    :cond_2
    const/4 v0, 0x1

    .line 94
    new-instance v1, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;

    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p0}, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;-><init>(Lcom/htc/album/addons/ActivityUploadEditor;Landroid/os/Handler;Lcom/htc/album/addons/ActivityUploadEditor;)V

    iput-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->InitImageListSyncTask:Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;

    .line 95
    iget-object v1, p0, Lcom/htc/album/addons/ActivityUploadEditor;->InitImageListSyncTask:Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 255
    sget-object v2, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalFilmstripTemplate][onCreateDialog]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v0, 0x0

    .line 259
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, message:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 294
    :goto_0
    sget-object v2, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LocalFilmstripTemplate][onCreateDialog]: end"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-object v0

    .line 266
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 267
    const/4 v2, 0x1

    invoke-virtual {p0, p0, v2}, Lcom/htc/album/addons/ActivityUploadEditor;->setKeepScreenOn(Landroid/app/Activity;Z)V

    .line 269
    :sswitch_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-direct {v0, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 270
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 271
    new-instance v2, Lcom/htc/album/addons/ActivityUploadEditor$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/ActivityUploadEditor$1;-><init>(Lcom/htc/album/addons/ActivityUploadEditor;)V

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 286
    new-instance v2, Lcom/htc/album/addons/ActivityUploadEditor$2;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/ActivityUploadEditor$2;-><init>(Lcom/htc/album/addons/ActivityUploadEditor;)V

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x2724 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 327
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor]: onDestroy +"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->release()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/htc/opensense2/album/util/ImageManager$IImageList;->closeCursor()V

    .line 335
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor]: mShareImageList  closeCursor() !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_1
    iput-object v2, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareImageList:Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    .line 340
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 342
    sget-object v0, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 343
    sput-object v2, Lcom/htc/opensense2/album/AlbumCommon/Constants;->temp:Ljava/util/ArrayList;

    .line 346
    :cond_2
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onDestroy()V

    .line 348
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor]: onDestroy -"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public onMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 359
    const/4 v0, 0x1

    return v0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->InitImageListSyncTask:Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->InitImageListSyncTask:Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/ActivityUploadEditor$InitNonCursorImageList;->cancel(Z)Z

    .line 318
    :cond_0
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onPause()V

    .line 319
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Lcom/htc/opensense2/album/TemplateActivityBase;->onResume()V

    .line 303
    iget-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mIsAdapterReady:Z

    if-eqz v0, :cond_2

    .line 305
    iget-boolean v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mShareForeignSource:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/album/addons/ActivityUploadEditor;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/AdapterBase;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/ActivityUploadEditor;->finish()V

    .line 311
    :cond_2
    return-void
.end method

.method protected setKeepScreenOn(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "activity"
    .parameter "screenOn"

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 368
    sget-object v0, Lcom/htc/album/addons/ActivityUploadEditor;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivityUploadEditor][setKeepScreenOn]: Activity is null !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    :goto_0
    return-void

    .line 372
    :cond_0
    new-instance v0, Lcom/htc/album/addons/ActivityUploadEditor$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/htc/album/addons/ActivityUploadEditor$3;-><init>(Lcom/htc/album/addons/ActivityUploadEditor;ZLandroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

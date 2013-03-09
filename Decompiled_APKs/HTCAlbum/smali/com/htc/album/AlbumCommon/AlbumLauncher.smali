.class public Lcom/htc/album/AlbumCommon/AlbumLauncher;
.super Ljava/lang/Object;
.source "AlbumLauncher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/album/AlbumCommon/AlbumLauncher;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gotoAlbumList(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 159
    return-void
.end method

.method public static gotoCamera(Landroid/app/Activity;Z)V
    .locals 9
    .parameter "activity"
    .parameter "bVideoMode"

    .prologue
    .line 22
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "preview_mode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 23
    sget-object v6, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "go to Camera by close album(came from camera)"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "preview_mode"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 55
    :cond_0
    return-void

    .line 30
    :cond_1
    sget-object v6, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Launch Camera by start a new Activity"

    invoke-static {v6, v7}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v1, camera:Landroid/content/Intent;
    const/high16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 34
    if-eqz p1, :cond_4

    .line 35
    const-string v6, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :goto_0
    const-string v6, "RequestedFrom"

    const-string v7, "album"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 42
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 43
    .local v5, supportCameraApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 44
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 45
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 46
    .local v4, resoInfo:Landroid/content/pm/ResolveInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 47
    .local v0, appInfo:Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.htc.camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.android.camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 48
    :cond_2
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const/16 v6, 0x1390

    invoke-virtual {p0, v1, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 37
    .end local v0           #appInfo:Landroid/content/pm/ActivityInfo;
    .end local v2           #i:I
    .end local v3           #packageManager:Landroid/content/pm/PackageManager;
    .end local v4           #resoInfo:Landroid/content/pm/ResolveInfo;
    .end local v5           #supportCameraApList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    const-string v6, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static gotoCollections(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 101
    return-void
.end method

.method public static gotoSnapbooth(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "preview_mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "go to Camera by close album(came from camera)"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "preview_mode"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    sget-object v1, Lcom/htc/album/AlbumCommon/AlbumLauncher;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Launch Snapbooth by start a new Activity"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.snapbooth.action.LAUNCH_SNAPBOOTH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, snapbooth:Landroid/content/Intent;
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 72
    const-string v1, "RequestedFrom"

    const-string v2, "album"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const/16 v1, 0x139b

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static gotoVod(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 176
    return-void
.end method

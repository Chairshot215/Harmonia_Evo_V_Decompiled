.class public Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;
.super Landroid/app/Activity;
.source "PhotoAlbumWidgetActivity.java"


# static fields
.field public static final ACTION_PICK_FOLDER:Ljava/lang/String; = "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

.field public static final ACTION_PICK_ITEM:Ljava/lang/String; = "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field private static final SELECT_TYPE_ALBUM:I = 0x1e63

.field private static final WIDGET_ITEMTYPE:Ljava/lang/String; = "item_type"

.field private static final WIDGET_ITEMTYPE_DEFAULT:I = -0x1


# instance fields
.field private mItemType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startAlbumPhotoWidget()V
    .locals 3

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const/16 v1, 0x1e63

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 59
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, -0x1

    .line 65
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onActivityResult] Intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->mItemType:I

    if-eq v0, v3, :cond_0

    .line 68
    const-string v0, "item_type"

    iget v1, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->mItemType:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 71
    :cond_0
    const/16 v0, 0x1e63

    if-ne p1, v0, :cond_1

    if-eqz p3, :cond_1

    .line 72
    invoke-virtual {p0, v3, p3}, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->setResult(ILandroid/content/Intent;)V

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->finish()V

    .line 75
    sget-object v0, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onActivityResult] Intent ---"

    invoke-static {v0, v1}, Lcom/htc/photowidget3d/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-direct {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->startAlbumPhotoWidget()V

    .line 39
    invoke-virtual {p0}, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 40
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 43
    const-string v2, "item_type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/photowidget3d/album/PhotoAlbumWidgetActivity;->mItemType:I

    .line 47
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 93
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 81
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 85
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 89
    return-void
.end method

.class public Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;
.super Landroid/app/Activity;
.source "PhotoGridWidget3DActivity.java"


# static fields
.field public static final ACTION_PICK_FOLDER:Ljava/lang/String; = "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

.field public static final ACTION_PICK_ITEM:Ljava/lang/String; = "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

.field private static final SELECT_TYPE_ALBUM:I = 0x1e63

.field private static final WIDGET_ITEMTYPE:Ljava/lang/String; = "item_type"

.field private static final WIDGET_ITEMTYPE_DEFAULT:I = -0x1


# instance fields
.field private mItemType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private startAlbumPhotoWidget()V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.HTCAlbum.action.FOLDER_PICKER_FROM_COLLECTIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    const/16 v1, 0x1e63

    invoke-virtual {p0, v0, v1}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, -0x1

    .line 67
    if-eqz p3, :cond_0

    iget v0, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->mItemType:I

    if-eq v2, v0, :cond_0

    .line 69
    const-string v0, "item_type"

    iget v1, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->mItemType:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 72
    :cond_0
    const/16 v0, 0x1e63

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_1

    .line 74
    invoke-virtual {p0, v2, p3}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->setResult(ILandroid/content/Intent;)V

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->finish()V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->requestWindowFeature(I)Z

    .line 34
    invoke-direct {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->startAlbumPhotoWidget()V

    .line 37
    invoke-virtual {p0}, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 40
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 43
    const-string v2, "item_type"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/htc/photowidget3d/grid/PhotoGridWidget3DActivity;->mItemType:I

    .line 47
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 93
    return-void
.end method

.class public Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;
.super Lcom/htc/album/AlbumMain/ActivityMainDropList;
.source "ActivityMainExtLauncher.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ActivityMainExtLauncher"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/htc/album/AlbumMain/ActivityMainDropList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstance"

    .prologue
    const/16 v3, 0x400

    .line 19
    const-string v1, "ActivityMainExtLauncher"

    const-string v2, "[HTCAlbum][ActivityMainDropList][onCreate]1: "

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, szAction:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.htc.album.action.VIEW_PHOTO_FROM_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->requestWindowFeature(I)Z

    .line 24
    invoke-virtual {p0}, Lcom/htc/album/AlbumMain/ActivityMainExtLauncher;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 26
    :cond_0
    invoke-super {p0, p1}, Lcom/htc/album/AlbumMain/ActivityMainDropList;->onCreate(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method

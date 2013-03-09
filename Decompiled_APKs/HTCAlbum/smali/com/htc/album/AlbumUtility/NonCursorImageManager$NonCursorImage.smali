.class public Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;
.super Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
.source "NonCursorImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumUtility/NonCursorImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NonCursorImage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumUtility/NonCursorImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorImage;->this$0:Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    invoke-direct {p0, p1}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;-><init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V

    .line 42
    return-void
.end method


# virtual methods
.method public isVideo()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;
.super Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;
.source "NonCursorImageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/AlbumUtility/NonCursorImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NonCursorVideo"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/album/AlbumUtility/NonCursorImageManager;


# direct methods
.method public constructor <init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorVideo;->this$0:Lcom/htc/album/AlbumUtility/NonCursorImageManager;

    invoke-direct {p0, p1}, Lcom/htc/album/AlbumUtility/NonCursorImageManager$NonCursorBaseImage;-><init>(Lcom/htc/album/AlbumUtility/NonCursorImageManager;)V

    .line 53
    return-void
.end method


# virtual methods
.method public isVideo()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

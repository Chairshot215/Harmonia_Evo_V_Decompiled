.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;
.super Ljava/lang/Object;
.source "MusicWidget3D_4x4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAlbumListItem"
.end annotation


# instance fields
.field mAttachAlbumId:I

.field mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;


# direct methods
.method constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V
    .locals 1
    .parameter

    .prologue
    .line 664
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 665
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mListItem:Lcom/htc/fusion/fx/controls/FxListItem;

    .line 666
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumListItem;->mAttachAlbumId:I

    return-void
.end method

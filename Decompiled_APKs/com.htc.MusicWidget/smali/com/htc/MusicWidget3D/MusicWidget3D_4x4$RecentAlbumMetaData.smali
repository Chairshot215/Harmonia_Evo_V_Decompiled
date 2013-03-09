.class Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;
.super Ljava/lang/Object;
.source "MusicWidget3D_4x4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecentAlbumMetaData"
.end annotation


# instance fields
.field public mAlbumArt:Landroid/graphics/drawable/Drawable;

.field public mAlbumName:Ljava/lang/String;

.field public mAlbumPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;


# direct methods
.method private constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V
    .locals 0
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;->this$0:Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 827
    invoke-direct {p0, p1}, Lcom/htc/MusicWidget3D/MusicWidget3D_4x4$RecentAlbumMetaData;-><init>(Lcom/htc/MusicWidget3D/MusicWidget3D_4x4;)V

    return-void
.end method

.class public Lcom/htc/music/MiniPlayer$MiniPlayerCreator;
.super Ljava/lang/Object;
.source "MiniPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MiniPlayerCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;
    .locals 1

    new-instance v0, Lcom/htc/music/MiniPlayer;

    invoke-direct {v0, p0}, Lcom/htc/music/MiniPlayer;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

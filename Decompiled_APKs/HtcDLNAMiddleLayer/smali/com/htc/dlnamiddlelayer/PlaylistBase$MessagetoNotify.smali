.class public Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;
.super Ljava/lang/Object;
.source "PlaylistBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dlnamiddlelayer/PlaylistBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MessagetoNotify"
.end annotation


# instance fields
.field msgCode:I

.field resID:I

.field final synthetic this$0:Lcom/htc/dlnamiddlelayer/PlaylistBase;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/PlaylistBase;II)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "code"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;->this$0:Lcom/htc/dlnamiddlelayer/PlaylistBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;->resID:I

    .line 49
    iput p3, p0, Lcom/htc/dlnamiddlelayer/PlaylistBase$MessagetoNotify;->msgCode:I

    .line 50
    return-void
.end method

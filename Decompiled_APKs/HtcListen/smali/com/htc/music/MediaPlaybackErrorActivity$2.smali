.class Lcom/htc/music/MediaPlaybackErrorActivity$2;
.super Ljava/lang/Object;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/MediaPlaybackErrorActivity;->initTitleBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MediaPlaybackErrorActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/MediaPlaybackErrorActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$2;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$2;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct {v0, v1}, Landroid/media/AudioManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    return-void
.end method

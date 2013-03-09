.class Lcom/htc/music/MediaPlaybackErrorActivity$1;
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

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$1;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$1;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #calls: Lcom/htc/music/MediaPlaybackErrorActivity;->startBrowserTabActivity()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$000(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$1;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-virtual {v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->finish()V

    return-void
.end method

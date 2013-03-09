.class Lcom/htc/music/MediaPlaybackErrorActivity$5;
.super Ljava/lang/Object;
.source "MediaPlaybackErrorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MediaPlaybackErrorActivity;
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

    iput-object p1, p0, Lcom/htc/music/MediaPlaybackErrorActivity$5;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MediaPlaybackErrorActivity$5;->this$0:Lcom/htc/music/MediaPlaybackErrorActivity;

    #calls: Lcom/htc/music/MediaPlaybackErrorActivity;->setDefaultResource()V
    invoke-static {v0}, Lcom/htc/music/MediaPlaybackErrorActivity;->access$200(Lcom/htc/music/MediaPlaybackErrorActivity;)V

    return-void
.end method

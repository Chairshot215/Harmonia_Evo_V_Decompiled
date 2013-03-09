.class Lcom/htc/music/MiniPlayer$5;
.super Ljava/lang/Object;
.source "MiniPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/MiniPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/MiniPlayer;


# direct methods
.method constructor <init>(Lcom/htc/music/MiniPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/MiniPlayer$5;->this$0:Lcom/htc/music/MiniPlayer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/MiniPlayer$5;->this$0:Lcom/htc/music/MiniPlayer;

    #calls: Lcom/htc/music/MiniPlayer;->doPauseResume()V
    invoke-static {v0}, Lcom/htc/music/MiniPlayer;->access$500(Lcom/htc/music/MiniPlayer;)V

    return-void
.end method

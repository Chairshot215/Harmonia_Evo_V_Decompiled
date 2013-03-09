.class Lcom/htc/dockmode/music/MusicView$5;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/dockmode/music/MusicView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dockmode/music/MusicView;


# direct methods
.method constructor <init>(Lcom/htc/dockmode/music/MusicView;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicView$5;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 464
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView$5;->this$0:Lcom/htc/dockmode/music/MusicView;

    #calls: Lcom/htc/dockmode/music/MusicView;->launchMusic()V
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicView;->access$500(Lcom/htc/dockmode/music/MusicView;)V

    .line 465
    return-void
.end method

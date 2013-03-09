.class Lcom/htc/dockmode/music/MusicView$6;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dockmode/music/MusicView;->handleNoMusic(Ljava/lang/String;)V
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
    .line 604
    iput-object p1, p0, Lcom/htc/dockmode/music/MusicView$6;->this$0:Lcom/htc/dockmode/music/MusicView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 606
    iget-object v0, p0, Lcom/htc/dockmode/music/MusicView$6;->this$0:Lcom/htc/dockmode/music/MusicView;

    #calls: Lcom/htc/dockmode/music/MusicView;->launchMusic()V
    invoke-static {v0}, Lcom/htc/dockmode/music/MusicView;->access$500(Lcom/htc/dockmode/music/MusicView;)V

    .line 607
    return-void
.end method

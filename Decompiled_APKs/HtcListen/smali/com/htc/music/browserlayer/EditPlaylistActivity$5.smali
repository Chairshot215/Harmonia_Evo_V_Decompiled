.class Lcom/htc/music/browserlayer/EditPlaylistActivity$5;
.super Ljava/lang/Object;
.source "EditPlaylistActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/browserlayer/EditPlaylistActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$5;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/browserlayer/EditPlaylistActivity$5;->this$0:Lcom/htc/music/browserlayer/EditPlaylistActivity;

    #calls: Lcom/htc/music/browserlayer/EditPlaylistActivity;->goToPicker()V
    invoke-static {v0}, Lcom/htc/music/browserlayer/EditPlaylistActivity;->access$1000(Lcom/htc/music/browserlayer/EditPlaylistActivity;)V

    return-void
.end method

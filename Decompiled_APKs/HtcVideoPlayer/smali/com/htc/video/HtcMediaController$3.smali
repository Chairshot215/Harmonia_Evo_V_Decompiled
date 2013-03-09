.class Lcom/htc/video/HtcMediaController$3;
.super Ljava/lang/Object;
.source "HtcMediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/HtcMediaController;->initControllerView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcMediaController;

.field final synthetic val$audio:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Lcom/htc/video/HtcMediaController;Landroid/media/AudioManager;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$3;->this$0:Lcom/htc/video/HtcMediaController;

    iput-object p2, p0, Lcom/htc/video/HtcMediaController$3;->val$audio:Landroid/media/AudioManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$3;->val$audio:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 275
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$3;->this$0:Lcom/htc/video/HtcMediaController;

    #calls: Lcom/htc/video/HtcMediaController;->resetTimeout()V
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$000(Lcom/htc/video/HtcMediaController;)V

    .line 276
    return-void
.end method

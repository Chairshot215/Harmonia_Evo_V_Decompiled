.class Lcom/htc/video/HtcMediaController$5;
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


# direct methods
.method constructor <init>(Lcom/htc/video/HtcMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 498
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$5;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$5;->this$0:Lcom/htc/video/HtcMediaController;

    iget-object v0, v0, Lcom/htc/video/HtcMediaController;->mEventListener:Lcom/htc/video/HtcMediaController$ControllerEventListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/htc/video/HtcMediaController$ControllerEventListener;->showPopupMenu(Z)V

    .line 504
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$5;->this$0:Lcom/htc/video/HtcMediaController;

    #calls: Lcom/htc/video/HtcMediaController;->resetTimeout()V
    invoke-static {v0}, Lcom/htc/video/HtcMediaController;->access$000(Lcom/htc/video/HtcMediaController;)V

    .line 505
    return-void
.end method

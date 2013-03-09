.class Lcom/htc/video/HtcMediaController$1;
.super Ljava/lang/Object;
.source "HtcMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/video/HtcMediaController;
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
    .line 186
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$1;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 188
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$1;->this$0:Lcom/htc/video/HtcMediaController;

    iget-boolean v0, v0, Lcom/htc/video/HtcMediaController;->mShowing:Z

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$1;->this$0:Lcom/htc/video/HtcMediaController;

    invoke-virtual {v0}, Lcom/htc/video/HtcMediaController;->hide()V

    .line 193
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

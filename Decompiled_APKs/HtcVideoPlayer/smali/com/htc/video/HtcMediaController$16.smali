.class Lcom/htc/video/HtcMediaController$16;
.super Ljava/lang/Object;
.source "HtcMediaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/video/HtcMediaController;->showOnUiThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/video/HtcMediaController;

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/htc/video/HtcMediaController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1816
    iput-object p1, p0, Lcom/htc/video/HtcMediaController$16;->this$0:Lcom/htc/video/HtcMediaController;

    iput p2, p0, Lcom/htc/video/HtcMediaController$16;->val$timeout:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1818
    iget-object v0, p0, Lcom/htc/video/HtcMediaController$16;->this$0:Lcom/htc/video/HtcMediaController;

    iget v1, p0, Lcom/htc/video/HtcMediaController$16;->val$timeout:I

    invoke-virtual {v0, v1}, Lcom/htc/video/HtcMediaController;->show(I)V

    .line 1819
    return-void
.end method

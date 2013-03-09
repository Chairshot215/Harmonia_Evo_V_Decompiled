.class Lcom/htc/fm/FMRadio$15;
.super Ljava/lang/Object;
.source "FMRadio.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRadio;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRadio;)V
    .locals 0
    .parameter

    .prologue
    .line 2429
    iput-object p1, p0, Lcom/htc/fm/FMRadio$15;->this$0:Lcom/htc/fm/FMRadio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0x1b

    .line 2431
    iget-object v0, p0, Lcom/htc/fm/FMRadio$15;->this$0:Lcom/htc/fm/FMRadio;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fm/FMRadio;->mFromManul:Z
    invoke-static {v0, v1}, Lcom/htc/fm/FMRadio;->access$1702(Lcom/htc/fm/FMRadio;Z)Z

    .line 2432
    iget-object v0, p0, Lcom/htc/fm/FMRadio$15;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2433
    iget-object v0, p0, Lcom/htc/fm/FMRadio$15;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2434
    iget-object v0, p0, Lcom/htc/fm/FMRadio$15;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2435
    iget-object v0, p0, Lcom/htc/fm/FMRadio$15;->this$0:Lcom/htc/fm/FMRadio;

    iget-object v0, v0, Lcom/htc/fm/FMRadio;->mActionHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2437
    :cond_0
    return-void
.end method

.class Lcom/htc/fm/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/htc/fm/RepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/htc/fm/RepeatingImageButton$1;->this$0:Lcom/htc/fm/RepeatingImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/fm/RepeatingImageButton$1;->this$0:Lcom/htc/fm/RepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/htc/fm/RepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/RepeatingImageButton;->access$000(Lcom/htc/fm/RepeatingImageButton;Z)V

    .line 106
    iget-object v0, p0, Lcom/htc/fm/RepeatingImageButton$1;->this$0:Lcom/htc/fm/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/htc/fm/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/htc/fm/RepeatingImageButton$1;->this$0:Lcom/htc/fm/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/fm/RepeatingImageButton$1;->this$0:Lcom/htc/fm/RepeatingImageButton;

    #getter for: Lcom/htc/fm/RepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/htc/fm/RepeatingImageButton;->access$100(Lcom/htc/fm/RepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/fm/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 109
    :cond_0
    return-void
.end method

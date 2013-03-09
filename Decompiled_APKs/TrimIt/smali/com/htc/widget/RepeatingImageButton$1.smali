.class Lcom/htc/widget/RepeatingImageButton$1;
.super Ljava/lang/Object;
.source "RepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/RepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/RepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/htc/widget/RepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/htc/widget/RepeatingImageButton$1;->this$0:Lcom/htc/widget/RepeatingImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/htc/widget/RepeatingImageButton$1;->this$0:Lcom/htc/widget/RepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/htc/widget/RepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/htc/widget/RepeatingImageButton;->access$000(Lcom/htc/widget/RepeatingImageButton;Z)V

    .line 105
    iget-object v0, p0, Lcom/htc/widget/RepeatingImageButton$1;->this$0:Lcom/htc/widget/RepeatingImageButton;

    invoke-virtual {v0}, Lcom/htc/widget/RepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/htc/widget/RepeatingImageButton$1;->this$0:Lcom/htc/widget/RepeatingImageButton;

    iget-object v1, p0, Lcom/htc/widget/RepeatingImageButton$1;->this$0:Lcom/htc/widget/RepeatingImageButton;

    #getter for: Lcom/htc/widget/RepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/htc/widget/RepeatingImageButton;->access$100(Lcom/htc/widget/RepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/widget/RepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 108
    :cond_0
    return-void
.end method

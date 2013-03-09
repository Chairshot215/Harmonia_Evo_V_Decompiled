.class Lcom/htc/fm/FMRepeatingImageButton$1;
.super Ljava/lang/Object;
.source "FMRepeatingImageButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fm/FMRepeatingImageButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fm/FMRepeatingImageButton;


# direct methods
.method constructor <init>(Lcom/htc/fm/FMRepeatingImageButton;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/htc/fm/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/FMRepeatingImageButton;

    const/4 v1, 0x0

    #calls: Lcom/htc/fm/FMRepeatingImageButton;->doRepeat(Z)V
    invoke-static {v0, v1}, Lcom/htc/fm/FMRepeatingImageButton;->access$000(Lcom/htc/fm/FMRepeatingImageButton;Z)V

    .line 100
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/FMRepeatingImageButton;

    invoke-virtual {v0}, Lcom/htc/fm/FMRepeatingImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/htc/fm/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/FMRepeatingImageButton;

    iget-object v1, p0, Lcom/htc/fm/FMRepeatingImageButton$1;->this$0:Lcom/htc/fm/FMRepeatingImageButton;

    #getter for: Lcom/htc/fm/FMRepeatingImageButton;->mInterval:J
    invoke-static {v1}, Lcom/htc/fm/FMRepeatingImageButton;->access$100(Lcom/htc/fm/FMRepeatingImageButton;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/htc/fm/FMRepeatingImageButton;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    :cond_0
    return-void
.end method

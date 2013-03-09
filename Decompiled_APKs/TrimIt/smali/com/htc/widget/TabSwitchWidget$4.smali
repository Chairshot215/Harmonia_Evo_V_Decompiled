.class Lcom/htc/widget/TabSwitchWidget$4;
.super Ljava/lang/Object;
.source "TabSwitchWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/TabSwitchWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/TabSwitchWidget;


# direct methods
.method constructor <init>(Lcom/htc/widget/TabSwitchWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    iput-object p1, p0, Lcom/htc/widget/TabSwitchWidget$4;->this$0:Lcom/htc/widget/TabSwitchWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1791
    iget-object v0, p0, Lcom/htc/widget/TabSwitchWidget$4;->this$0:Lcom/htc/widget/TabSwitchWidget;

    iget-object v0, v0, Lcom/htc/widget/TabSwitchWidget;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/widget/TabSwitchWidget$4;->this$0:Lcom/htc/widget/TabSwitchWidget;

    iget-object v1, v1, Lcom/htc/widget/TabSwitchWidget;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1792
    return-void
.end method

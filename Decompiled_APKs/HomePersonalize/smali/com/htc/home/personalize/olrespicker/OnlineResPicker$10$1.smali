.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10$1;
.super Ljava/lang/Object;
.source "OnlineResPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10$1;->this$1:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10$1;->this$1:Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;

    iget-object v0, v0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$10;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    const v1, 0x7f09003c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1122
    return-void
.end method

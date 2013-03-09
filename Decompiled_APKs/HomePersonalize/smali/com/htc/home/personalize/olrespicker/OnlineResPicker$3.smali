.class Lcom/htc/home/personalize/olrespicker/OnlineResPicker$3;
.super Ljava/lang/Object;
.source "OnlineResPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/olrespicker/OnlineResPicker;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/olrespicker/OnlineResPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 489
    iput-object p1, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$3;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/htc/home/personalize/olrespicker/OnlineResPicker$3;->this$0:Lcom/htc/home/personalize/olrespicker/OnlineResPicker;

    const v1, 0x7f090022

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    return-void
.end method

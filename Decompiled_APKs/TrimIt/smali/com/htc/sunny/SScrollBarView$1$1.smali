.class Lcom/htc/sunny/SScrollBarView$1$1;
.super Ljava/lang/Object;
.source "SScrollBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SScrollBarView$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/sunny/SScrollBarView$1;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SScrollBarView$1;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/htc/sunny/SScrollBarView$1$1;->this$1:Lcom/htc/sunny/SScrollBarView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/htc/sunny/SScrollBarView$1$1;->this$1:Lcom/htc/sunny/SScrollBarView$1;

    iget-object v0, v0, Lcom/htc/sunny/SScrollBarView$1;->this$0:Lcom/htc/sunny/SScrollBarView;

    invoke-virtual {v0}, Lcom/htc/sunny/SScrollBarView;->hideScrollBar()V

    .line 86
    return-void
.end method

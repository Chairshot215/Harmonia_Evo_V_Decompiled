.class Lcom/htc/sunny/SGallery$11;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/htc/sunny/SGallery$11;->this$0:Lcom/htc/sunny/SGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/htc/sunny/SGallery$11;->this$0:Lcom/htc/sunny/SGallery;

    invoke-virtual {v0}, Lcom/htc/sunny/SGallery;->notifyDataSetChangedW()V

    .line 787
    return-void
.end method

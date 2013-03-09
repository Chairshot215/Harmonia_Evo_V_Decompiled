.class Lcom/htc/sunny/SGallery$12;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->notifyUpdateItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$nPos:I


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/htc/sunny/SGallery$12;->this$0:Lcom/htc/sunny/SGallery;

    iput p2, p0, Lcom/htc/sunny/SGallery$12;->val$nPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/htc/sunny/SGallery$12;->this$0:Lcom/htc/sunny/SGallery;

    iget v1, p0, Lcom/htc/sunny/SGallery$12;->val$nPos:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGallery;->notifyUpdateItemW(I)V

    .line 818
    return-void
.end method

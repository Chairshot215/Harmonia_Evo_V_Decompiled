.class Lcom/htc/sunny/SGallery$10;
.super Ljava/lang/Object;
.source "SGallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SGallery;->setAdapter(Lcom/htc/sunny/SGalleryAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SGallery;

.field final synthetic val$adapter:Lcom/htc/sunny/SGalleryAdapter;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SGallery;Lcom/htc/sunny/SGalleryAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 755
    iput-object p1, p0, Lcom/htc/sunny/SGallery$10;->this$0:Lcom/htc/sunny/SGallery;

    iput-object p2, p0, Lcom/htc/sunny/SGallery$10;->val$adapter:Lcom/htc/sunny/SGalleryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/htc/sunny/SGallery$10;->this$0:Lcom/htc/sunny/SGallery;

    iget-object v1, p0, Lcom/htc/sunny/SGallery$10;->val$adapter:Lcom/htc/sunny/SGalleryAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SGallery;->setAdapterW(Lcom/htc/sunny/SGalleryAdapter;)V

    .line 758
    return-void
.end method

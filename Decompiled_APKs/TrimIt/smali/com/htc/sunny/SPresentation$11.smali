.class Lcom/htc/sunny/SPresentation$11;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->scrollToLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;)V
    .locals 0
    .parameter

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$11;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$11;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny/SPresentation;->scrollToLeftW()V

    .line 1325
    return-void
.end method

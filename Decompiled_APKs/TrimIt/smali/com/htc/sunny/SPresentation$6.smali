.class Lcom/htc/sunny/SPresentation$6;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny/SPresentation;->setAdapter(Lcom/htc/sunny/SPresentationAdapterBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny/SPresentation;

.field final synthetic val$adapter:Lcom/htc/sunny/SPresentationAdapterBase;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;Lcom/htc/sunny/SPresentationAdapterBase;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 799
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$6;->this$0:Lcom/htc/sunny/SPresentation;

    iput-object p2, p0, Lcom/htc/sunny/SPresentation$6;->val$adapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/htc/sunny/SPresentation$6;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v1, p0, Lcom/htc/sunny/SPresentation$6;->val$adapter:Lcom/htc/sunny/SPresentationAdapterBase;

    invoke-virtual {v0, v1}, Lcom/htc/sunny/SPresentation;->setAdapterW(Lcom/htc/sunny/SPresentationAdapterBase;)V

    .line 802
    return-void
.end method

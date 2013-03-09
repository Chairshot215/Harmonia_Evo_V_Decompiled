.class Lcom/htc/widget/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/widget/Gallery;


# direct methods
.method constructor <init>(Lcom/htc/widget/Gallery;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/widget/Gallery$1;->this$0:Lcom/htc/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/htc/widget/Gallery$1;->this$0:Lcom/htc/widget/Gallery;

    const/4 v1, 0x0

    #setter for: Lcom/htc/widget/Gallery;->mSuppressSelectionChanged:Z
    invoke-static {v0, v1}, Lcom/htc/widget/Gallery;->access$002(Lcom/htc/widget/Gallery;Z)Z

    .line 113
    iget-object v0, p0, Lcom/htc/widget/Gallery$1;->this$0:Lcom/htc/widget/Gallery;

    invoke-virtual {v0}, Lcom/htc/widget/Gallery;->selectionChanged()V

    .line 114
    return-void
.end method

.class Lcom/htc/sunny2/widget/presentation/SPresentation$6;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyUpdateItem(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

.field final synthetic val$nPos:I


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;I)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$6;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iput p2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$6;->val$nPos:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$6;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$6;->val$nPos:I

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/widget/presentation/SPresentation;->notifyUpdateItemW(I)V

    return-void
.end method

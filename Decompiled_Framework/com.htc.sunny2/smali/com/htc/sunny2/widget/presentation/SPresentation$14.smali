.class Lcom/htc/sunny2/widget/presentation/SPresentation$14;
.super Ljava/lang/Object;
.source "SPresentation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;->updateAllContainersLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentation;->mAdapter:Lcom/htc/sunny2/widget/presentation/SPresentationAdapterBase;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v0, v4, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v6, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayoutPos:I

    invoke-virtual {v5, v6}, Lcom/htc/sunny2/widget/presentation/SPresentation;->getContainerLayout(I)Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;->setLayout(Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;)V

    iget-object v5, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$14;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v6, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mLayout:Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;

    iget-boolean v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mForceHidden:Z

    if-nez v4, :cond_3

    iget-boolean v4, v1, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->mSkipItem:Z

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v5, v1, v6, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation;->updateContainerLayout(Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;Lcom/htc/sunny2/widget/presentation/SPresentationContainerLayout;Z)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2
.end method

.class Lcom/htc/widget/FastScroller$CheckForLongPress;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalSelectedTab:I

.field final synthetic this$0:Lcom/htc/widget/FastScroller;


# direct methods
.method constructor <init>(Lcom/htc/widget/FastScroller;)V
    .locals 0
    .parameter

    .prologue
    .line 817
    iput-object p1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public rememberSelectedTab()V
    .locals 4

    .prologue
    .line 832
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 833
    .local v0, pos:I
    iput v0, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->mOriginalSelectedTab:I

    .line 834
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 822
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbLeft:I
    invoke-static {v2}, Lcom/htc/widget/FastScroller;->access$500(Lcom/htc/widget/FastScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mThumbW:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$600(Lcom/htc/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGalleryHeight:I
    invoke-static {v3}, Lcom/htc/widget/FastScroller;->access$700(Lcom/htc/widget/FastScroller;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/AbsSpinner;->pointToPosition(II)I

    move-result v0

    .line 823
    .local v0, pos:I
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    #getter for: Lcom/htc/widget/FastScroller;->mGallery:Lcom/htc/widget/AbsSpinner;
    invoke-static {v1}, Lcom/htc/widget/FastScroller;->access$400(Lcom/htc/widget/FastScroller;)Lcom/htc/widget/AbsSpinner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/AbsSpinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->mOriginalSelectedTab:I

    if-ne v1, v0, :cond_0

    .line 825
    iget-object v1, p0, Lcom/htc/widget/FastScroller$CheckForLongPress;->this$0:Lcom/htc/widget/FastScroller;

    invoke-virtual {v1}, Lcom/htc/widget/FastScroller;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 829
    :cond_0
    return-void
.end method

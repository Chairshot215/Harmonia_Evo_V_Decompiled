.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V
    .locals 0
    .parameter

    .prologue
    .line 1189
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "nPos"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v2, 0x1

    .line 1191
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->isLoadingItem(I)Z
    invoke-static {v0, p3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$2900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)Z

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #setter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v0, p3}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$602(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)I

    .line 1194
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->setSelectedSkinId(I)V

    .line 1195
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->notifyDataSetChanged()V

    .line 1199
    :goto_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateButton()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 1200
    return-void

    .line 1197
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mDeckControl:Lcom/htc/widget/DeckControl;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$3000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/widget/DeckControl;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$11;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/DeckControl;->setSelection(IZ)V

    goto :goto_0
.end method

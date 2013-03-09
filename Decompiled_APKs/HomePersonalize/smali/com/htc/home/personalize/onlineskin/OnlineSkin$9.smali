.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/home/personalize/onlineskin/OnlineSkin;
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
    .line 543
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(I)V
    .locals 3
    .parameter "nPos"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mbIsControlsEnable:Z
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1400(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 553
    const-string v0, "SkinPicker.OnlineSkin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the selected position is larger than the count of decorflow ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 557
    :cond_2
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #setter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$602(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)I

    .line 558
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->setSelectedSkinId(I)V

    .line 560
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateFocusInfo(I)V
    invoke-static {v0, p1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1500(Lcom/htc/home/personalize/onlineskin/OnlineSkin;I)V

    .line 563
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mOnlineAdapter:Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$900(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkinAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    invoke-static {}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->hasNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->showDownloadingCursor()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 566
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$9;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->retrieveSkinList()V

    goto :goto_0
.end method

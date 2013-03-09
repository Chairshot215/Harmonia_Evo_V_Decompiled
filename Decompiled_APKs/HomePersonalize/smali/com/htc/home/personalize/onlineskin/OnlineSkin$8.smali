.class Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;
.super Ljava/lang/Object;
.source "OnlineSkin.java"

# interfaces
.implements Lcom/htc/widget/DeckControl$OnItemClickListener;


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
    .line 513
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3
    .parameter "nPos"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinStatus:I
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$300(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 539
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 521
    :pswitch_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->startLoginWizardIfNeed()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$400(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    .line 522
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->hasCSLoggedIn()Z
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$500(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    invoke-static {v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v2}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->getSkinOnIndex(I)Lcom/htc/home/personalize/storedatamanager/StoreItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->IsAvailablePhoneKbSpace(Lcom/htc/home/personalize/storedatamanager/StoreItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSkinRetriever:Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$700(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #getter for: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->mSelectedSkinId:I
    invoke-static {v1}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$600(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/home/personalize/onlineskinmanager/OnlineSkinRetriever;->DownloadSkinOnIndex(I)V

    .line 527
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->UpdateButton()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1000(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    goto :goto_0

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->ShowStorageFullMsg()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1100(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    goto :goto_0

    .line 533
    :pswitch_2
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskin/OnlineSkin$8;->this$0:Lcom/htc/home/personalize/onlineskin/OnlineSkin;

    #calls: Lcom/htc/home/personalize/onlineskin/OnlineSkin;->CloseOnlinSkin()V
    invoke-static {v0}, Lcom/htc/home/personalize/onlineskin/OnlineSkin;->access$1200(Lcom/htc/home/personalize/onlineskin/OnlineSkin;)V

    goto :goto_0

    .line 536
    :pswitch_3
    const-string v0, "SkinPicker.OnlineSkin"

    const-string v1, "incorrect button status"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

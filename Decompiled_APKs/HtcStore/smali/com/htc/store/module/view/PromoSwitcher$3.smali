.class Lcom/htc/store/module/view/PromoSwitcher$3;
.super Landroid/os/Handler;
.source "PromoSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/store/module/view/PromoSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/store/module/view/PromoSwitcher;


# direct methods
.method constructor <init>(Lcom/htc/store/module/view/PromoSwitcher;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    iput-object p1, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 538
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 540
    :pswitch_0
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/store/module/view/PromoSwitcher;->access$200(Lcom/htc/store/module/view/PromoSwitcher;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/store/module/view/PromoSwitcher;->access$200(Lcom/htc/store/module/view/PromoSwitcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0, v2}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(Z)V

    goto :goto_0

    .line 546
    :pswitch_1
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    const/4 v1, -0x1

    #setter for: Lcom/htc/store/module/view/PromoSwitcher;->mIndexOfPromoItems:I
    invoke-static {v0, v1}, Lcom/htc/store/module/view/PromoSwitcher;->access$502(Lcom/htc/store/module/view/PromoSwitcher;I)I

    .line 547
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoItems:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/store/module/view/PromoSwitcher;->access$200(Lcom/htc/store/module/view/PromoSwitcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 548
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #getter for: Lcom/htc/store/module/view/PromoSwitcher;->mPromoItemOnlineIds:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/store/module/view/PromoSwitcher;->access$600(Lcom/htc/store/module/view/PromoSwitcher;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 549
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0}, Lcom/htc/store/module/view/PromoSwitcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 550
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #calls: Lcom/htc/store/module/view/PromoSwitcher;->getNextPromo()Lcom/htc/store/module/view/Promo;
    invoke-static {v0}, Lcom/htc/store/module/view/PromoSwitcher;->access$700(Lcom/htc/store/module/view/PromoSwitcher;)Lcom/htc/store/module/view/Promo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/store/module/view/Promo;->setPromoImage(Landroid/graphics/drawable/Drawable;)V

    .line 551
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    invoke-virtual {v0, v2, v2}, Lcom/htc/store/module/view/PromoSwitcher;->moveNext(ZZ)V

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #setter for: Lcom/htc/store/module/view/PromoSwitcher;->mHasPrevious:Z
    invoke-static {v0, v3}, Lcom/htc/store/module/view/PromoSwitcher;->access$802(Lcom/htc/store/module/view/PromoSwitcher;Z)Z

    .line 554
    iget-object v0, p0, Lcom/htc/store/module/view/PromoSwitcher$3;->this$0:Lcom/htc/store/module/view/PromoSwitcher;

    #setter for: Lcom/htc/store/module/view/PromoSwitcher;->mHasNext:Z
    invoke-static {v0, v3}, Lcom/htc/store/module/view/PromoSwitcher;->access$902(Lcom/htc/store/module/view/PromoSwitcher;Z)Z

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0xc7b0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

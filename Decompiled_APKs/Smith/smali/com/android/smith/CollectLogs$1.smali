.class Lcom/android/smith/CollectLogs$1;
.super Ljava/lang/Object;
.source "CollectLogs.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/CollectLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/CollectLogs;


# direct methods
.method constructor <init>(Lcom/android/smith/CollectLogs;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 6
    .parameter "tab"

    .prologue
    const v5, -0x3f4000

    const/4 v4, -0x1

    const/high16 v3, -0x100

    .line 454
    const-string v0, "SM:CollectLogs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnTabChangeListener: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v2}, Lcom/android/smith/CollectLogs;->access$000(Lcom/android/smith/CollectLogs;)Landroid/widget/TabHost;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v0, "Internal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 460
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 462
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 463
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 464
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 465
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-string v0, "Phone/Tablet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 469
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 470
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 471
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 473
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 474
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 475
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 476
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 478
    :cond_2
    const-string v0, "External"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 480
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 481
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 482
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 483
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 484
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 485
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 486
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 487
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 489
    :cond_3
    const-string v0, "FTP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 492
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabInternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 493
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 494
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabPhone:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$200(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 495
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 496
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabExternal:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 497
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 498
    iget-object v0, p0, Lcom/android/smith/CollectLogs$1;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTabFtp:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/smith/CollectLogs;->access$400(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method

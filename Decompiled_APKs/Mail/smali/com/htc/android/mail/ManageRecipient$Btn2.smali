.class Lcom/htc/android/mail/ManageRecipient$Btn2;
.super Ljava/lang/Object;
.source "ManageRecipient.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ManageRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Btn2"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ManageRecipient;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ManageRecipient;)V
    .locals 0
    .parameter

    .prologue
    .line 539
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 539
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ManageRecipient$Btn2;-><init>(Lcom/htc/android/mail/ManageRecipient;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const v5, 0x7f0b0001

    const/high16 v4, 0x7f0b

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 543
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 624
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->updateCmdBar()V
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1400(Lcom/htc/android/mail/ManageRecipient;)V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 551
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #setter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0, v3}, Lcom/htc/android/mail/ManageRecipient;->access$702(Lcom/htc/android/mail/ManageRecipient;I)I

    .line 552
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 553
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 554
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 555
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v1}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setLeftText(Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 558
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v2}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v2}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 568
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 570
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 571
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 572
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 573
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 575
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 576
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v2}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v2}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 586
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 588
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v3, v2}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 589
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 590
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 591
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 593
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 594
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v2}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 599
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v2}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 604
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v2, v3}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 607
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 608
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 609
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 611
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_9

    .line 612
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v2}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 617
    :cond_9
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn2;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v2}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setRightText(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

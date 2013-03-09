.class Lcom/htc/android/mail/ManageRecipient$Btn3;
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
    name = "Btn3"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ManageRecipient;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ManageRecipient;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 630
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ManageRecipient$Btn3;-><init>(Lcom/htc/android/mail/ManageRecipient;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v2, -0x1

    const v5, 0x7f0b0001

    const/high16 v4, 0x7f0b

    const/4 v1, 0x2

    const/4 v3, 0x1

    .line 635
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 717
    :goto_0
    return-void

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 715
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->updateCmdBar()V
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1400(Lcom/htc/android/mail/ManageRecipient;)V

    goto :goto_0

    .line 640
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 642
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #setter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/ManageRecipient;->access$702(Lcom/htc/android/mail/ManageRecipient;I)I

    .line 643
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 644
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 645
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 646
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v1}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setLeftText(Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 649
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 659
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 661
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    const/4 v1, 0x0

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 662
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 663
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 664
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 666
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 667
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 672
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 677
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 679
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v3, v2}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 680
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 681
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 682
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 684
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 685
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 690
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 695
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 698
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 699
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 700
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 702
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_9

    .line 703
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 708
    :cond_9
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn3;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

.class Lcom/htc/android/mail/ManageRecipient$Btn1;
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
    name = "Btn1"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ManageRecipient;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ManageRecipient;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ManageRecipient$Btn1;-><init>(Lcom/htc/android/mail/ManageRecipient;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v2, 0x2

    const v5, 0x7f0b0001

    const/high16 v4, 0x7f0b

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 450
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 535
    :goto_0
    return-void

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 533
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->updateCmdBar()V
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1400(Lcom/htc/android/mail/ManageRecipient;)V

    goto :goto_0

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 457
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #setter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0, v1}, Lcom/htc/android/mail/ManageRecipient;->access$702(Lcom/htc/android/mail/ManageRecipient;I)I

    .line 458
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 459
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 460
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 461
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-virtual {v1}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setLeftText(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 464
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 475
    :cond_4
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 477
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v1, v3}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 478
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 479
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 480
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 482
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 483
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 488
    :cond_5
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 494
    :cond_6
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 496
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v3, v1}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 497
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 498
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 499
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 501
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_7

    .line 502
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 507
    :cond_7
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 513
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->status:I
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$700(Lcom/htc/android/mail/ManageRecipient;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->move(II)V
    invoke-static {v0, v2, v1}, Lcom/htc/android/mail/ManageRecipient;->access$1100(Lcom/htc/android/mail/ManageRecipient;II)V

    .line 516
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setList(Ljava/util/List;)V

    .line 517
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->setChkList(Ljava/util/List;)V

    .line 518
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 520
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_9

    .line 521
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    .line 526
    :cond_9
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    invoke-static {v0}, Lcom/htc/android/mail/ManageRecipient;->access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient$Btn1;->this$0:Lcom/htc/android/mail/ManageRecipient;

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

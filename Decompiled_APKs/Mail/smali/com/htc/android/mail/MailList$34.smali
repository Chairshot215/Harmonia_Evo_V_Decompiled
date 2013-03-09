.class Lcom/htc/android/mail/MailList$34;
.super Ljava/lang/Object;
.source "MailList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailList;->updateEmptyMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailList;

.field final synthetic val$tabViewId:I


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailList;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4797
    iput-object p1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    iput p2, p0, Lcom/htc/android/mail/MailList$34;->val$tabViewId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0900e5

    .line 4799
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mTabInfo:Lcom/htc/android/mail/MailList$TabInfo;
    invoke-static {v1}, Lcom/htc/android/mail/MailList;->access$1100(Lcom/htc/android/mail/MailList;)Lcom/htc/android/mail/MailList$TabInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/android/mail/MailList$TabInfo;->mCursor:Lcom/htc/android/mail/database/AbstractMailCursor;

    invoke-virtual {v1}, Lcom/htc/android/mail/database/AbstractMailCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 4800
    iget v1, p0, Lcom/htc/android/mail/MailList$34;->val$tabViewId:I

    packed-switch v1, :pswitch_data_0

    .line 4828
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/htc/android/mail/Mail;->isEnableMailListEmptyText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4829
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 4834
    :cond_0
    :goto_1
    return-void

    .line 4802
    :pswitch_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4805
    :pswitch_2
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4808
    :pswitch_3
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b004a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4811
    :pswitch_4
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0046

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4814
    :pswitch_5
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0047

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4817
    :pswitch_6
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0048

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 4820
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    const v3, 0x7f0b0027

    invoke-virtual {v2, v3}, Lcom/htc/android/mail/MailList;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    #getter for: Lcom/htc/android/mail/MailList;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/android/mail/MailList;->access$3100(Lcom/htc/android/mail/MailList;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    iget-object v3, v3, Lcom/htc/android/mail/MailList;->mAccount:Lcom/htc/android/mail/Account;

    invoke-virtual {v3}, Lcom/htc/android/mail/Account;->getContactGroup()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/htc/util/contacts/ContactsUtility;->getDisplayGroupName(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4822
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 4825
    .end local v0           #msg:Ljava/lang/String;
    :pswitch_8
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b004b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 4832
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/MailList$34;->this$0:Lcom/htc/android/mail/MailList;

    invoke-virtual {v1, v4}, Lcom/htc/android/mail/MailList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 4800
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

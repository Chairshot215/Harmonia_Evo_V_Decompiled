.class Lcom/htc/android/mail/ManageRecipient$ItemClick;
.super Ljava/lang/Object;
.source "ManageRecipient.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/ManageRecipient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/ManageRecipient;


# direct methods
.method private constructor <init>(Lcom/htc/android/mail/ManageRecipient;)V
    .locals 0
    .parameter

    .prologue
    .line 721
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient$ItemClick;->this$0:Lcom/htc/android/mail/ManageRecipient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ManageRecipient$ItemClick;-><init>(Lcom/htc/android/mail/ManageRecipient;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
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
    .line 727
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const-string v1, "ManageRecipient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;

    .line 730
    .local v0, holder:Lcom/htc/android/mail/ManageRecipient$ViewHolder;
    iget-object v1, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListItemCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    iget-object v1, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 732
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$ItemClick;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->remove(I)V
    invoke-static {v1, p3}, Lcom/htc/android/mail/ManageRecipient;->access$1500(Lcom/htc/android/mail/ManageRecipient;I)V

    .line 738
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$ItemClick;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #calls: Lcom/htc/android/mail/ManageRecipient;->updateCmdBar()V
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$1400(Lcom/htc/android/mail/ManageRecipient;)V

    .line 740
    return-void

    .line 734
    :cond_0
    iget-object v1, v0, Lcom/htc/android/mail/ManageRecipient$ViewHolder;->checkBox:Lcom/htc/widget/HtcListItemCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemCheckBox;->setChecked(Z)V

    .line 735
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient$ItemClick;->this$0:Lcom/htc/android/mail/ManageRecipient;

    #getter for: Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;
    invoke-static {v1}, Lcom/htc/android/mail/ManageRecipient;->access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

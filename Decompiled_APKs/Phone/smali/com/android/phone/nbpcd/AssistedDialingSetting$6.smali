.class Lcom/android/phone/nbpcd/AssistedDialingSetting$6;
.super Ljava/lang/Object;
.source "AssistedDialingSetting.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/AssistedDialingSetting;->initSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/AssistedDialingSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 723
    iput-object p1, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 726
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #setter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCountryPos:I
    invoke-static {v4, p3}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$1202(Lcom/android/phone/nbpcd/AssistedDialingSetting;I)I

    .line 727
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v4, v4, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mList:Ljava/util/List;

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/nbpcd/MCC_ITEM;

    .line 728
    .local v0, item:Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-virtual {v0}, Lcom/android/phone/nbpcd/MCC_ITEM;->getMcc()Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, mcc:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v4, v4, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mMccEdit:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/MCC_ITEM;->getPrimarykey()Ljava/lang/String;

    move-result-object v5

    #setter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$1302(Lcom/android/phone/nbpcd/AssistedDialingSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 732
    invoke-static {}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "AssistedDialingSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Select MCC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PK :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$1300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_0
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v5, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    #getter for: Lcom/android/phone/nbpcd/AssistedDialingSetting;->mCurrentPK:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$1300(Lcom/android/phone/nbpcd/AssistedDialingSetting;)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/nbpcd/AssistedDialingSetting;->findSpeiciedMCC(Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-static {v4, v5}, Lcom/android/phone/nbpcd/AssistedDialingSetting;->access$1400(Lcom/android/phone/nbpcd/AssistedDialingSetting;Ljava/lang/String;)Lcom/android/phone/nbpcd/MCC_ITEM;

    move-result-object v3

    .line 734
    .local v3, mccItem:Lcom/android/phone/nbpcd/MCC_ITEM;
    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getIDDList()[Lcom/android/phone/nbpcd/IDD_ITEM;

    move-result-object v1

    .line 735
    .local v1, itemList:[Lcom/android/phone/nbpcd/IDD_ITEM;
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v4, v4, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mcountryCodeEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getCounteryCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 736
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v4, v4, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mIDDEdit:Landroid/widget/EditText;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Lcom/android/phone/nbpcd/IDD_ITEM;->getIDD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v4, v4, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNddEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getNDD()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v4, v4, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mAreaEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getArea()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v4, p0, Lcom/android/phone/nbpcd/AssistedDialingSetting$6;->this$0:Lcom/android/phone/nbpcd/AssistedDialingSetting;

    iget-object v4, v4, Lcom/android/phone/nbpcd/AssistedDialingSetting;->mNumberLenghtEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/android/phone/nbpcd/MCC_ITEM;->getNumLength()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 742
    return-void
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 747
    .local p1, arg0:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

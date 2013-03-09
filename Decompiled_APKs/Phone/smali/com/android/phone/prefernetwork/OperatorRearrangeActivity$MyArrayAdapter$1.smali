.class Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;
.super Ljava/lang/Object;
.source "OperatorRearrangeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

.field final synthetic val$selectedPosition:I


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;->this$1:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    iput p2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;->val$selectedPosition:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 266
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 268
    .local v0, isChecked:Z
    iget-object v1, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;->this$1:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    iget-object v1, v1, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #calls: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->handleDeleteCount(Z)V
    invoke-static {v1, v0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$000(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;Z)V

    .line 270
    iget v1, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;->val$selectedPosition:I

    iget-object v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;->this$1:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    iget-object v2, v2, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 272
    iget-object v1, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;->this$1:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;

    iget-object v1, v1, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter;->this$0:Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;

    #getter for: Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->mData:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;->access$100(Lcom/android/phone/prefernetwork/OperatorRearrangeActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyArrayAdapter$1;->val$selectedPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;

    invoke-virtual {v1, v0}, Lcom/android/phone/prefernetwork/OperatorRearrangeActivity$MyInfoData;->setState(Z)V

    .line 275
    :cond_0
    return-void
.end method

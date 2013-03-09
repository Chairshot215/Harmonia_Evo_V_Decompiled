.class Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CslSelectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Landroid/content/Context;IILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "itemLayout"
    .parameter "title"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, this:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;,"Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter<TT;>;"
    .local p5, profiles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    .line 208
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 209
    return-void
.end method


# virtual methods
.method public getSelect()I
    .locals 1

    .prologue
    .line 243
    .local p0, this:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;,"Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$000(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 213
    .local p0, this:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;,"Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 214
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0d0014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 216
    .local v0, radio:Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    .line 217
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$000(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 220
    :cond_0
    return-object v1

    .line 217
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setSelect(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 224
    .local p0, this:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;,"Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter<TT;>;"
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #setter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I
    invoke-static {v0, p1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$002(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;I)I

    .line 225
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfilePathNames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$100(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfilePathNames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$100(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I
    invoke-static {v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$000(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfilePathNames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$100(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPosition:I
    invoke-static {v2}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$000(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    #setter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedPath:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$202(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$300(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "45400_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$300(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "45400_3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    const-string v1, "1O1O"

    #setter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedDbName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$402(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    const-string v1, "1O1O"

    #setter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mOperator:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$502(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->notifyDataSetChanged()V

    .line 240
    return-void

    .line 231
    :cond_3
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$300(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "45400_2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$300(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "45400_4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    const-string v1, "one2free"

    #setter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedDbName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$402(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    const-string v1, "one2free"

    #setter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mOperator:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$502(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    #getter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mProfileItemNames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$300(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "45400_5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    const-string v1, "New World Mobility"

    #setter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mSelectedDbName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$402(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity$MyArrayAdapter;->this$0:Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;

    const-string v1, "New World Mobility"

    #setter for: Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->mOperator:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;->access$502(Lcom/htc/android/htcsetupwizard/csl/CslSelectionActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

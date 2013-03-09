.class Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;
.super Ljava/lang/Object;
.source "EditSpeedDialEntryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 932
    iput-object p1, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 935
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationStrings:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$400(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v1, v2, p2

    .line 936
    .local v1, locationString:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mLocationButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$700(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 938
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$500(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 939
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSpeedDials:[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$500(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)[Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/htcdialer/util/SpeedDialUtils$SpeedDialEntry;->displayString:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 940
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #setter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I
    invoke-static {v2, v0}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$802(Lcom/android/htcdialer/EditSpeedDialEntryActivity;I)I

    .line 938
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 946
    :cond_1
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectNumberPosition:I
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$900(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)I

    move-result v2

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSelectLocationPosition:I
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$800(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 948
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 949
    iget-object v2, p0, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4$1;->this$1:Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;

    iget-object v2, v2, Lcom/android/htcdialer/EditSpeedDialEntryActivity$4;->this$0:Lcom/android/htcdialer/EditSpeedDialEntryActivity;

    #getter for: Lcom/android/htcdialer/EditSpeedDialEntryActivity;->mSaveButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/htcdialer/EditSpeedDialEntryActivity;->access$1000(Lcom/android/htcdialer/EditSpeedDialEntryActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 951
    :cond_2
    return-void
.end method

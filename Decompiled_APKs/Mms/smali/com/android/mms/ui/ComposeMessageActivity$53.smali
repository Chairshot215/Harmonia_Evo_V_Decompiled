.class Lcom/android/mms/ui/ComposeMessageActivity$53;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 10084
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x0

    .line 10087
    sput p2, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    .line 10089
    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    sget v4, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    aget-object v2, v3, v4

    .line 10091
    .local v2, sel_value:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->menuitemarray:[Ljava/lang/String;

    sget v4, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    aget-object v1, v3, v4

    .line 10092
    .local v1, sel_menu_value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropdownListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10093
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropdownListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;

    sget v4, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->setDefaultAddress(I)V

    .line 10096
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/mms/ui/RecipientList;->getRecipient(I)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v0

    .line 10097
    .local v0, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iput-object v2, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 10098
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Lcom/android/mms/ui/RecipientList;->setRecipient(ILcom/android/mms/ui/RecipientList$Recipient;)Lcom/android/mms/ui/RecipientList$Recipient;

    .line 10099
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/RecipientList;->refreshList(Landroid/content/Context;)V

    .line 10101
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v3

    const-string v4, "2.1"

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 10102
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/mms/ui/MessageEditorPanel;->setReplyNumber(Ljava/lang/String;Z)V

    .line 10104
    :cond_1
    sget v3, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    sput v3, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_defaultsel:I

    .line 10106
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setMultipleAddressTitle(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 10108
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 10109
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MENU_SENSE20_RECIPIENT mRecipientList.getToNumbers()[0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$53;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/RecipientList;->getToNumbers()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10110
    return-void
.end method

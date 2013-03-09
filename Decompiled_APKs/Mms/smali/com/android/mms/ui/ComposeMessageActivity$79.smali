.class Lcom/android/mms/ui/ComposeMessageActivity$79;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->setMultipleAddressTitle(Ljava/lang/String;)V
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
    .line 14365
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 14370
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropDown:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$13700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 14371
    sput p3, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    .line 14372
    sget v3, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    sput v3, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_defaultsel:I

    .line 14373
    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->numberarray:[Ljava/lang/String;

    sget v4, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    aget-object v2, v3, v4

    .line 14374
    .local v2, sel_value:Ljava/lang/String;
    sget-object v3, Lcom/android/mms/ui/ComposeMessageActivity;->menuitemarray:[Ljava/lang/String;

    sget v4, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    aget-object v1, v3, v4

    .line 14375
    .local v1, sel_menu_value:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropdownListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 14376
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mTitleDropdownListAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3000(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/widget/BaseAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;

    sget v4, Lcom/android/mms/ui/ComposeMessageActivity;->recipient_sel_value:I

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/MultiAddressDropDownListAdapter;->setDefaultAddress(I)V

    .line 14377
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/mms/ui/RecipientList;->getRecipient(I)Lcom/android/mms/ui/RecipientList$Recipient;

    move-result-object v0

    .line 14378
    .local v0, r:Lcom/android/mms/ui/RecipientList$Recipient;
    iput-object v2, v0, Lcom/android/mms/ui/RecipientList$Recipient;->number:Ljava/lang/String;

    .line 14379
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Lcom/android/mms/ui/RecipientList;->setRecipient(ILcom/android/mms/ui/RecipientList$Recipient;)Lcom/android/mms/ui/RecipientList$Recipient;

    .line 14380
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mRecipientList:Lcom/android/mms/ui/RecipientList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/RecipientList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v4, v4, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/RecipientList;->refreshList(Landroid/content/Context;)V

    .line 14382
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportReplyNumberIndicator()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14383
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorPanel:Lcom/android/mms/ui/MessageEditorPanel;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$300(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageEditorPanel;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/mms/ui/MessageEditorPanel;->setReplyNumber(Ljava/lang/String;Z)V

    .line 14386
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$79;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->setMultipleAddressTitle(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3200(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 14387
    return-void
.end method

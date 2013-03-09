.class Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;
.super Ljava/lang/Object;
.source "ContactLinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1825
    iput-object p1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iput-object p2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4500(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickNameAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1828
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    new-instance v1, Lcom/android/htccontacts/link/pickNameAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v2, v2, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    iget-object v3, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v3, v3, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/htccontacts/link/pickNameAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;
    invoke-static {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4502(Lcom/android/htccontacts/link/ContactLinkActivity;Lcom/android/htccontacts/link/pickNameAdapter;)Lcom/android/htccontacts/link/pickNameAdapter;

    .line 1829
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameCursorRegistered:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4702(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z

    .line 1834
    :goto_0
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4800(Lcom/android/htccontacts/link/ContactLinkActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v1, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4500(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickNameAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1836
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1837
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameDropDownList:Lcom/htc/widget/HeaderBarDropDown;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4900(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    .line 1838
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/htccontacts/link/ContactLinkActivity;->dNameDirty:Z
    invoke-static {v0, v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$5002(Lcom/android/htccontacts/link/ContactLinkActivity;Z)Z

    .line 1840
    :cond_0
    return-void

    .line 1832
    :cond_1
    iget-object v0, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v0, v0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->mNameAdapter:Lcom/android/htccontacts/link/pickNameAdapter;
    invoke-static {v0}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4500(Lcom/android/htccontacts/link/ContactLinkActivity;)Lcom/android/htccontacts/link/pickNameAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread$1;->this$1:Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;

    iget-object v1, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ShowNamePickerDialogThread;->this$0:Lcom/android/htccontacts/link/ContactLinkActivity;

    #getter for: Lcom/android/htccontacts/link/ContactLinkActivity;->cName:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/htccontacts/link/ContactLinkActivity;->access$4600(Lcom/android/htccontacts/link/ContactLinkActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/link/pickNameAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

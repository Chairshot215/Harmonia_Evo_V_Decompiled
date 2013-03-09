.class public Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;
.super Ljava/lang/Object;
.source "ContactListSearchPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactListSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterTextWatcher"
.end annotation


# instance fields
.field beforeLen:I

.field currentLen:I

.field final synthetic this$0:Lcom/android/htccontacts/ContactListSearchPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactListSearchPicker;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3402
    iput-object p1, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3403
    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->beforeLen:I

    .line 3404
    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->currentLen:I

    return-void
.end method

.method private checkFilterable(Lcom/htc/widget/HtcListView;)Z
    .locals 3
    .parameter "listView"

    .prologue
    const/4 v1, 0x0

    .line 3488
    if-eqz p1, :cond_0

    .line 3489
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3490
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 3491
    instance-of v2, v0, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    .line 3492
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 3497
    :cond_0
    return v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 3412
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactListSearchPicker;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3472
    :cond_0
    :goto_0
    return-void

    .line 3416
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactListSearchPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 3417
    .local v0, listView:Lcom/htc/widget/HtcListView;
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    .line 3419
    if-eqz v0, :cond_0

    .line 3423
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/ContactListSearchPicker;->ensureSubTitle(Ljava/lang/CharSequence;)V

    .line 3426
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3430
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->checkFilterable(Lcom/htc/widget/HtcListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3434
    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->beforeLen:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->currentLen:I

    if-lez v2, :cond_2

    .line 3437
    if-eqz v0, :cond_2

    .line 3438
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v2, v2, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 3441
    :cond_2
    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->beforeLen:I

    if-lez v2, :cond_3

    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->currentLen:I

    if-nez v2, :cond_3

    .line 3444
    if-eqz v0, :cond_3

    .line 3445
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v2, v2, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 3448
    :cond_3
    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->beforeLen:I

    if-lez v2, :cond_4

    iget v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->currentLen:I

    if-lez v2, :cond_4

    .line 3450
    if-eqz v0, :cond_4

    .line 3451
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v2, v2, Lcom/android/htccontacts/ContactListSearchPicker;->mFilterString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 3455
    :cond_4
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-boolean v3, v3, Lcom/android/htccontacts/ContactListSearchPicker;->mIsIMESearchEnabled:Z

    if-ne v2, v3, :cond_7

    .line 3456
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3300(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 3457
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3458
    .local v1, text:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3459
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/ContactListSearchPicker;->mResultReceiver:Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;
    invoke-static {v2}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3400(Lcom/android/htccontacts/ContactListSearchPicker;)Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    move-result-object v2

    if-nez v2, :cond_5

    .line 3460
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    new-instance v3, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    iget-object v4, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3500(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;-><init>(Landroid/widget/EditText;)V

    #setter for: Lcom/android/htccontacts/ContactListSearchPicker;->mResultReceiver:Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;
    invoke-static {v2, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3402(Lcom/android/htccontacts/ContactListSearchPicker;Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;)Lcom/android/htccontacts/ContactListSearchPicker$LaunchIMEReceiver;

    .line 3463
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v3, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    #getter for: Lcom/android/htccontacts/app/ContactsListActivity;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/htccontacts/ContactListSearchPicker;->access$3600(Lcom/android/htccontacts/ContactListSearchPicker;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->launchIME(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 3467
    .end local v1           #text:Ljava/lang/String;
    :cond_6
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    const-string v3, "mInputEditor is NULL"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactListSearchPicker;->throwWarningException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 3471
    :cond_7
    iget-object v2, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactListSearchPicker;

    iget-object v2, v2, Lcom/android/htccontacts/ContactListSearchPicker;->mSecondAdapter:Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;

    invoke-virtual {v2}, Lcom/android/htccontacts/widget/CompanyDirectorySearchAdapter;->resetSearch()V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 3477
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->beforeLen:I

    .line 3478
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 3483
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactListSearchPicker$FilterTextWatcher;->currentLen:I

    .line 3484
    return-void
.end method

.class public Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;
.super Ljava/lang/Object;
.source "CommonContactAttributePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CommonContactAttributePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterTextWatcher"
.end annotation


# instance fields
.field beforeLen:I

.field currentLen:I

.field final synthetic this$0:Lcom/android/htccontacts/CommonContactAttributePicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/CommonContactAttributePicker;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 2408
    iput-object p1, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 2409
    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->beforeLen:I

    .line 2410
    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->currentLen:I

    return-void
.end method

.method private checkFilterable(Lcom/htc/widget/HtcListView;)Z
    .locals 3
    .parameter "listView"

    .prologue
    const/4 v1, 0x0

    .line 2485
    if-eqz p1, :cond_0

    .line 2486
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2487
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 2488
    instance-of v2, v0, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    .line 2489
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 2494
    :cond_0
    return v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 2413
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2469
    :cond_0
    :goto_0
    return-void

    .line 2417
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 2418
    .local v0, listView:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 2423
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2427
    invoke-direct {p0, v0}, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->checkFilterable(Lcom/htc/widget/HtcListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2431
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 2433
    .local v1, mFilterString:Ljava/lang/String;
    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->beforeLen:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->currentLen:I

    if-lez v2, :cond_3

    .line 2436
    if-eqz v0, :cond_2

    .line 2437
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 2439
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->ensureSubTitle(Ljava/lang/CharSequence;)V

    .line 2441
    :cond_3
    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->beforeLen:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->currentLen:I

    if-nez v2, :cond_5

    .line 2444
    if-eqz v0, :cond_4

    .line 2445
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 2447
    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/CommonContactAttributePicker;->ensureSubTitle(Ljava/lang/CharSequence;)V

    .line 2449
    :cond_5
    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->beforeLen:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->currentLen:I

    if-lez v2, :cond_6

    .line 2451
    if-eqz v0, :cond_6

    .line 2452
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 2457
    :cond_6
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1100(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2458
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2459
    invoke-static {}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3100()Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    move-result-object v2

    if-nez v2, :cond_7

    .line 2460
    new-instance v2, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iget-object v4, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1100(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/CommonContactAttributePicker;Landroid/widget/EditText;)V

    invoke-static {v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3102(Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;)Lcom/android/htccontacts/CommonContactAttributePicker$LaunchIMEReceiver;

    .line 2462
    :cond_7
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    iget-object v3, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$1100(Lcom/android/htccontacts/CommonContactAttributePicker;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/CommonContactAttributePicker;->launchIME(Landroid/widget/EditText;)V

    .line 2468
    :cond_8
    iget-object v2, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CommonContactAttributePicker;

    #getter for: Lcom/android/htccontacts/CommonContactAttributePicker;->mSecondAdapter:Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;
    invoke-static {v2}, Lcom/android/htccontacts/CommonContactAttributePicker;->access$3200(Lcom/android/htccontacts/CommonContactAttributePicker;)Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/CommonContactAttributePicker$CompanyDirectoryDataSearchAdapter;->resetSearch()V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 2474
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->beforeLen:I

    .line 2475
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 2480
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/CommonContactAttributePicker$FilterTextWatcher;->currentLen:I

    .line 2481
    return-void
.end method

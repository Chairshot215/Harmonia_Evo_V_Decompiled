.class public Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;
.super Ljava/lang/Object;
.source "ContactPhoneEmailDataPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneEmailDataPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterTextWatcher"
.end annotation


# instance fields
.field beforeLen:I

.field currentLen:I

.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3069
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3070
    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->beforeLen:I

    .line 3071
    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->currentLen:I

    return-void
.end method

.method private checkFilterable(Lcom/htc/widget/HtcListView;)Z
    .locals 3
    .parameter "listView"

    .prologue
    const/4 v1, 0x0

    .line 3146
    if-eqz p1, :cond_0

    .line 3147
    invoke-virtual {p1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 3148
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    .line 3149
    instance-of v2, v0, Landroid/widget/Filterable;

    if-eqz v2, :cond_0

    .line 3150
    check-cast v0, Landroid/widget/Filterable;

    .end local v0           #adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 3155
    :cond_0
    return v1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 3074
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3130
    :cond_0
    :goto_0
    return-void

    .line 3078
    :cond_1
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 3079
    .local v0, listView:Lcom/htc/widget/HtcListView;
    if-eqz v0, :cond_0

    .line 3084
    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3088
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->checkFilterable(Lcom/htc/widget/HtcListView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3092
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3094
    .local v1, mFilterString:Ljava/lang/String;
    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->beforeLen:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->currentLen:I

    if-lez v2, :cond_3

    .line 3097
    if-eqz v0, :cond_2

    .line 3098
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 3100
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->ensureSubTitle(Ljava/lang/CharSequence;)V

    .line 3102
    :cond_3
    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->beforeLen:I

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->currentLen:I

    if-nez v2, :cond_5

    .line 3105
    if-eqz v0, :cond_4

    .line 3106
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 3108
    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    invoke-virtual {v2, p1}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->ensureSubTitle(Ljava/lang/CharSequence;)V

    .line 3110
    :cond_5
    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->beforeLen:I

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->currentLen:I

    if-lez v2, :cond_6

    .line 3112
    if-eqz v0, :cond_6

    .line 3113
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 3118
    :cond_6
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 3119
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3120
    invoke-static {}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3800()Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    move-result-object v2

    if-nez v2, :cond_7

    .line 3121
    new-instance v2, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v4, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;-><init>(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;Landroid/widget/EditText;)V

    invoke-static {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3802(Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$LaunchIMEReceiver;

    .line 3123
    :cond_7
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    iget-object v3, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mInputEditor:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$1200(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->launchIME(Landroid/widget/EditText;)V

    .line 3129
    :cond_8
    iget-object v2, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/ContactPhoneEmailDataPicker;

    #getter for: Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->mSecondAdapter:Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;
    invoke-static {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker;->access$3900(Lcom/android/htccontacts/ContactPhoneEmailDataPicker;)Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$CompanyDirectoryDataSearchAdapter;->resetSearch()V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 3135
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->beforeLen:I

    .line 3136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 3141
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iput v0, p0, Lcom/android/htccontacts/ContactPhoneEmailDataPicker$FilterTextWatcher;->currentLen:I

    .line 3142
    return-void
.end method

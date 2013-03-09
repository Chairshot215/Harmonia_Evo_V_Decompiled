.class public Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$FilterTextWatcher;
.super Ljava/lang/Object;
.source "HtcManageCallsListPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 663
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-virtual {v1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    .line 664
    .local v0, listView:Lcom/htc/widget/HtcListView;
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mFilterString:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1702(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;Ljava/lang/String;)Ljava/lang/String;

    .line 665
    iget-object v1, p0, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;

    #getter for: Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->mFilterString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;->access$1700(Lcom/android/htccontacts/blacklist/HtcManageCallsListPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 671
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 682
    return-void
.end method

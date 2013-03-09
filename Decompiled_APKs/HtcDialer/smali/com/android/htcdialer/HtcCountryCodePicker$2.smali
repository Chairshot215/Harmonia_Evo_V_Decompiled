.class Lcom/android/htcdialer/HtcCountryCodePicker$2;
.super Ljava/lang/Object;
.source "HtcCountryCodePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htcdialer/HtcCountryCodePicker;->initSearchBox()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/HtcCountryCodePicker;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/HtcCountryCodePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/android/htcdialer/HtcCountryCodePicker$2;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$2;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    invoke-virtual {v0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->setFastScrollSectionsDirty()V

    .line 349
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$2;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    invoke-virtual {v0}, Lcom/android/htcdialer/HtcCountryCodePicker;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setSelection(I)V

    .line 350
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$2;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mPrefix:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$002(Lcom/android/htcdialer/HtcCountryCodePicker;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$2;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #setter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mSimOperatorPos:I
    invoke-static {v0, v2}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$702(Lcom/android/htcdialer/HtcCountryCodePicker;I)I

    .line 352
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$2;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #setter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mNetworkOperatorPos:I
    invoke-static {v0, v2}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$902(Lcom/android/htcdialer/HtcCountryCodePicker;I)I

    .line 353
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$2;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #setter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mFirstBodyPos:I
    invoke-static {v0, v2}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$1002(Lcom/android/htcdialer/HtcCountryCodePicker;I)I

    .line 354
    iget-object v0, p0, Lcom/android/htcdialer/HtcCountryCodePicker$2;->this$0:Lcom/android/htcdialer/HtcCountryCodePicker;

    #getter for: Lcom/android/htcdialer/HtcCountryCodePicker;->mAdapter:Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;
    invoke-static {v0}, Lcom/android/htcdialer/HtcCountryCodePicker;->access$500(Lcom/android/htcdialer/HtcCountryCodePicker;)Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/htcdialer/HtcCountryCodePicker$CountryCodeAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 355
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 358
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 361
    return-void
.end method

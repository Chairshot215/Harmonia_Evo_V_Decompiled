.class public Lcom/android/htccontacts/CheckBoxContactPicker$FilterTextWatcher;
.super Ljava/lang/Object;
.source "CheckBoxContactPicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/CheckBoxContactPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FilterTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/CheckBoxContactPicker;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/CheckBoxContactPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$402(Lcom/android/htccontacts/CheckBoxContactPicker;Ljava/lang/String;)Ljava/lang/String;

    .line 1243
    iget-object v0, p0, Lcom/android/htccontacts/CheckBoxContactPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    iget-object v0, v0, Lcom/android/htccontacts/CheckBoxContactPicker;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/android/htccontacts/CheckBoxContactPicker$FilterTextWatcher;->this$0:Lcom/android/htccontacts/CheckBoxContactPicker;

    #getter for: Lcom/android/htccontacts/CheckBoxContactPicker;->mFilterString:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htccontacts/CheckBoxContactPicker;->access$400(Lcom/android/htccontacts/CheckBoxContactPicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 1244
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 1248
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 1259
    return-void
.end method

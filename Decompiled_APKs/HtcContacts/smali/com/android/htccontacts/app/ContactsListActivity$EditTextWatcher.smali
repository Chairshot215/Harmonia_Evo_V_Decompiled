.class public Lcom/android/htccontacts/app/ContactsListActivity$EditTextWatcher;
.super Ljava/lang/Object;
.source "ContactsListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/ContactsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/app/ContactsListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/ContactsListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3217
    iput-object p1, p0, Lcom/android/htccontacts/app/ContactsListActivity$EditTextWatcher;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 3240
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 3219
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "buffer"
    .parameter "start"
    .parameter "olen"
    .parameter "nlen"

    .prologue
    .line 3223
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 3225
    .local v0, length:I
    if-lez v0, :cond_0

    .line 3227
    iget-object v1, p0, Lcom/android/htccontacts/app/ContactsListActivity$EditTextWatcher;->this$0:Lcom/android/htccontacts/app/ContactsListActivity;

    invoke-virtual {v1}, Lcom/android/htccontacts/app/ContactsListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFilterText(Ljava/lang/String;)V

    .line 3235
    :cond_0
    return-void
.end method

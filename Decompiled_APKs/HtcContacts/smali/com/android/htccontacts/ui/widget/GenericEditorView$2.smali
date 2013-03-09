.class Lcom/android/htccontacts/ui/widget/GenericEditorView$2;
.super Landroid/widget/ArrayAdapter;
.source "GenericEditorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/widget/GenericEditorView;->createLabelDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/htccontacts/model/AccountType$EditType;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/widget/GenericEditorView;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 400
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$2;->this$0:Lcom/android/htccontacts/ui/widget/GenericEditorView;

    iput-object p5, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 403
    if-nez p2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/GenericEditorView$2;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v3, 0x20900ad

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 407
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/widget/GenericEditorView$2;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/AccountType$EditType;

    .local v1, type:Lcom/android/htccontacts/model/AccountType$EditType;
    move-object v0, p2

    .line 408
    check-cast v0, Landroid/widget/TextView;

    .line 409
    .local v0, textView:Landroid/widget/TextView;
    iget v2, v1, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 410
    return-object v0
.end method

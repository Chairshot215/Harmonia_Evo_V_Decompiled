.class Lcom/android/htccontacts/ui/QuickContactWindow$2;
.super Landroid/widget/BaseAdapter;
.source "QuickContactWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ui/QuickContactWindow;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

.field final synthetic val$children:Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ui/QuickContactWindow;Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2024
    iput-object p1, p0, Lcom/android/htccontacts/ui/QuickContactWindow$2;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    iput-object p2, p0, Lcom/android/htccontacts/ui/QuickContactWindow$2;->val$children:Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$2;->val$children:Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;

    invoke-virtual {v0}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/htccontacts/ui/QuickContactWindow$2;->val$children:Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;

    invoke-virtual {v0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$ActionList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 2034
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2038
    if-nez p2, :cond_0

    .line 2039
    iget-object v3, p0, Lcom/android/htccontacts/ui/QuickContactWindow$2;->this$0:Lcom/android/htccontacts/ui/QuickContactWindow;

    #getter for: Lcom/android/htccontacts/ui/QuickContactWindow;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/htccontacts/ui/QuickContactWindow;->access$1000(Lcom/android/htccontacts/ui/QuickContactWindow;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03006a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2044
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/QuickContactWindow$2;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/QuickContactWindow$Action;

    .line 2048
    .local v0, action:Lcom/android/htccontacts/ui/QuickContactWindow$Action;
    const v3, 0x1020014

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2049
    .local v1, text1:Landroid/widget/TextView;
    const v3, 0x1020015

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2051
    .local v2, text2:Landroid/widget/TextView;
    invoke-interface {v0}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->getHeader()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2052
    invoke-interface {v0}, Lcom/android/htccontacts/ui/QuickContactWindow$Action;->getBody()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2054
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2055
    return-object p2
.end method

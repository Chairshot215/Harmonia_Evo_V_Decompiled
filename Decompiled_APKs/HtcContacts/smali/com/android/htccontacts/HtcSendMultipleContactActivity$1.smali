.class Lcom/android/htccontacts/HtcSendMultipleContactActivity$1;
.super Landroid/widget/ArrayAdapter;
.source "HtcSendMultipleContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcSendMultipleContactActivity;->displaySendContactDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendMultipleContactActivity;Landroid/content/Context;ILandroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$1;->this$0:Lcom/android/htccontacts/HtcSendMultipleContactActivity;

    iput-object p4, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 147
    if-nez p2, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/htccontacts/HtcSendMultipleContactActivity$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v2, 0x2090007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 152
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcSendMultipleContactActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, resId:I
    move-object v1, p2

    .line 153
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 154
    return-object p2
.end method

.class Lcom/android/htccontacts/HtcSendContactActivity$6;
.super Landroid/widget/ArrayAdapter;
.source "HtcSendContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/HtcSendContactActivity;->pickSendVia()Lcom/htc/widget/HtcAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/HtcSendContactActivity;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/HtcSendContactActivity;Landroid/content/Context;I[Ljava/lang/CharSequence;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter

    .prologue
    .line 2190
    iput-object p1, p0, Lcom/android/htccontacts/HtcSendContactActivity$6;->this$0:Lcom/android/htccontacts/HtcSendContactActivity;

    iput-object p5, p0, Lcom/android/htccontacts/HtcSendContactActivity$6;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 2193
    if-nez p2, :cond_0

    .line 2194
    iget-object v2, p0, Lcom/android/htccontacts/HtcSendContactActivity$6;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v3, 0x2090007

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2198
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/HtcSendContactActivity$6;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 2199
    .local v1, value:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, displayName:Ljava/lang/String;
    move-object v2, p2

    .line 2201
    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2203
    return-object p2
.end method

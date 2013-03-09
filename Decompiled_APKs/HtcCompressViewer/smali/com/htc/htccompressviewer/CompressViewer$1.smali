.class Lcom/htc/htccompressviewer/CompressViewer$1;
.super Landroid/widget/ArrayAdapter;
.source "CompressViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/htccompressviewer/CompressViewer;->getSelectAccountDialog(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/accounts/Account;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/htccompressviewer/CompressViewer;

.field final synthetic val$dialogInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/htc/htccompressviewer/CompressViewer;Landroid/content/Context;ILjava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter
    .parameter

    .prologue
    .line 770
    .local p4, x2:Ljava/util/List;,"Ljava/util/List<Landroid/accounts/Account;>;"
    iput-object p1, p0, Lcom/htc/htccompressviewer/CompressViewer$1;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iput-object p5, p0, Lcom/htc/htccompressviewer/CompressViewer$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 775
    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer$1;->val$dialogInflater:Landroid/view/LayoutInflater;

    const v5, 0x1090004

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 778
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 779
    .local v1, text1:Landroid/widget/TextView;
    const v4, 0x1020015

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 781
    .local v2, text2:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/htc/htccompressviewer/CompressViewer$1;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    .line 783
    .local v0, account:Landroid/accounts/Account;
    iget-object v4, p0, Lcom/htc/htccompressviewer/CompressViewer$1;->this$0:Lcom/htc/htccompressviewer/CompressViewer;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/htccompressviewer/CompressViewer;->getAccountTypeName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 784
    .local v3, typeName:Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Phone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 787
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    :cond_0
    return-object p2
.end method

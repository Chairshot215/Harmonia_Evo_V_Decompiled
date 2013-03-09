.class public Lcom/android/mms/ui/DeliveryReportAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DeliveryReportAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/mms/ui/DeliveryReportItem;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "DeliveryReportAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/DeliveryReportItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/DeliveryReportItem;>;"
    const v0, 0x7f030006

    const v1, 0x7f0e0026

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 37
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/DeliveryReportAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/DeliveryReportItem;

    .line 44
    .local v1, item:Lcom/android/mms/ui/DeliveryReportItem;
    if-nez p2, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/android/mms/ui/DeliveryReportAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 46
    .local v0, factory:Landroid/view/LayoutInflater;
    const v3, 0x7f030006

    const/4 v4, 0x0

    invoke-virtual {v0, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/DeliveryReportListItem;

    .line 57
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .local v2, listItem:Lcom/android/mms/ui/DeliveryReportListItem;
    :goto_0
    iget-object v3, v1, Lcom/android/mms/ui/DeliveryReportItem;->recipient:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/mms/ui/DeliveryReportItem;->status:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/mms/ui/DeliveryReportItem;->date:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/ui/DeliveryReportListItem;->bind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v2

    .line 59
    .end local v2           #listItem:Lcom/android/mms/ui/DeliveryReportListItem;
    .end local p2
    :cond_0
    return-object p2

    .line 49
    .restart local p2
    :cond_1
    instance-of v3, p2, Lcom/android/mms/ui/DeliveryReportListItem;

    if-eqz v3, :cond_0

    move-object v2, p2

    .line 50
    check-cast v2, Lcom/android/mms/ui/DeliveryReportListItem;

    .restart local v2       #listItem:Lcom/android/mms/ui/DeliveryReportListItem;
    goto :goto_0
.end method

.class Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PreferredNetworkList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/prefernetwork/PreferredNetworkList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;


# direct methods
.method constructor <init>(Lcom/android/phone/prefernetwork/PreferredNetworkList;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    .local p3, objects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;>;"
    iput-object p1, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;->this$0:Lcom/android/phone/prefernetwork/PreferredNetworkList;

    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 322
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 323
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;

    .line 330
    .local v0, item:Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;
    if-nez p2, :cond_0

    .line 331
    iget-object v3, p0, Lcom/android/phone/prefernetwork/PreferredNetworkList$ActionAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030043

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 336
    .local v2, view:Landroid/view/View;
    :goto_0
    const v3, 0x2020010

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 337
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-object v2

    .line 333
    .end local v1           #tv:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-",
            "Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 350
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-Lcom/android/phone/prefernetwork/PreferredNetworkList$OpData;>;"
    return-void
.end method

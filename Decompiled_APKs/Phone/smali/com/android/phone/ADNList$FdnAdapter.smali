.class Lcom/android/phone/ADNList$FdnAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ADNList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ADNList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FdnAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/phone/ADNList$FdnData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ADNList;


# direct methods
.method public constructor <init>(Lcom/android/phone/ADNList;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "c"
    .parameter "resource"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/phone/ADNList$FdnAdapter;->this$0:Lcom/android/phone/ADNList;

    .line 421
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 424
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/android/phone/ADNList$FdnAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 432
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/phone/ADNList$FdnAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1090004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TwoLineListItem;

    .line 433
    .local v2, item:Landroid/widget/TwoLineListItem;
    const v5, 0x1020014

    invoke-virtual {v2, v5}, Landroid/widget/TwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 434
    .local v3, textView1:Landroid/widget/TextView;
    const v5, 0x1020015

    invoke-virtual {v2, v5}, Landroid/widget/TwoLineListItem;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 437
    .local v4, textView2:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/phone/ADNList$FdnAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ADNList$FdnData;

    .line 438
    .local v0, data:Lcom/android/phone/ADNList$FdnData;
    iget-object v5, v0, Lcom/android/phone/ADNList$FdnData;->sName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v5, v0, Lcom/android/phone/ADNList$FdnData;->sNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    return-object v2
.end method

.class Lcom/android/ex/chips/SingleRecipientArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SingleRecipientArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/ex/chips/RecipientEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutId:I

.field private final mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/ex/chips/RecipientEntry;)V
    .locals 2
    .parameter "context"
    .parameter "resourceId"
    .parameter "entry"

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/ex/chips/RecipientEntry;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 38
    iput p2, p0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;->mLayoutId:I

    .line 39
    return-void
.end method

.method private bindView(Landroid/view/View;Landroid/content/Context;Lcom/android/ex/chips/RecipientEntry;)V
    .locals 5
    .parameter "view"
    .parameter "context"
    .parameter "entry"

    .prologue
    const/4 v4, 0x0

    .line 55
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 56
    .local v1, display:Landroid/widget/TextView;
    const v3, 0x1020006

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 57
    .local v2, imageView:Landroid/widget/ImageView;
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 60
    const v3, 0x1020014

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 61
    .local v0, destination:Landroid/widget/TextView;
    invoke-virtual {p3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method

.method private newView()Landroid/view/View;
    .locals 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/ex/chips/SingleRecipientArrayAdapter;->mLayoutId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 43
    if-nez p2, :cond_0

    .line 44
    invoke-direct {p0}, Lcom/android/ex/chips/SingleRecipientArrayAdapter;->newView()Landroid/view/View;

    move-result-object p2

    .line 46
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/ex/chips/SingleRecipientArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ex/chips/RecipientEntry;

    invoke-direct {p0, p2, v1, v0}, Lcom/android/ex/chips/SingleRecipientArrayAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Lcom/android/ex/chips/RecipientEntry;)V

    .line 47
    return-object p2
.end method

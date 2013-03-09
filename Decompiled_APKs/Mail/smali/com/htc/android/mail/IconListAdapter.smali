.class public Lcom/htc/android/mail/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/IconListAdapter$IconListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/android/mail/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final mResource:I = 0x7f03001c


# instance fields
.field TAG:Ljava/lang/String;

.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 29
    const v0, 0x7f03001c

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 19
    const-string v0, "IconListAdapter"

    iput-object v0, p0, Lcom/htc/android/mail/IconListAdapter;->TAG:Ljava/lang/String;

    .line 30
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/mail/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/IconListAdapter$IconListItem;>;"
    const v0, 0x7f03001c

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 19
    const-string v0, "IconListAdapter"

    iput-object v0, p0, Lcom/htc/android/mail/IconListAdapter;->TAG:Ljava/lang/String;

    .line 26
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/mail/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 38
    if-nez p2, :cond_0

    .line 39
    iget-object v3, p0, Lcom/htc/android/mail/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03001c

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 45
    .local v2, view:Landroid/view/View;
    :goto_0
    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 46
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/IconListAdapter$IconListItem;

    invoke-virtual {v3}, Lcom/htc/android/mail/IconListAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 50
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/IconListAdapter$IconListItem;

    invoke-virtual {v3}, Lcom/htc/android/mail/IconListAdapter$IconListItem;->getResource()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    return-object v2

    .line 41
    .end local v0           #image:Landroid/widget/ImageView;
    .end local v1           #text:Landroid/widget/TextView;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method

.class public Lcom/htc/android/locationpicker/IconListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final mResource:I = 0x7f030002


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;


# direct methods
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
            "Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, items:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;>;"
    const v0, 0x7f030002

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 21
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/android/locationpicker/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 30
    if-nez p2, :cond_0

    .line 31
    iget-object v3, p0, Lcom/htc/android/locationpicker/IconListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 37
    .local v2, view:Landroid/view/View;
    :goto_0
    const v3, 0x7f09000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    .line 38
    .local v1, text:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {p0, p1}, Lcom/htc/android/locationpicker/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;

    invoke-virtual {v3}, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 39
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 41
    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemColorIcon;

    .line 42
    .local v0, image:Lcom/htc/widget/HtcListItemColorIcon;
    invoke-virtual {p0, p1}, Lcom/htc/android/locationpicker/IconListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;

    invoke-virtual {v3}, Lcom/htc/android/locationpicker/IconListAdapter$IconListItem;->getIconID()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 44
    return-object v2

    .line 34
    .end local v0           #image:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v1           #text:Lcom/htc/widget/HtcListItem2LineText;
    .end local v2           #view:Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2       #view:Landroid/view/View;
    goto :goto_0
.end method

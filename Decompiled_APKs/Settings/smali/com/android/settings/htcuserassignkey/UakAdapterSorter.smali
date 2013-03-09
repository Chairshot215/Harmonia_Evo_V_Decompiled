.class public Lcom/android/settings/htcuserassignkey/UakAdapterSorter;
.super Ljava/lang/Object;
.source "UakAdapterSorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;",
        ">;"
    }
.end annotation


# static fields
.field static final SORT_BY_DATE:I = 0x1

.field static final SORT_BY_NAME:I = 0x0

.field static final SORT_BY_TYPE:I = 0x2

.field static final SORT_ORDER_ASCENDING:I = 0x0

.field static final SORT_ORDER_DESCENDING:I = 0x1


# instance fields
.field private itemIsAdded:Z

.field private mSortBy:I

.field private mSortOrder:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;)I
    .locals 5
    .parameter "item1"
    .parameter "item2"

    .prologue
    .line 42
    iget v3, p0, Lcom/android/settings/htcuserassignkey/UakAdapterSorter;->mSortBy:I

    packed-switch v3, :pswitch_data_0

    .line 59
    const/4 v2, 0x0

    :cond_0
    :goto_0
    return v2

    .line 44
    :pswitch_0
    iget-object v3, p1, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, item1Name:Ljava/lang/String;
    iget-object v3, p2, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;->text:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, item2Name:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 49
    .local v2, result:I
    iget v3, p0, Lcom/android/settings/htcuserassignkey/UakAdapterSorter;->mSortOrder:I

    if-eqz v3, :cond_0

    .line 52
    iget v3, p0, Lcom/android/settings/htcuserassignkey/UakAdapterSorter;->mSortOrder:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 53
    mul-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    check-cast p1, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    .end local p1
    check-cast p2, Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/htcuserassignkey/UakAdapterSorter;->compare(Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;)I

    move-result v0

    return v0
.end method

.method public setSortBy(I)V
    .locals 0
    .parameter "sortby"

    .prologue
    .line 67
    iput p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapterSorter;->mSortBy:I

    .line 68
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .parameter "order"

    .prologue
    .line 63
    iput p1, p0, Lcom/android/settings/htcuserassignkey/UakAdapterSorter;->mSortOrder:I

    .line 64
    return-void
.end method

.method public sort(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, oldList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;>;"
    const/4 v1, 0x0

    new-array v0, v1, [Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    .line 35
    .local v0, array:[Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #array:[Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    check-cast v0, [Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;

    .line 36
    .restart local v0       #array:[Lcom/android/settings/htcuserassignkey/UakAdapter$ListItem;
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 37
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

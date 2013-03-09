.class public Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$ArrayFilterResults;
.super Landroid/widget/Filter$FilterResults;
.source "FilterableGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ArrayFilterResults"
.end annotation


# instance fields
.field public arrayValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$WrapperFilterResults;",
            ">;"
        }
    .end annotation
.end field

.field public count:I

.field public values:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$ArrayFilterResults;->count:I

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$ArrayFilterResults;->arrayValues:Ljava/util/ArrayList;

    .line 163
    return-void
.end method

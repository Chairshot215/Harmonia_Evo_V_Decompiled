.class public Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$WrapperFilterResults;
.super Ljava/lang/Object;
.source "FilterableGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "WrapperFilterResults"
.end annotation


# instance fields
.field public hashCode:I

.field public results:Landroid/widget/Filter$FilterResults;


# direct methods
.method public constructor <init>(ILandroid/widget/Filter$FilterResults;)V
    .locals 0
    .parameter "hashCode"
    .parameter "results"

    .prologue
    .line 173
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput p1, p0, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$WrapperFilterResults;->hashCode:I

    .line 175
    iput-object p2, p0, Lcom/android/htccontacts/widget/FilterableGroupListAdapter$ArrayFilters$WrapperFilterResults;->results:Landroid/widget/Filter$FilterResults;

    .line 176
    return-void
.end method

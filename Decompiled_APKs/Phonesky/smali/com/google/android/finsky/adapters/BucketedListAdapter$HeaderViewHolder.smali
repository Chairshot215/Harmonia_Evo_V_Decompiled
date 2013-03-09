.class Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "BucketedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/BucketedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field public bucketHeader:Landroid/view/View;

.field public corpusStrip:Landroid/view/View;

.field public searchResultsView:Landroid/widget/TextView;

.field public sectionHeader:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/adapters/BucketedListAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter$HeaderViewHolder;-><init>()V

    return-void
.end method

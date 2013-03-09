.class Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;
.super Ljava/lang/Object;
.source "BucketedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/BucketedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentViewHolder"
.end annotation


# instance fields
.field public artistLayer:Lcom/google/android/finsky/layout/ArtistBucketEntry;

.field public artistStub:Landroid/view/ViewStub;

.field public genericLayer:Lcom/google/android/finsky/layout/OverviewBucketEntry;

.field public magazineLayer:Lcom/google/android/finsky/layout/MagazineBucketEntry;

.field public magazineStub:Landroid/view/ViewStub;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/finsky/adapters/BucketedListAdapter$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/android/finsky/adapters/BucketedListAdapter$DocumentViewHolder;-><init>()V

    return-void
.end method

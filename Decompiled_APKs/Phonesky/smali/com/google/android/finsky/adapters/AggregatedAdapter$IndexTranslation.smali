.class Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;
.super Ljava/lang/Object;
.source "AggregatedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/adapters/AggregatedAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IndexTranslation"
.end annotation


# instance fields
.field private targetAdapter:Landroid/widget/ListAdapter;

.field private translatedIndex:I


# direct methods
.method private constructor <init>(Landroid/widget/ListAdapter;I)V
    .locals 0
    .parameter "targetAdapter"
    .parameter "translatedIndex"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;

    .line 61
    iput p2, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListAdapter;ILcom/google/android/finsky/adapters/AggregatedAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;-><init>(Landroid/widget/ListAdapter;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->translatedIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/finsky/adapters/AggregatedAdapter$IndexTranslation;->targetAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

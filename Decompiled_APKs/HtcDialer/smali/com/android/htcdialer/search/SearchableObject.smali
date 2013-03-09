.class public Lcom/android/htcdialer/search/SearchableObject;
.super Ljava/lang/Object;
.source "SearchableObject.java"


# instance fields
.field public object:Ljava/lang/Object;

.field public phoneIndex:I

.field public sectionIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5
    sget v0, Lcom/android/htcdialer/search/DialerIndexer;->INDEX_ANONYMOUS:I

    iput v0, p0, Lcom/android/htcdialer/search/SearchableObject;->sectionIndex:I

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/htcdialer/search/SearchableObject;->phoneIndex:I

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htcdialer/search/SearchableObject;->object:Ljava/lang/Object;

    .line 11
    return-void
.end method

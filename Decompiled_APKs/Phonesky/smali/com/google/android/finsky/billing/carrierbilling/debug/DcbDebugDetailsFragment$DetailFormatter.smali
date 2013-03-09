.class Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$DetailFormatter;
.super Ljava/lang/Object;
.source "DcbDebugDetailsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DetailFormatter"
.end annotation


# instance fields
.field private final mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;)V
    .locals 2
    .parameter "detail"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDetail;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$DetailFormatter;->mString:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/finsky/billing/carrierbilling/debug/DcbDebugDetailsFragment$DetailFormatter;->mString:Ljava/lang/String;

    return-object v0
.end method

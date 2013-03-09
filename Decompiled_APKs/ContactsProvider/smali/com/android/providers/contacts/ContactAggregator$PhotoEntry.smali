.class Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;
.super Ljava/lang/Object;
.source "ContactAggregator.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/ContactAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhotoEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final fileSize:I

.field final pixelCount:I

.field final synthetic this$0:Lcom/android/providers/contacts/ContactAggregator;


# direct methods
.method private constructor <init>(Lcom/android/providers/contacts/ContactAggregator;II)V
    .locals 0
    .parameter
    .parameter "pixelCount"
    .parameter "fileSize"

    .prologue
    .line 3122
    iput-object p1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->this$0:Lcom/android/providers/contacts/ContactAggregator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3123
    iput p2, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    .line 3124
    iput p3, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->fileSize:I

    .line 3125
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/contacts/ContactAggregator;IILcom/android/providers/contacts/ContactAggregator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 3115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;-><init>(Lcom/android/providers/contacts/ContactAggregator;II)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;)I
    .locals 2
    .parameter "pe"

    .prologue
    .line 3129
    if-nez p1, :cond_0

    .line 3130
    const/4 v0, -0x1

    .line 3135
    :goto_0
    return v0

    .line 3132
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    iget v1, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    if-ne v0, v1, :cond_1

    .line 3133
    iget v0, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->fileSize:I

    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->fileSize:I

    sub-int/2addr v0, v1

    goto :goto_0

    .line 3135
    :cond_1
    iget v0, p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    iget v1, p0, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->pixelCount:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 3115
    check-cast p1, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;->compareTo(Lcom/android/providers/contacts/ContactAggregator$PhotoEntry;)I

    move-result v0

    return v0
.end method

.class public Lcom/google/android/gm/LabelDisplayer$LabelValues;
.super Ljava/lang/Object;
.source "LabelDisplayer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/LabelDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LabelValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gm/LabelDisplayer$LabelValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final backgroundColor:I

.field public final colorId:Ljava/lang/String;

.field public final labelId:J

.field public final name:Ljava/lang/String;

.field public final textColor:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .parameter "labelId"
    .parameter "colorId"
    .parameter "name"
    .parameter "backgroundColor"
    .parameter "textColor"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p1, p0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->labelId:J

    .line 41
    iput-object p3, p0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->colorId:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    .line 43
    iput p5, p0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->backgroundColor:I

    .line 44
    iput p6, p0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->textColor:I

    .line 45
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/gm/LabelDisplayer$LabelValues;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/gm/LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gm/LabelDisplayer$LabelValues;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    check-cast p1, Lcom/google/android/gm/LabelDisplayer$LabelValues;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gm/LabelDisplayer$LabelValues;->compareTo(Lcom/google/android/gm/LabelDisplayer$LabelValues;)I

    move-result v0

    return v0
.end method

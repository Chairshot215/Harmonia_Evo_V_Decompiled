.class Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;
.super Lcom/google/android/gm/LabelDisplayer;
.source "ConversationViewHeader.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationViewHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationViewLabelDisplayer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/LabelDisplayer;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/google/android/gm/LabelDisplayer$LabelValues;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gm/LabelDisplayer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/ConversationViewHeader$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/android/gm/LabelDisplayer$LabelValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/gm/ConversationViewHeader$ConversationViewLabelDisplayer;->mLabelValuesSortedSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

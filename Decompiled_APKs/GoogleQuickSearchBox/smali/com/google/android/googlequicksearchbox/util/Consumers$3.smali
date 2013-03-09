.class final Lcom/google/android/googlequicksearchbox/util/Consumers$3;
.super Ljava/lang/Object;
.source "Consumers.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/util/Consumers;->createMutlipleConsumer([Ljava/lang/Object;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<TA;>;"
    }
.end annotation


# instance fields
.field private mConsumed:I

.field private mValues:[Ljava/lang/Object;

.field final synthetic val$finalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$values:[Ljava/lang/Object;


# direct methods
.method constructor <init>([Ljava/lang/Object;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->val$values:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->val$finalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->val$values:[Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mValues:[Ljava/lang/Object;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mConsumed:I

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .local p1, value:Ljava/lang/Object;,"TA;"
    const/4 v1, 0x1

    .line 61
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mConsumed:I

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mValues:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 62
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mConsumed:I

    aput-object p1, v0, v2

    .line 63
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mConsumed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mConsumed:I

    .line 64
    iget v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mConsumed:I

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mValues:[Ljava/lang/Object;

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->val$finalConsumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$3;->mValues:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-interface {v1, v0}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    move-result v1

    .line 67
    :cond_0
    return v1

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

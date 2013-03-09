.class final Lcom/google/android/googlequicksearchbox/util/Consumers$2;
.super Ljava/lang/Object;
.source "Consumers.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/util/Consumers;->createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;
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
.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$2;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$2;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, value:Ljava/lang/Object;,"TA;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$2;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/util/Consumers$2;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-static {v0, v1, p1}, Lcom/google/android/googlequicksearchbox/util/Consumers;->consumeAsync(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

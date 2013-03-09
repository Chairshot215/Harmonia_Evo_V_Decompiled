.class public Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;
.super Ljava/lang/Object;
.source "NoOpConsumer.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;,"Lcom/google/android/googlequicksearchbox/util/NoOpConsumer<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/NoOpConsumer;,"Lcom/google/android/googlequicksearchbox/util/NoOpConsumer<TA;>;"
    .local p1, result:Ljava/lang/Object;,"TA;"
    const/4 v0, 0x0

    return v0
.end method

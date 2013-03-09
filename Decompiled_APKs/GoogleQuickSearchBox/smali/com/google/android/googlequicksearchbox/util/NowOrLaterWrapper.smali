.class public abstract Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;
.super Ljava/lang/Object;
.source "NowOrLaterWrapper.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/NowOrLater;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
        "<TB;>;"
    }
.end annotation


# instance fields
.field private final mWrapped:Lcom/google/android/googlequicksearchbox/util/NowOrLater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/util/NowOrLater;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/NowOrLater",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;,"Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper<TA;TB;>;"
    .local p1, wrapped:Lcom/google/android/googlequicksearchbox/util/NowOrLater;,"Lcom/google/android/googlequicksearchbox/util/NowOrLater<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    .line 27
    return-void
.end method


# virtual methods
.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TB;"
        }
    .end annotation
.end method

.method public getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<-TB;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;,"Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper<TA;TB;>;"
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<-TB;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    new-instance v1, Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper$1;-><init>(Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    invoke-interface {v0, v1}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->getLater(Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 34
    return-void
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;,"Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper<TA;TB;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->getNow()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public haveNow()Z
    .locals 1

    .prologue
    .line 41
    .local p0, this:Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;,"Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper<TA;TB;>;"
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/util/NowOrLaterWrapper;->mWrapped:Lcom/google/android/googlequicksearchbox/util/NowOrLater;

    invoke-interface {v0}, Lcom/google/android/googlequicksearchbox/util/NowOrLater;->haveNow()Z

    move-result v0

    return v0
.end method

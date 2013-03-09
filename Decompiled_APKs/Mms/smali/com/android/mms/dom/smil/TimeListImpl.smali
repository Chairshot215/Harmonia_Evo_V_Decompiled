.class public Lcom/android/mms/dom/smil/TimeListImpl;
.super Ljava/lang/Object;
.source "TimeListImpl.java"

# interfaces
.implements Lorg/w3c/dom/smil/TimeList;


# instance fields
.field private final mTimes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/Time;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/Time;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, times:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/mms/dom/smil/TimeListImpl;->mTimes:Ljava/util/ArrayList;

    .line 33
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/dom/smil/TimeListImpl;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public item(I)Lorg/w3c/dom/smil/Time;
    .locals 3
    .parameter "index"

    .prologue
    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, time:Lorg/w3c/dom/smil/Time;
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/dom/smil/TimeListImpl;->mTimes:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/smil/Time;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v1

    .line 47
    :catch_0
    move-exception v2

    goto :goto_0
.end method

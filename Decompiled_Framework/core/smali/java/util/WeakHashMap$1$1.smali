.class Ljava/util/WeakHashMap$1$1;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/WeakHashMap$Entry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/WeakHashMap$Entry$Type",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/WeakHashMap$1;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap$1;)V
    .locals 0

    iput-object p1, p0, Ljava/util/WeakHashMap$1$1;->this$1:Ljava/util/WeakHashMap$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic get(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap$1$1;->get(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    return-object p1
.end method

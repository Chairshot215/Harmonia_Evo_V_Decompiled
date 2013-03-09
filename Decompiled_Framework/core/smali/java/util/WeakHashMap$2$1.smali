.class Ljava/util/WeakHashMap$2$1;
.super Ljava/lang/Object;
.source "WeakHashMap.java"

# interfaces
.implements Ljava/util/WeakHashMap$Entry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/WeakHashMap$2;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/WeakHashMap$Entry$Type",
        "<TK;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/WeakHashMap$2;


# direct methods
.method constructor <init>(Ljava/util/WeakHashMap$2;)V
    .locals 0

    iput-object p1, p0, Ljava/util/WeakHashMap$2$1;->this$1:Ljava/util/WeakHashMap$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/Map$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

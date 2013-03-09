.class Ljava/util/Collections$SingletonMap$1$1$1;
.super Ljava/util/MapEntry;
.source "Collections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Collections$SingletonMap$1$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/MapEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Ljava/util/Collections$SingletonMap$1$1;


# direct methods
.method constructor <init>(Ljava/util/Collections$SingletonMap$1$1;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljava/util/Collections$SingletonMap$1$1$1;->this$2:Ljava/util/Collections$SingletonMap$1$1;

    invoke-direct {p0, p2, p3}, Ljava/util/MapEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

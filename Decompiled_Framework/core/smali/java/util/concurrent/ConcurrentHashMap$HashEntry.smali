.class final Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HashEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hash:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILjava/util/concurrent/ConcurrentHashMap$HashEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->key:Ljava/lang/Object;

    iput p2, p0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->hash:I

    iput-object p3, p0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->next:Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    iput-object p4, p0, Ljava/util/concurrent/ConcurrentHashMap$HashEntry;->value:Ljava/lang/Object;

    return-void
.end method

.method static final newArray(I)[Ljava/util/concurrent/ConcurrentHashMap$HashEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)[",
            "Ljava/util/concurrent/ConcurrentHashMap$HashEntry",
            "<TK;TV;>;"
        }
    .end annotation

    new-array v0, p0, [Ljava/util/concurrent/ConcurrentHashMap$HashEntry;

    return-object v0
.end method

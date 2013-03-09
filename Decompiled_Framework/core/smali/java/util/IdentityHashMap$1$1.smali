.class Ljava/util/IdentityHashMap$1$1;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/IdentityHashMap$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<TK;TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Ljava/util/IdentityHashMap$1;


# direct methods
.method constructor <init>(Ljava/util/IdentityHashMap$1;)V
    .locals 0

    iput-object p1, p0, Ljava/util/IdentityHashMap$1$1;->this$1:Ljava/util/IdentityHashMap$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/MapEntry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry",
            "<TK;TV;>;)TK;"
        }
    .end annotation

    iget-object v0, p1, Ljava/util/MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

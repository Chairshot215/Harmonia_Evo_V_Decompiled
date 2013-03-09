.class final Ljava/util/LinkedHashMap$KeyIterator;
.super Ljava/util/LinkedHashMap$LinkedHashIterator;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;TV;>.",
        "LinkedHashIterator",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/LinkedHashMap;


# direct methods
.method private constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 1

    iput-object p1, p0, Ljava/util/LinkedHashMap$KeyIterator;->this$0:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/LinkedHashMap$LinkedHashIterator;-><init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$1;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap$KeyIterator;-><init>(Ljava/util/LinkedHashMap;)V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/LinkedHashMap$KeyIterator;->nextEntry()Ljava/util/LinkedHashMap$LinkedEntry;

    move-result-object v0

    iget-object v0, v0, Ljava/util/HashMap$HashMapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

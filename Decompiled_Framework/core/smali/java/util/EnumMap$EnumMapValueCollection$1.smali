.class Ljava/util/EnumMap$EnumMapValueCollection$1;
.super Ljava/lang/Object;
.source "EnumMap.java"

# interfaces
.implements Ljava/util/MapEntry$Type;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/EnumMap$EnumMapValueCollection;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/MapEntry$Type",
        "<TVT;TKT;TVT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/EnumMap$EnumMapValueCollection;


# direct methods
.method constructor <init>(Ljava/util/EnumMap$EnumMapValueCollection;)V
    .locals 0

    iput-object p1, p0, Ljava/util/EnumMap$EnumMapValueCollection$1;->this$0:Ljava/util/EnumMap$EnumMapValueCollection;

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
            "<TKT;TVT;>;)TVT;"
        }
    .end annotation

    iget-object v0, p1, Ljava/util/MapEntry;->value:Ljava/lang/Object;

    return-object v0
.end method

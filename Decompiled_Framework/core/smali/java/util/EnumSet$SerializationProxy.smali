.class Ljava/util/EnumSet$SerializationProxy;
.super Ljava/lang/Object;
.source "EnumSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/EnumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum",
        "<TE;>;>",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x507d3db7654cad1L


# instance fields
.field private elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private elements:[Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/EnumSet$SerializationProxy;-><init>()V

    return-void
.end method

.method static synthetic access$102(Ljava/util/EnumSet$SerializationProxy;[Ljava/lang/Enum;)[Ljava/lang/Enum;
    .locals 0

    iput-object p1, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    return-object p1
.end method

.method static synthetic access$202(Ljava/util/EnumSet$SerializationProxy;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    iput-object p1, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    return-object p1
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 6

    iget-object v5, p0, Ljava/util/EnumSet$SerializationProxy;->elementType:Ljava/lang/Class;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    iget-object v0, p0, Ljava/util/EnumSet$SerializationProxy;->elements:[Ljava/lang/Enum;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v4, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

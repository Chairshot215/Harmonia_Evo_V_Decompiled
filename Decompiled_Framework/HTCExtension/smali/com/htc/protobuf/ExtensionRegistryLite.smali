.class public Lcom/htc/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;
    }
.end annotation


# static fields
.field private static final EMPTY:Lcom/htc/protobuf/ExtensionRegistryLite;


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/htc/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Lcom/htc/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/htc/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/htc/protobuf/ExtensionRegistryLite;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/htc/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/htc/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/htc/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    goto :goto_0
.end method

.method private constructor <init>(Z)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    return-void
.end method

.method public static getEmptyRegistry()Lcom/htc/protobuf/ExtensionRegistryLite;
    .locals 1

    sget-object v0, Lcom/htc/protobuf/ExtensionRegistryLite;->EMPTY:Lcom/htc/protobuf/ExtensionRegistryLite;

    return-object v0
.end method

.method public static newInstance()Lcom/htc/protobuf/ExtensionRegistryLite;
    .locals 1

    new-instance v0, Lcom/htc/protobuf/ExtensionRegistryLite;

    invoke-direct {v0}, Lcom/htc/protobuf/ExtensionRegistryLite;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final add(Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/htc/protobuf/MessageLite;

    move-result-object v2

    invoke-virtual {p1}, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public findLiteExtensionByNumber(Lcom/htc/protobuf/MessageLite;I)Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/htc/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TContainingType;*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/htc/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/GeneratedMessageLite$GeneratedExtension;

    return-object v0
.end method

.method public getUnmodifiable()Lcom/htc/protobuf/ExtensionRegistryLite;
    .locals 1

    new-instance v0, Lcom/htc/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, p0}, Lcom/htc/protobuf/ExtensionRegistryLite;-><init>(Lcom/htc/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method

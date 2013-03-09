.class final Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/ExtensionRegistryLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectIntPair"
.end annotation


# instance fields
.field private final number:I

.field private final object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    iput p2, p0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;

    iget-object v2, p0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    iget-object v3, v0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    iget v3, v0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;->object:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    const v1, 0xffff

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/protobuf/ExtensionRegistryLite$ObjectIntPair;->number:I

    add-int/2addr v0, v1

    return v0
.end method

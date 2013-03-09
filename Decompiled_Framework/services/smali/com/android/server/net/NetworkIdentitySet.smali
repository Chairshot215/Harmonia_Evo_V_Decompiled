.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Landroid/net/NetworkIdentity;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    new-instance v8, Ljava/net/ProtocolException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unexpected version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v8

    :pswitch_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    new-instance v8, Landroid/net/NetworkIdentity;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v4, v5, v9}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Z)V

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    invoke-static {p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v2

    new-instance v8, Landroid/net/NetworkIdentity;

    invoke-direct {v8, v6, v4, v5, v2}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Z)V

    invoke-virtual {p0, v8}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto :goto_0
.end method


# virtual methods
.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.class public Landroid/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/KeyStore$State;
    }
.end annotation


# static fields
.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field public static final NO_ERROR:I = 0x1

.field public static final PERMISSION_DENIED:I = 0x6

.field public static final PROTOCOL_ERROR:I = 0x5

.field public static final SYSTEM_ERROR:I = 0x4

.field public static final UNDEFINED_ACTION:I = 0x9

.field public static final UNINITIALIZED:I = 0x3

.field public static final VALUE_CORRUPTED:I = 0x8

.field public static final WRONG_PASSWORD:I = 0xa

.field private static final sAddress:Landroid/net/LocalSocketAddress;


# instance fields
.field private mError:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string/jumbo v1, "keystore"

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v1, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    sput-object v0, Landroid/security/KeyStore;->sAddress:Landroid/net/LocalSocketAddress;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/KeyStore;->mError:I

    return-void
.end method

.method private contains([B)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x65

    new-array v3, v0, [[B

    aput-object p1, v3, v1

    invoke-direct {p0, v2, v3}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private delete([B)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x64

    new-array v3, v0, [[B

    aput-object p1, v3, v1

    invoke-direct {p0, v2, v3}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private varargs execute(I[[B)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[B)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/4 v11, 0x5

    iput v11, p0, Landroid/security/KeyStore;->mError:I

    move-object v0, p2

    array-length v5, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v7, v0, v2

    if-eqz v7, :cond_0

    array-length v11, v7

    const v12, 0xffff

    if-le v11, v12, :cond_1

    :cond_0
    const/4 v10, 0x0

    :goto_1
    return-object v10

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/net/LocalSocket;

    invoke-direct {v8}, Landroid/net/LocalSocket;-><init>()V

    :try_start_0
    sget-object v11, Landroid/security/KeyStore;->sAddress:Landroid/net/LocalSocketAddress;

    invoke-virtual {v8, v11}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/io/OutputStream;->write(I)V

    move-object v0, p2

    array-length v5, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v7, v0, v2

    array-length v11, v7

    shr-int/lit8 v11, v11, 0x8

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write(I)V

    array-length v11, v7

    invoke-virtual {v6, v11}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v8}, Landroid/net/LocalSocket;->shutdownOutput()V

    invoke-virtual {v8}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 v11, 0x1

    if-eq p1, v11, :cond_5

    const/4 v11, -0x1

    if-eq p1, v11, :cond_4

    iput p1, p0, Landroid/security/KeyStore;->mError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v11

    goto :goto_1

    :cond_5
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v11, -0x1

    if-ne v1, v11, :cond_6

    const/4 v11, 0x1

    iput v11, p0, Landroid/security/KeyStore;->mError:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_7

    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_7
    shl-int/lit8 v11, v1, 0x8

    or-int/2addr v11, v4

    :try_start_6
    new-array v9, v11, [B

    const/4 v1, 0x0

    :goto_4
    array-length v11, v9

    if-ge v1, v11, :cond_9

    array-length v11, v9

    sub-int/2addr v11, v1

    invoke-virtual {v3, v9, v1, v11}, Ljava/io/InputStream;->read([BII)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v4

    const/4 v11, -0x1

    if-ne v4, v11, :cond_8

    const/4 v10, 0x0

    :try_start_7
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1

    :cond_8
    add-int/2addr v1, v4

    goto :goto_4

    :cond_9
    :try_start_8
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    :catch_1
    move-exception v11

    :try_start_9
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :goto_5
    const/4 v10, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v11

    :try_start_a
    invoke-virtual {v8}, Landroid/net/LocalSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :goto_6
    throw v11

    :catch_2
    move-exception v11

    goto :goto_5

    :catch_3
    move-exception v12

    goto :goto_6
.end method

.method private get([B)[B
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x67

    const/4 v2, 0x1

    new-array v2, v2, [[B

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_0
.end method

.method private static getBytes(Ljava/lang/String;)[B
    .locals 1

    sget-object v0, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Landroid/security/KeyStore;
    .locals 1

    new-instance v0, Landroid/security/KeyStore;

    invoke-direct {v0}, Landroid/security/KeyStore;-><init>()V

    return-object v0
.end method

.method private password([B)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x70

    new-array v3, v0, [[B

    aput-object p1, v3, v1

    invoke-direct {p0, v2, v3}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private put([B[B)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x69

    const/4 v3, 0x2

    new-array v3, v3, [[B

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-direct {p0, v2, v3}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static toString([B)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private unlock([B)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x75

    new-array v3, v0, [[B

    aput-object p1, v3, v1

    invoke-direct {p0, v2, v3}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/KeyStore;->contains([B)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/KeyStore;->delete([B)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)[B
    .locals 1

    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/KeyStore;->get([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLastError()I
    .locals 1

    iget v0, p0, Landroid/security/KeyStore;->mError:I

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x7a

    new-array v2, v0, [[B

    invoke-direct {p0, v1, v2}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v1, p0, Landroid/security/KeyStore;->mError:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public lock()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x6c

    new-array v3, v1, [[B

    invoke-direct {p0, v2, v3}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public password(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/KeyStore;->password([B)Z

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 1

    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/security/KeyStore;->put([B[B)Z

    move-result v0

    return v0
.end method

.method public reset()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x72

    new-array v3, v1, [[B

    invoke-direct {p0, v2, v3}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v2, p0, Landroid/security/KeyStore;->mError:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public saw(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/security/KeyStore;->saw([B)[[B

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    array-length v3, v2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Landroid/security/KeyStore;->toString([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public saw([B)[[B
    .locals 4

    const/16 v1, 0x73

    const/4 v2, 0x1

    new-array v2, v2, [[B

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {p0, v1, v2}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    check-cast v1, [[B

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[B

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    goto :goto_0
.end method

.method public state()Landroid/security/KeyStore$State;
    .locals 2

    const/16 v0, 0x74

    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-direct {p0, v0, v1}, Landroid/security/KeyStore;->execute(I[[B)Ljava/util/ArrayList;

    iget v0, p0, Landroid/security/KeyStore;->mError:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p0, Landroid/security/KeyStore;->mError:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    sget-object v0, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    goto :goto_0

    :pswitch_2
    sget-object v0, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/security/KeyStore;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/KeyStore;->unlock([B)Z

    move-result v0

    return v0
.end method

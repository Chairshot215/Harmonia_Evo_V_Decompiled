.class public final Ljavax/crypto/spec/PSource$PSpecified;
.super Ljavax/crypto/spec/PSource;
.source "PSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/crypto/spec/PSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PSpecified"
.end annotation


# static fields
.field public static final DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;


# instance fields
.field private final p:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {v0}, Ljavax/crypto/spec/PSource$PSpecified;-><init>()V

    sput-object v0, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "PSpecified"

    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "PSpecified"

    invoke-direct {p0, v0}, Ljavax/crypto/spec/PSource;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    iget-object v0, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getValue()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    iget-object v2, p0, Ljavax/crypto/spec/PSource$PSpecified;->p:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

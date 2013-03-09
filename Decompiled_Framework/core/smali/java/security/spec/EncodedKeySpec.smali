.class public abstract Ljava/security/spec/EncodedKeySpec;
.super Ljava/lang/Object;
.source "EncodedKeySpec.java"

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private final encodedKey:[B


# direct methods
.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    iget-object v0, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    array-length v1, v1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    array-length v1, v1

    new-array v0, v1, [B

    iget-object v1, p0, Ljava/security/spec/EncodedKeySpec;->encodedKey:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public abstract getFormat()Ljava/lang/String;
.end method

.class public final Ljavax/obex/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private final mPassword:[B

.field private mUserName:[B


# direct methods
.method public constructor <init>([B[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/obex/PasswordAuthentication;->mUserName:[B

    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->mUserName:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/obex/PasswordAuthentication;->mPassword:[B

    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->mPassword:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getPassword()[B
    .locals 1

    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->mPassword:[B

    return-object v0
.end method

.method public getUserName()[B
    .locals 1

    iget-object v0, p0, Ljavax/obex/PasswordAuthentication;->mUserName:[B

    return-object v0
.end method

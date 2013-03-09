.class public Ljava/util/IllegalFormatCodePointException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatCodePointException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x12325b6L


# instance fields
.field private final c:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    iput p1, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    return-void
.end method


# virtual methods
.method public getCodePoint()I
    .locals 1

    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/util/IllegalFormatCodePointException;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Ljava/util/IllegalFormatWidthException;
.super Ljava/util/IllegalFormatException;
.source "IllegalFormatWidthException.java"


# static fields
.field private static final serialVersionUID:J = 0xfe39a6L


# instance fields
.field private final w:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    iput p1, p0, Ljava/util/IllegalFormatWidthException;->w:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ljava/util/IllegalFormatWidthException;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Ljava/util/IllegalFormatWidthException;->w:I

    return v0
.end method

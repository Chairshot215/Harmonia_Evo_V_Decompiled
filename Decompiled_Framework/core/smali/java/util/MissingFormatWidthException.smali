.class public Ljava/util/MissingFormatWidthException;
.super Ljava/util/IllegalFormatException;
.source "MissingFormatWidthException.java"


# static fields
.field private static final serialVersionUID:J = 0xed6dbbL


# instance fields
.field private final s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFormatSpecifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/MissingFormatWidthException;->s:Ljava/lang/String;

    return-object v0
.end method

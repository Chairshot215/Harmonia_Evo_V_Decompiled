.class public Ljava/util/DuplicateFormatFlagsException;
.super Ljava/util/IllegalFormatException;
.source "DuplicateFormatFlagsException.java"


# static fields
.field private static final serialVersionUID:J = 0x1203f23L


# instance fields
.field private final flags:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/IllegalFormatException;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFlags()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/util/DuplicateFormatFlagsException;->flags:Ljava/lang/String;

    return-object v0
.end method

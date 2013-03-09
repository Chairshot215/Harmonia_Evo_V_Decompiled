.class public Ljavax/crypto/spec/PSource;
.super Ljava/lang/Object;
.source "PSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/spec/PSource$PSpecified;
    }
.end annotation


# instance fields
.field private pSrcName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljavax/crypto/spec/PSource;->pSrcName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/crypto/spec/PSource;->pSrcName:Ljava/lang/String;

    return-object v0
.end method

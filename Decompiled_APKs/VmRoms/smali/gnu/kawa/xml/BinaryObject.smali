.class public abstract Lgnu/kawa/xml/BinaryObject;
.super Ljava/lang/Object;
.source "BinaryObject.java"


# instance fields
.field data:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lgnu/kawa/xml/BinaryObject;->data:[B

    return-object v0
.end method

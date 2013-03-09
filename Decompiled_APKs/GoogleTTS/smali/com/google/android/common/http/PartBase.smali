.class public abstract Lcom/google/android/common/http/PartBase;
.super Lcom/google/android/common/http/Part;
.source "PartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/common/http/PartBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/android/common/http/PartBase;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/android/common/http/PartBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/common/http/PartBase;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

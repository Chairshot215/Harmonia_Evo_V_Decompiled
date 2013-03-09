.class public Lcom/google/wireless/gdata2/data/batch/BatchStatus;
.super Ljava/lang/Object;
.source "BatchStatus.java"


# instance fields
.field private statusCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchStatus;->statusCode:I

    return v0
.end method

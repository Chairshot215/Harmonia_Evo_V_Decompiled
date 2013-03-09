.class public Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;
.super Ljava/lang/Object;
.source "BatchInterrupted.java"


# instance fields
.field private reason:Ljava/lang/String;


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
.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/wireless/gdata2/data/batch/BatchInterrupted;->reason:Ljava/lang/String;

    return-object v0
.end method

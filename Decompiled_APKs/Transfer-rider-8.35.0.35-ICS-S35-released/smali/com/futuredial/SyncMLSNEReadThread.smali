.class public Lcom/futuredial/SyncMLSNEReadThread;
.super Lcom/futuredial/SyncML12ReadThread;
.source "SyncMLSNEReadThread.java"


# direct methods
.method public constructor <init>(Lcom/futuredial/publicobj/TaskParameter;)V
    .locals 0
    .parameter "tParam"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/futuredial/SyncML12ReadThread;-><init>(Lcom/futuredial/publicobj/TaskParameter;)V

    .line 12
    return-void
.end method


# virtual methods
.method protected GetSyncMLObject()Lcom/futuredial/syncml/SyncML_NOK;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/futuredial/syncml/SyncML_SNE;

    invoke-direct {v0}, Lcom/futuredial/syncml/SyncML_SNE;-><init>()V

    return-object v0
.end method

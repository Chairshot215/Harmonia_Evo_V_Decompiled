.class public Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;
.super Ljava/lang/Object;
.source "TempProviderSyncResult.java"


# instance fields
.field public tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;->tempContentProvider:Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 35
    return-void
.end method

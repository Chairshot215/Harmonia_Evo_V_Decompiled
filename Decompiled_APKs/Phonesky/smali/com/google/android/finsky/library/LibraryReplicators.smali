.class public interface abstract Lcom/google/android/finsky/library/LibraryReplicators;
.super Ljava/lang/Object;
.source "LibraryReplicators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/library/LibraryReplicators$Listener;
    }
.end annotation


# virtual methods
.method public abstract addListener(Lcom/google/android/finsky/library/LibraryReplicators$Listener;)V
.end method

.method public abstract applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V
.end method

.method public abstract dumpState()V
.end method

.method public abstract reinitialize()V
.end method

.method public abstract replicateAccount(Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V
.end method

.method public abstract replicateAllAccounts(Ljava/lang/Runnable;Ljava/lang/String;)V
.end method

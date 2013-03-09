.class public interface abstract Lcom/google/android/syncadapters/EntryAndEntityHandler;
.super Ljava/lang/Object;
.source "EntryAndEntityHandler.java"


# virtual methods
.method public abstract applyEntryToEntity(Ljava/util/ArrayList;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Ljava/util/Set;Lcom/google/wireless/gdata2/data/Entry;Landroid/content/Entity;ZLandroid/content/SyncResult;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/accounts/Account;",
            "Landroid/content/ContentProviderClient;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/wireless/gdata2/data/Entry;",
            "Landroid/content/Entity;",
            "Z",
            "Landroid/content/SyncResult;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract convertEntityToEntry(Landroid/content/Entity;Landroid/accounts/Account;Landroid/content/ContentProviderClient;Z)Lcom/google/wireless/gdata2/data/Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/wireless/gdata2/parser/ParseException;,
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDeletedColumnName()Ljava/lang/String;
.end method

.method public abstract getDirtyColumnName()Ljava/lang/String;
.end method

.method public abstract getEditUriColumnName()Ljava/lang/String;
.end method

.method public abstract getEntityUri(Landroid/accounts/Account;)Landroid/net/Uri;
.end method

.method public abstract getEntryClass()Ljava/lang/Class;
.end method

.method public abstract getEtagColumnName()Ljava/lang/String;
.end method

.method public abstract getFeedForAccount(Landroid/accounts/Account;)Ljava/lang/String;
.end method

.method public abstract getSourceIdColumnName()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract idToSourceId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract newEntityIterator(Landroid/content/ContentProviderClient;Landroid/accounts/Account;Ljava/lang/Long;Ljava/lang/String;[Ljava/lang/String;)Landroid/content/EntityIterator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.class public Lcom/google/android/syncadapters/GDataSyncState;
.super Ljava/lang/Object;
.source "GDataSyncState.java"


# instance fields
.field public final feedData:Landroid/os/Bundle;

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataSyncState;->uri:Landroid/net/Uri;

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    .line 67
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .parameter "uri"
    .parameter "feedData"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/google/android/syncadapters/GDataSyncState;->uri:Landroid/net/Uri;

    .line 71
    iput-object p2, p0, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    .line 72
    return-void
.end method

.method public static create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/GDataSyncState;
    .locals 5
    .parameter "provider"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 127
    .local v2, values:Landroid/content/ContentValues;
    new-instance v0, Lcom/google/android/syncadapters/GDataSyncState;

    invoke-direct {v0}, Lcom/google/android/syncadapters/GDataSyncState;-><init>()V

    .line 128
    .local v0, syncState:Lcom/google/android/syncadapters/GDataSyncState;
    const-string v3, "data"

    invoke-static {v0}, Lcom/google/android/syncadapters/GDataSyncState;->toBytes(Lcom/google/android/syncadapters/GDataSyncState;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 129
    const-string v3, "account_name"

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v3, "account_type"

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    sget-object v3, Landroid/provider/ContactsContract$SyncState;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v2}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 132
    .local v1, uri:Landroid/net/Uri;
    new-instance v3, Lcom/google/android/syncadapters/GDataSyncState;

    iget-object v4, v0, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-direct {v3, v1, v4}, Lcom/google/android/syncadapters/GDataSyncState;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-object v3
.end method

.method private static fromBytes(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/GDataSyncState;
    .locals 3
    .parameter "uri"
    .parameter "syncStateData"

    .prologue
    const/4 v2, 0x0

    .line 94
    if-eqz p1, :cond_1

    .line 95
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, parcel:Landroid/os/Parcel;
    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 97
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 99
    :try_start_0
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const v2, -0x21524111

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 100
    new-instance v1, Lcom/google/android/syncadapters/GDataSyncState;

    invoke-virtual {v0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/syncadapters/GDataSyncState;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    .end local v0           #parcel:Landroid/os/Parcel;
    :goto_0
    return-object v1

    .line 106
    .restart local v0       #parcel:Landroid/os/Parcel;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 109
    .end local v0           #parcel:Landroid/os/Parcel;
    :cond_1
    :goto_1
    new-instance v1, Lcom/google/android/syncadapters/GDataSyncState;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/google/android/syncadapters/GDataSyncState;-><init>(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_0

    .line 102
    .restart local v0       #parcel:Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public static getOrCreate(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/GDataSyncState;
    .locals 3
    .parameter "provider"
    .parameter "account"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-static {p0, p1}, Landroid/provider/ContactsContract$SyncState;->getWithUri(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Landroid/util/Pair;

    move-result-object v0

    .line 139
    .local v0, syncStateUriAndData:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/net/Uri;[B>;"
    if-nez v0, :cond_0

    .line 140
    invoke-static {p0, p1}, Lcom/google/android/syncadapters/GDataSyncState;->create(Landroid/content/ContentProviderClient;Landroid/accounts/Account;)Lcom/google/android/syncadapters/GDataSyncState;

    move-result-object v1

    .line 142
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/syncadapters/SyncAdapterUtils;->addCallerIsSyncAdapterParameter(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v2, v1}, Lcom/google/android/syncadapters/GDataSyncState;->fromBytes(Landroid/net/Uri;[B)Lcom/google/android/syncadapters/GDataSyncState;

    move-result-object v1

    goto :goto_0
.end method

.method private static toBytes(Lcom/google/android/syncadapters/GDataSyncState;)[B
    .locals 2
    .parameter "syncState"

    .prologue
    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 115
    .local v0, parcel:Landroid/os/Parcel;
    const v1, -0x21524111

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object v1, p0, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method


# virtual methods
.method public newUpdateOperation()Landroid/content/ContentProviderOperation;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataSyncState;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/syncadapters/GDataSyncState;->toBytes(Lcom/google/android/syncadapters/GDataSyncState;)[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/SyncStateContract$Helpers;->newUpdateOperation(Landroid/net/Uri;[B)Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .local v2, sb:Ljava/lang/StringBuilder;
    const-string v4, "GDataSyncData:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-object v4, p0, Lcom/google/android/syncadapters/GDataSyncState;->uri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 79
    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/syncadapters/GDataSyncState;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :cond_0
    iget-object v4, p0, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/syncadapters/GDataSyncState;->feedData:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 83
    .local v3, value:Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    .line 84
    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v4, " -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public updateInProvider(Landroid/content/ContentProviderClient;)V
    .locals 2
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/android/syncadapters/GDataSyncState;->uri:Landroid/net/Uri;

    invoke-static {p0}, Lcom/google/android/syncadapters/GDataSyncState;->toBytes(Lcom/google/android/syncadapters/GDataSyncState;)[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroid/provider/SyncStateContract$Helpers;->update(Landroid/content/ContentProviderClient;Landroid/net/Uri;[B)V

    .line 149
    return-void
.end method

.class Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AbstractSyncableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "name"

    .prologue
    .line 132
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    .line 134
    const/4 v0, 0x0

    #getter for: Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseVersion:I
    invoke-static {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$000(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 135
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    #getter for: Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;
    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$100(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 141
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    #getter for: Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$200(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 145
    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    #getter for: Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;
    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$100(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 160
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    #getter for: Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;
    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$100(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    #getter for: Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$200(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v0, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    :cond_0
    return-void
.end method

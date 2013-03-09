.class public Lcom/android/bluetooth/opp/BluetoothOppManager;
.super Ljava/lang/Object;
.source "BluetoothOppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    }
.end annotation


# static fields
.field private static final ALLOWED_INSERT_SHARE_THREAD_NUMBER:I = 0x3

.field private static final ARRAYLIST_ITEM_SEPERATOR:Ljava/lang/String; = ";"

.field private static final FILE_URI:Ljava/lang/String; = "FILE_URI"

.field private static final FILE_URIS:Ljava/lang/String; = "FILE_URIS"

.field private static INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager; = null

.field private static INSTANCE_LOCK:Ljava/lang/Object; = null

.field private static final MIME_TYPE:Ljava/lang/String; = "MIMETYPE"

.field private static final MIME_TYPE_MULTIPLE:Ljava/lang/String; = "MIMETYPE_MULTIPLE"

.field private static final MULTIPLE_FLAG:Ljava/lang/String; = "MULTIPLE_FLAG"

.field private static final OPP_PREFERENCE_FILE:Ljava/lang/String; = "OPPMGR"

.field private static final SENDING_FLAG:Ljava/lang/String; = "SENDINGFLAG"

.field private static final TAG:Ljava/lang/String; = "BluetoothOppManager"

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mInsertShareThreadNum:I

.field private mMimeTypeOfSendingFile:Ljava/lang/String;

.field private mMimeTypeOfSendingFiles:Ljava/lang/String;

.field public mMultipleFlag:Z

.field public mSendingFlag:Z

.field private mUriOfSendingFile:Ljava/lang/String;

.field private mUrisOfSendingFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mfileNumInBatch:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    .line 314
    return-void
.end method

.method static synthetic access$008(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$010(Lcom/android/bluetooth/opp/BluetoothOppManager;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 111
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    .line 115
    :cond_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->init(Landroid/content/Context;)Z

    .line 117
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppManager;->INSTANCE:Lcom/android/bluetooth/opp/BluetoothOppManager;

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 125
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return v1

    .line 127
    :cond_0
    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInitialized:Z

    .line 129
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 132
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_1

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->restoreApplicationData()V

    goto :goto_0
.end method

.method private restoreApplicationData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 146
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "OPPMGR"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v4, "SENDINGFLAG"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    .line 150
    const-string v4, "MIMETYPE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 151
    const-string v4, "FILE_URI"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 152
    const-string v4, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 153
    const-string v4, "MULTIPLE_FLAG"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 158
    const-string v4, "FILE_URIS"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, strUris:Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 160
    if-eqz v3, :cond_0

    .line 161
    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, splitUri:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    aget-object v5, v2, v0

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0           #i:I
    .end local v2           #splitUri:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v5, "OPPMGR"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 169
    return-void
.end method

.method private storeApplicationData()V
    .locals 9

    .prologue
    .line 175
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-string v7, "OPPMGR"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 177
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "SENDINGFLAG"

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mSendingFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 178
    const-string v6, "MULTIPLE_FLAG"

    iget-boolean v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 179
    iget-boolean v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v6, :cond_1

    .line 180
    const-string v6, "MIMETYPE_MULTIPLE"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 183
    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 184
    .local v5, uriContent:Landroid/net/Uri;
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v5           #uriContent:Landroid/net/Uri;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    .local v4, strUris:Ljava/lang/String;
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v6, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v6, "MIMETYPE"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    const-string v6, "FILE_URI"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 199
    .end local v0           #count:I
    .end local v2           #i:I
    .end local v3           #sb:Ljava/lang/StringBuilder;
    .end local v4           #strUris:Ljava/lang/String;
    :goto_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 201
    return-void

    .line 193
    :cond_1
    const-string v6, "MIMETYPE"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 194
    const-string v6, "FILE_URI"

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    const-string v6, "MIMETYPE_MULTIPLE"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 197
    const-string v6, "FILE_URIS"

    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method


# virtual methods
.method public disableBluetooth()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 250
    :cond_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 241
    :cond_0
    return-void
.end method

.method public getBatchSize()I
    .locals 1

    .prologue
    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mfileNumInBatch:I

    monitor-exit p0

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3
    .parameter "device"

    .prologue
    .line 258
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, deviceName:Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    if-nez v0, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v2, 0x7f040003

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 268
    :cond_1
    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    .line 230
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "mimeType"
    .parameter "uri"

    .prologue
    .line 204
    monitor-enter p0

    .line 205
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 206
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    .line 208
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 209
    monitor-exit p0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveSendingFileInfo(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "mimeType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    monitor-enter p0

    .line 214
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    .line 215
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    .line 216
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    .line 217
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->storeApplicationData()V

    .line 218
    monitor-exit p0

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startTransfer(Landroid/bluetooth/BluetoothDevice;)V
    .locals 9
    .parameter "device"

    .prologue
    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mInsertShareThreadNum:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 285
    const-string v1, "BluetoothOppManager"

    const-string v2, "Too many shares user triggered concurrently!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v8, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {v8, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 289
    .local v8, in:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 290
    const-string v1, "title"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v3, 0x7f040038

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "content"

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    const v3, 0x7f040042

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 294
    monitor-exit p0

    .line 304
    .end local v8           #in:Landroid/content/Intent;
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;

    iget-boolean v3, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUriOfSendingFile:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMimeTypeOfSendingFiles:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppManager;Landroid/bluetooth/BluetoothDevice;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 298
    .local v0, insertThread:Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    iget-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mMultipleFlag:Z

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mUrisOfSendingFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/opp/BluetoothOppManager;->mfileNumInBatch:I

    .line 301
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;->start()V

    goto :goto_0

    .line 301
    .end local v0           #insertThread:Lcom/android/bluetooth/opp/BluetoothOppManager$InsertShareInfoThread;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

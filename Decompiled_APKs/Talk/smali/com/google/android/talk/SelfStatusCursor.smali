.class public Lcom/google/android/talk/SelfStatusCursor;
.super Landroid/database/AbstractCursor;
.source "SelfStatusCursor.java"


# static fields
.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field private mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

.field private mActivity:Landroid/app/Activity;

.field private mAvatarData:Lcom/google/android/talk/DatabaseUtils$AvatarData;

.field private mCapabilities:I

.field private final mCapabilitiesLock:Ljava/lang/Object;

.field private mCapabilitiesValid:Z

.field private mPresence:Lcom/google/android/gtalkservice/Presence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "nickname"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "subscriptionStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "subscriptionType"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "qc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mode"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "client_type"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "groupchat"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "last_unread_message"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "last_message_date"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "avatars_hash"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "avatars_data"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "cap"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/talk/SelfStatusCursor;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gtalkservice/Presence;Lcom/google/android/talk/TalkApp$AccountInfo;)V
    .locals 2
    .parameter "activity"
    .parameter "presence"
    .parameter "info"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilitiesLock:Ljava/lang/Object;

    .line 63
    iput-object p1, p0, Lcom/google/android/talk/SelfStatusCursor;->mActivity:Landroid/app/Activity;

    .line 64
    iput-object p3, p0, Lcom/google/android/talk/SelfStatusCursor;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    .line 65
    iput-object p2, p0, Lcom/google/android/talk/SelfStatusCursor;->mPresence:Lcom/google/android/gtalkservice/Presence;

    .line 68
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/talk/SelfStatusCursor$2;

    invoke-direct {v1, p0, p3}, Lcom/google/android/talk/SelfStatusCursor$2;-><init>(Lcom/google/android/talk/SelfStatusCursor;Lcom/google/android/talk/TalkApp$AccountInfo;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 79
    .local v0, t:Ljava/lang/Thread;
    const-string v1, "Async SelfStatusCursor query capabilities"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/google/android/talk/SelfStatusCursor;Lcom/google/android/talk/DatabaseUtils$AvatarData;)Lcom/google/android/talk/DatabaseUtils$AvatarData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/google/android/talk/SelfStatusCursor;->mAvatarData:Lcom/google/android/talk/DatabaseUtils$AvatarData;

    return-object p1
.end method

.method static synthetic access$100(Lcom/google/android/talk/SelfStatusCursor;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/talk/SelfStatusCursor;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilities:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/talk/SelfStatusCursor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilitiesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/android/talk/SelfStatusCursor;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilitiesValid:Z

    return p1
.end method

.method private getCapabilities()I
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilitiesValid:Z

    if-nez v0, :cond_1

    .line 93
    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilitiesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilitiesValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 96
    :try_start_1
    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilitiesLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :cond_1
    iget v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mCapabilities:I

    return v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 1
    .parameter "column"

    .prologue
    .line 221
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mAvatarData:Lcom/google/android/talk/DatabaseUtils$AvatarData;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mAvatarData:Lcom/google/android/talk/DatabaseUtils$AvatarData;

    iget-object v0, v0, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarData:[B

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 4
    .parameter "columnName"

    .prologue
    .line 151
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/google/android/talk/SelfStatusCursor;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 152
    sget-object v1, Lcom/google/android/talk/SelfStatusCursor;->PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    return v0

    .line 151
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/google/android/talk/SelfStatusCursor;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x1

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .parameter "column"

    .prologue
    .line 166
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 2
    .parameter "column"

    .prologue
    .line 176
    invoke-virtual {p0, p1}, Lcom/google/android/talk/SelfStatusCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLong(I)J
    .locals 4
    .parameter "column"

    .prologue
    const-wide/16 v1, 0x0

    .line 181
    const/16 v3, 0x8

    if-ne p1, v3, :cond_1

    .line 182
    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mPresence:Lcom/google/android/gtalkservice/Presence;

    .line 183
    .local v0, presence:Lcom/google/android/gtalkservice/Presence;
    if-eqz v0, :cond_0

    .line 184
    invoke-static {v0}, Lcom/google/android/talk/util/PresenceUtils;->translatePresence(Lcom/google/android/gtalkservice/Presence;)I

    move-result v1

    int-to-long v1, v1

    .line 191
    .end local v0           #presence:Lcom/google/android/gtalkservice/Presence;
    :cond_0
    :goto_0
    return-wide v1

    .line 186
    :cond_1
    const/4 v3, 0x6

    if-eq p1, v3, :cond_0

    .line 188
    const/16 v3, 0x10

    if-ne p1, v3, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/google/android/talk/SelfStatusCursor;->getCapabilities()I

    move-result v1

    int-to-long v1, v1

    goto :goto_0
.end method

.method public getShort(I)S
    .locals 2
    .parameter "column"

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/google/android/talk/SelfStatusCursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 3
    .parameter "column"

    .prologue
    const/4 v1, 0x0

    .line 201
    const/16 v2, 0x9

    if-ne p1, v2, :cond_1

    .line 202
    iget-object v0, p0, Lcom/google/android/talk/SelfStatusCursor;->mPresence:Lcom/google/android/gtalkservice/Presence;

    .line 203
    .local v0, presence:Lcom/google/android/gtalkservice/Presence;
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/google/android/gtalkservice/Presence;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 215
    .end local v0           #presence:Lcom/google/android/gtalkservice/Presence;
    :cond_0
    :goto_0
    return-object v1

    .line 208
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 209
    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 211
    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    iget-object v1, v1, Lcom/google/android/talk/TalkApp$AccountInfo;->username:Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_3
    const/16 v2, 0xe

    if-ne p1, v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/google/android/talk/SelfStatusCursor;->mAvatarData:Lcom/google/android/talk/DatabaseUtils$AvatarData;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor;->mAvatarData:Lcom/google/android/talk/DatabaseUtils$AvatarData;

    iget-object v1, v1, Lcom/google/android/talk/DatabaseUtils$AvatarData;->mAvatarDataHash:Ljava/lang/String;

    goto :goto_0
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 230
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    .line 231
    const/4 v0, 0x1

    .line 233
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnAvatarRunnable(Ljava/lang/Runnable;)V
    .locals 3
    .parameter "update"

    .prologue
    .line 50
    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Lcom/google/android/talk/SelfStatusCursor$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/talk/SelfStatusCursor$1;-><init>(Lcom/google/android/talk/SelfStatusCursor;Ljava/lang/Runnable;)V

    .line 58
    .local v0, ready:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;
    iget-object v1, p0, Lcom/google/android/talk/SelfStatusCursor;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/talk/TalkApp;->getApplication(Landroid/app/Activity;)Lcom/google/android/talk/TalkApp;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/talk/SelfStatusCursor;->mAccountInfo:Lcom/google/android/talk/TalkApp$AccountInfo;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/talk/TalkApp;->getSelfAvatarDataForAccount(Lcom/google/android/talk/TalkApp$AccountInfo;Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;)V

    .line 60
    .end local v0           #ready:Lcom/google/android/talk/TalkApp$SelfAvatarReadyRunnable;
    :cond_0
    return-void
.end method

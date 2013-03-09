.class public Lcom/android/vending/VendingBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "VendingBackupAgent.java"


# static fields
.field private static final AUTO_ADD_SHORTCUTS:Ljava/lang/String;

.field private static final AUTO_UPDATE_BY_DEFAULT:Ljava/lang/String;

.field private static final AUTO_UPDATE_WIFI_ONLY:Ljava/lang/String;

.field private static final CONTENT_FILTER_LEVEL:Ljava/lang/String;

.field private static final NOTIFY_UPDATES:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vending/VendingBackupAgent;->AUTO_UPDATE_BY_DEFAULT:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vending/VendingBackupAgent;->AUTO_UPDATE_WIFI_ONLY:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vending/VendingBackupAgent;->AUTO_ADD_SHORTCUTS:Ljava/lang/String;

    .line 41
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vending/VendingBackupAgent;->NOTIFY_UPDATES:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vending/VendingBackupAgent;->CONTENT_FILTER_LEVEL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private flushBufferData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "bufStream"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 104
    .local v0, backupData:[B
    array-length v1, v0

    invoke-virtual {p1, p3, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 105
    array-length v1, v0

    invoke-virtual {p1, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 106
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 107
    return-void
.end method

.method public static registerWithBackup(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->BACKED_UP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 53
    :cond_0
    return-void
.end method

.method private writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;I)V
    .locals 0
    .parameter "data"
    .parameter "bufStream"
    .parameter "outWriter"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p3, p5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    invoke-direct {p0, p1, p2, p4}, Lcom/android/vending/VendingBackupAgent;->flushBufferData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;J)V
    .locals 0
    .parameter "data"
    .parameter "bufStream"
    .parameter "outWriter"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p3, p5, p6}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 84
    invoke-direct {p0, p1, p2, p4}, Lcom/android/vending/VendingBackupAgent;->flushBufferData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V
    .locals 0
    .parameter "data"
    .parameter "bufStream"
    .parameter "outWriter"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p3, p5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 98
    invoke-direct {p0, p1, p2, p4}, Lcom/android/vending/VendingBackupAgent;->flushBufferData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 13
    .parameter "oldState"
    .parameter "data"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 59
    .local v2, bufStream:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v3, outWriter:Ljava/io/DataOutputStream;
    sget-object v0, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 63
    .local v5, aid:J
    const-string v0, "Backing up aid: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    const-string v4, "vending"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;J)V

    .line 67
    sget-object v11, Lcom/android/vending/VendingBackupAgent;->AUTO_UPDATE_BY_DEFAULT:Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V

    .line 69
    sget-object v11, Lcom/android/vending/VendingBackupAgent;->AUTO_UPDATE_WIFI_ONLY:Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V

    .line 71
    sget-object v11, Lcom/android/vending/VendingBackupAgent;->AUTO_ADD_SHORTCUTS:Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V

    .line 73
    sget-object v11, Lcom/android/vending/VendingBackupAgent;->NOTIFY_UPDATES:Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;Z)V

    .line 75
    sget-object v11, Lcom/android/vending/VendingBackupAgent;->CONTENT_FILTER_LEVEL:Ljava/lang/String;

    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v7, p0

    move-object v8, p2

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v7 .. v12}, Lcom/android/vending/VendingBackupAgent;->writeData(Landroid/app/backup/BackupDataOutput;Ljava/io/ByteArrayOutputStream;Ljava/io/DataOutputStream;Ljava/lang/String;I)V

    .line 78
    sget-object v0, Lcom/google/android/finsky/utils/VendingPreferences;->BACKED_UP:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 13
    .parameter "data"
    .parameter "appVersionCode"
    .parameter "newState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const-string v9, "Entered onRestore"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, aidRestored:Z
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 120
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v6

    .line 121
    .local v6, dataSize:I
    new-array v5, v6, [B

    .line 122
    .local v5, dataBuf:[B
    const/4 v9, 0x0

    invoke-virtual {p1, v5, v9, v6}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    .line 123
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 124
    .local v4, baStream:Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    .local v7, in:Ljava/io/DataInputStream;
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, key:Ljava/lang/String;
    const-string v9, "Restoring key %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    const-string v9, "vending"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 129
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 130
    .local v0, aid:J
    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, aidString:Ljava/lang/String;
    const-string v9, "Restored aid: %s"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    const/4 v9, 0x0

    invoke-static {p0, v3, v9}, Lcom/google/android/finsky/services/RestoreService;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v9, Lcom/google/android/finsky/utils/VendingPreferences;->RESTORED_ANDROID_ID:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v9, v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 142
    const/4 v2, 0x1

    .line 143
    goto :goto_0

    .end local v0           #aid:J
    .end local v3           #aidString:Ljava/lang/String;
    :cond_1
    sget-object v9, Lcom/android/vending/VendingBackupAgent;->AUTO_UPDATE_BY_DEFAULT:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 144
    sget-object v9, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_BY_DEFAULT:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 145
    :cond_2
    sget-object v9, Lcom/android/vending/VendingBackupAgent;->AUTO_UPDATE_WIFI_ONLY:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 146
    sget-object v9, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_UPDATE_WIFI_ONLY:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_3
    sget-object v9, Lcom/android/vending/VendingBackupAgent;->AUTO_ADD_SHORTCUTS:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 148
    sget-object v9, Lcom/google/android/finsky/utils/VendingPreferences;->AUTO_ADD_SHORTCUTS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 149
    :cond_4
    sget-object v9, Lcom/android/vending/VendingBackupAgent;->NOTIFY_UPDATES:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 150
    sget-object v9, Lcom/google/android/finsky/utils/VendingPreferences;->NOTIFY_UPDATES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 151
    :cond_5
    sget-object v9, Lcom/android/vending/VendingBackupAgent;->CONTENT_FILTER_LEVEL:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 152
    sget-object v9, Lcom/google/android/finsky/utils/FinskyPreferences;->contentFilterLevel:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 156
    .end local v4           #baStream:Ljava/io/ByteArrayInputStream;
    .end local v5           #dataBuf:[B
    .end local v6           #dataSize:I
    .end local v7           #in:Ljava/io/DataInputStream;
    .end local v8           #key:Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_7

    .line 157
    const-string v9, "Restore completed, no Market aid was found"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_7
    const-string v9, "Finished onRestore"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v10}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    return-void
.end method

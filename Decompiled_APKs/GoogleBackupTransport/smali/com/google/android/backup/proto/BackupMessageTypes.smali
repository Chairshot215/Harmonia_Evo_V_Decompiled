.class public Lcom/google/android/backup/proto/BackupMessageTypes;
.super Ljava/lang/Object;
.source "BackupMessageTypes.java"


# static fields
.field public static final BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final BACKUP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final BACKUP_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

.field public static final BACKUP_SETTING_META_DATA:Lcom/google/common/io/protocol/ProtoBufType;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/16 v9, 0x41a

    const/16 v8, 0x11c

    const/4 v7, 0x0

    .line 10
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

    .line 11
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_SETTING_META_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    .line 12
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    .line 13
    new-instance v0, Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0}, Lcom/google/common/io/protocol/ProtoBufType;-><init>()V

    sput-object v0, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    .line 16
    sget-object v0, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v8, v10, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x219

    invoke-virtual {v0, v1, v11, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 22
    sget-object v0, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_SETTING_META_DATA:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x11d

    invoke-virtual {v0, v1, v10, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x116

    invoke-virtual {v0, v1, v11, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 28
    sget-object v0, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_REQUEST:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x113

    invoke-virtual {v0, v1, v10, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x213

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v8, v1, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x215

    const/16 v2, 0x13

    new-instance v3, Ljava/lang/Long;

    const-wide/16 v4, 0x1

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    new-instance v1, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v2, "APPLICATION"

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v8, v2, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/16 v2, 0x21c

    const/16 v3, 0x14

    invoke-virtual {v1, v2, v3, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/16 v2, 0x21a

    const/4 v3, 0x4

    new-instance v4, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v5, "APPLICATION_GET_SETTINGS"

    invoke-direct {v4, v5}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x21c

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/4 v2, 0x7

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "APPLICATION_MOVE_SETTING"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x8

    invoke-virtual {v3, v8, v4, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v8, v4, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/16 v2, 0xa

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "APPLICATION_DELETE_SETTING"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x41c

    const/16 v5, 0xb

    invoke-virtual {v3, v4, v5, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    const/16 v4, 0x21c

    const/16 v5, 0xc

    invoke-virtual {v3, v4, v5, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v1, v9, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/16 v2, 0x41b

    const/4 v3, 0x6

    sget-object v4, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v0, v9, v11, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/16 v2, 0xd

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "GET_DEVICES"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x21a

    const/16 v2, 0x11

    new-instance v3, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v4, "CLEAR_DEVICE"

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x218

    const/16 v5, 0x12

    sget-object v6, Lcom/google/common/io/protocol/ProtoBuf;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 70
    sget-object v0, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_RESPONSE:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x21d

    invoke-virtual {v0, v1, v10, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/16 v1, 0x115

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    new-instance v1, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v2, "APPLICATION"

    invoke-direct {v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v1, v8, v2, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/16 v2, 0x214

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/16 v2, 0x41b

    const/4 v3, 0x4

    sget-object v4, Lcom/google/android/backup/proto/BackupMessageTypes;->BACKUP_SETTING:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/16 v2, 0x115

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    const/16 v2, 0x41c

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v1

    invoke-virtual {v0, v9, v11, v1}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    const/4 v1, 0x7

    new-instance v2, Lcom/google/common/io/protocol/ProtoBufType;

    const-string v3, "DEVICE"

    invoke-direct {v2, v3}, Lcom/google/common/io/protocol/ProtoBufType;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x113

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x114

    const/16 v4, 0x9

    invoke-virtual {v2, v3, v4, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x114

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    const/16 v3, 0x21c

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4, v7}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v2

    invoke-virtual {v0, v9, v1, v2}, Lcom/google/common/io/protocol/ProtoBufType;->addElement(IILjava/lang/Object;)Lcom/google/common/io/protocol/ProtoBufType;

    .line 98
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public final enum Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;
.super Ljava/lang/Enum;
.source "HtcEncryptionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

.field public static final enum INTERNAL_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

.field public static final enum NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

.field public static final enum PHONE_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

.field public static final enum SD_CARD:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    const-string v1, "SD_CARD"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->SD_CARD:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    const-string v1, "PHONE_STORAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    new-instance v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    const-string v1, "INTERNAL_STORAGE"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    .line 46
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->NONE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->SD_CARD:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->PHONE_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->INTERNAL_STORAGE:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->$VALUES:[Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->$VALUES:[Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$StorageType;

    return-object v0
.end method

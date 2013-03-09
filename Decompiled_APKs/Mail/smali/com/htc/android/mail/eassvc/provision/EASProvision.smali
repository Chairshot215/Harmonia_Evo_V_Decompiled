.class public Lcom/htc/android/mail/eassvc/provision/EASProvision;
.super Ljava/lang/Object;
.source "EASProvision.java"


# static fields
.field public static AllowBluetooth:Ljava/lang/String;

.field public static AllowBrowser:Ljava/lang/String;

.field public static AllowCamera:Ljava/lang/String;

.field public static AllowConsumerEmail:Ljava/lang/String;

.field public static AllowDesktopSync:Ljava/lang/String;

.field public static AllowHTMLEmail:Ljava/lang/String;

.field public static AllowInternetSharing:Ljava/lang/String;

.field public static AllowIrDA:Ljava/lang/String;

.field public static AllowPOPIMAPEmail:Ljava/lang/String;

.field public static AllowRemoteDesktop:Ljava/lang/String;

.field public static AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

.field public static AllowSMIMESoftCerts:Ljava/lang/String;

.field public static AllowSimpleDevicePassword:Ljava/lang/String;

.field public static AllowStorageCard:Ljava/lang/String;

.field public static AllowTextMessaging:Ljava/lang/String;

.field public static AllowUnsignedApplications:Ljava/lang/String;

.field public static AllowUnsignedInstallationPackages:Ljava/lang/String;

.field public static AllowWiFi:Ljava/lang/String;

.field public static AlphanumericDevicePasswordRequired:Ljava/lang/String;

.field public static ApplicationName:Ljava/lang/String;

.field public static ApprovedApplicationList:Ljava/lang/String;

.field public static AttachmentsEnabled:Ljava/lang/String;

.field public static DeviceEncryptionEnabled:Ljava/lang/String;

.field public static DevicePasswordEnabled:Ljava/lang/String;

.field public static DevicePasswordExpiration:Ljava/lang/String;

.field public static DevicePasswordHistory:Ljava/lang/String;

.field public static Hash:Ljava/lang/String;

.field public static MaxAttachmentSize:Ljava/lang/String;

.field public static MaxCalendarAgeFilter:Ljava/lang/String;

.field public static MaxDevicePasswordFailedAttempts:Ljava/lang/String;

.field public static MaxEmailAgeFilter:Ljava/lang/String;

.field public static MaxEmailBodyTruncationSize:Ljava/lang/String;

.field public static MaxEmailHTMLBodyTruncationSize:Ljava/lang/String;

.field public static MaxInactivityTimeDeviceLock:Ljava/lang/String;

.field public static MinDevicePasswordComplexCharacters:Ljava/lang/String;

.field public static MinDevicePasswordLength:Ljava/lang/String;

.field public static PasswordRecoveryEnabled:Ljava/lang/String;

.field public static RequireDeviceEncryption:Ljava/lang/String;

.field public static RequireEncryptedSMIMEMessages:Ljava/lang/String;

.field public static RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

.field public static RequireManualSyncWhenRoaming:Ljava/lang/String;

.field public static RequireSignedSMIMEAlgorithm:Ljava/lang/String;

.field public static RequireSignedSMIMEMessages:Ljava/lang/String;

.field public static RequireStorageCardEncryption:Ljava/lang/String;

.field public static UnapprovedInROMApplicationList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const-string v0, "DevicePasswordEnabled"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->DevicePasswordEnabled:Ljava/lang/String;

    .line 6
    const-string v0, "AlphanumericDevicePasswordRequired"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    .line 7
    const-string v0, "PasswordRecoveryEnabled"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->PasswordRecoveryEnabled:Ljava/lang/String;

    .line 8
    const-string v0, "DeviceEncryptionEnabled"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->DeviceEncryptionEnabled:Ljava/lang/String;

    .line 9
    const-string v0, "AttachmentsEnabled"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AttachmentsEnabled:Ljava/lang/String;

    .line 10
    const-string v0, "MinDevicePasswordLength"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MinDevicePasswordLength:Ljava/lang/String;

    .line 11
    const-string v0, "MaxInactivityTimeDeviceLock"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MaxInactivityTimeDeviceLock:Ljava/lang/String;

    .line 12
    const-string v0, "MaxDevicePasswordFailedAttempts"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MaxDevicePasswordFailedAttempts:Ljava/lang/String;

    .line 13
    const-string v0, "MaxAttachmentSize"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MaxAttachmentSize:Ljava/lang/String;

    .line 14
    const-string v0, "AllowSimpleDevicePassword"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowSimpleDevicePassword:Ljava/lang/String;

    .line 15
    const-string v0, "DevicePasswordExpiration"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->DevicePasswordExpiration:Ljava/lang/String;

    .line 16
    const-string v0, "DevicePasswordHistory"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->DevicePasswordHistory:Ljava/lang/String;

    .line 18
    const-string v0, "AllowStorageCard"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowStorageCard:Ljava/lang/String;

    .line 19
    const-string v0, "AllowCamera"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowCamera:Ljava/lang/String;

    .line 20
    const-string v0, "RequireDeviceEncryption"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireDeviceEncryption:Ljava/lang/String;

    .line 21
    const-string v0, "RequireStorageCardEncryption"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireStorageCardEncryption:Ljava/lang/String;

    .line 22
    const-string v0, "AllowUnsignedApplications"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowUnsignedApplications:Ljava/lang/String;

    .line 23
    const-string v0, "AllowUnsignedInstallationPackages"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    .line 24
    const-string v0, "MinDevicePasswordComplexCharacters"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    .line 25
    const-string v0, "AllowWiFi"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowWiFi:Ljava/lang/String;

    .line 26
    const-string v0, "AllowTextMessaging"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowTextMessaging:Ljava/lang/String;

    .line 27
    const-string v0, "AllowPOPIMAPEmail"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowPOPIMAPEmail:Ljava/lang/String;

    .line 28
    const-string v0, "AllowBluetooth"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowBluetooth:Ljava/lang/String;

    .line 29
    const-string v0, "AllowIrDA"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowIrDA:Ljava/lang/String;

    .line 30
    const-string v0, "RequireManualSyncWhenRoaming"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireManualSyncWhenRoaming:Ljava/lang/String;

    .line 31
    const-string v0, "AllowDesktopSync"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowDesktopSync:Ljava/lang/String;

    .line 32
    const-string v0, "MaxCalendarAgeFilter"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MaxCalendarAgeFilter:Ljava/lang/String;

    .line 33
    const-string v0, "AllowHTMLEmail"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowHTMLEmail:Ljava/lang/String;

    .line 34
    const-string v0, "MaxEmailAgeFilter"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MaxEmailAgeFilter:Ljava/lang/String;

    .line 35
    const-string v0, "MaxEmailBodyTruncationSize"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MaxEmailBodyTruncationSize:Ljava/lang/String;

    .line 36
    const-string v0, "MaxEmailHTMLBodyTruncationSize"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->MaxEmailHTMLBodyTruncationSize:Ljava/lang/String;

    .line 37
    const-string v0, "RequireSignedSMIMEMessages"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireSignedSMIMEMessages:Ljava/lang/String;

    .line 38
    const-string v0, "RequireEncryptedSMIMEMessages"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    .line 39
    const-string v0, "RequireSignedSMIMEAlgorithm"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    .line 40
    const-string v0, "RequireEncryptionSMIMEAlgorithm"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    .line 41
    const-string v0, "AllowSMIMEEncryptionAlgorithmNegotiation"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    .line 42
    const-string v0, "AllowSMIMESoftCerts"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowSMIMESoftCerts:Ljava/lang/String;

    .line 43
    const-string v0, "AllowBrowser"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowBrowser:Ljava/lang/String;

    .line 44
    const-string v0, "AllowConsumerEmail"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowConsumerEmail:Ljava/lang/String;

    .line 45
    const-string v0, "AllowRemoteDesktop"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowRemoteDesktop:Ljava/lang/String;

    .line 46
    const-string v0, "AllowInternetSharing"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowInternetSharing:Ljava/lang/String;

    .line 47
    const-string v0, "UnapprovedInROMApplicationList"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->UnapprovedInROMApplicationList:Ljava/lang/String;

    .line 48
    const-string v0, "ApplicationName"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->ApplicationName:Ljava/lang/String;

    .line 49
    const-string v0, "ApprovedApplicationList"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->ApprovedApplicationList:Ljava/lang/String;

    .line 50
    const-string v0, "Hash"

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvision;->Hash:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

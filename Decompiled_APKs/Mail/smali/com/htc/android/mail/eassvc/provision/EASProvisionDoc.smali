.class public Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
.super Ljava/lang/Object;
.source "EASProvisionDoc.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x64L


# instance fields
.field public AEFrequencyType:Ljava/lang/String;

.field public AEFrequencyValue:Ljava/lang/String;

.field public AllowBluetooth:Ljava/lang/String;

.field public AllowBrowser:Ljava/lang/String;

.field public AllowCamera:Ljava/lang/String;

.field public AllowConsumerEmail:Ljava/lang/String;

.field public AllowDesktopSync:Ljava/lang/String;

.field public AllowHTMLEmail:Ljava/lang/String;

.field public AllowInternetSharing:Ljava/lang/String;

.field public AllowIrDA:Ljava/lang/String;

.field public AllowPOPIMAPEmail:Ljava/lang/String;

.field public AllowRemoteDesktop:Ljava/lang/String;

.field public AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

.field public AllowSMIMESoftCerts:Ljava/lang/String;

.field public AllowSimpleDevicePassword:Ljava/lang/String;

.field public AllowStorageCard:Ljava/lang/String;

.field public AllowTextMessaging:Ljava/lang/String;

.field public AllowUnsignedApplications:Ljava/lang/String;

.field public AllowUnsignedInstallationPackages:Ljava/lang/String;

.field public AllowWiFi:Ljava/lang/String;

.field public AlphanumericDevicePasswordRequired:Ljava/lang/String;

.field public ApprovedApplicationList:[Ljava/lang/String;

.field public AttachmentsEnabled:Ljava/lang/String;

.field public CodewordFrequency:Ljava/lang/String;

.field public DeviceEncryptionEnabled:Ljava/lang/String;

.field public DevicePasswordEnabled:Ljava/lang/String;

.field public DevicePasswordExpiration:Ljava/lang/String;

.field public DevicePasswordHistory:Ljava/lang/String;

.field public DeviceWipeThreshold:Ljava/lang/String;

.field public MaxAttachmentSize:Ljava/lang/String;

.field public MaxCalendarAgeFilter:Ljava/lang/String;

.field public MaxDevicePasswordFailedAttempts:Ljava/lang/String;

.field public MaxEmailAgeFilter:Ljava/lang/String;

.field public MaxEmailBodyTruncationSize:Ljava/lang/String;

.field public MaxEmailHTMLBodyTruncationSize:Ljava/lang/String;

.field public MaxInactivityTimeDeviceLock:Ljava/lang/String;

.field public MinDevicePasswordComplexCharacters:Ljava/lang/String;

.field public MinDevicePasswordLength:Ljava/lang/String;

.field public MinimumPasswordLength:Ljava/lang/String;

.field public PasswordComplexity:Ljava/lang/String;

.field public PasswordRecoveryEnabled:Ljava/lang/String;

.field public RequireDeviceEncryption:Ljava/lang/String;

.field public RequireEncryptedSMIMEMessages:Ljava/lang/String;

.field public RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

.field public RequireManualSyncWhenRoaming:Ljava/lang/String;

.field public RequireSignedSMIMEAlgorithm:Ljava/lang/String;

.field public RequireSignedSMIMEMessages:Ljava/lang/String;

.field public RequireStorageCardEncryption:Ljava/lang/String;

.field public UnapprovedInROMApplicationList:[Ljava/lang/String;

.field public code4131:Ljava/lang/String;

.field public code4133:Ljava/lang/String;

.field public protocolVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc$1;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc$1;-><init>()V

    sput-object v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 150
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->protocolVersion:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->code4131:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->code4133:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AEFrequencyType:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AEFrequencyValue:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceWipeThreshold:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->CodewordFrequency:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinimumPasswordLength:Ljava/lang/String;

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->PasswordComplexity:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->PasswordRecoveryEnabled:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AttachmentsEnabled:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordLength:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxInactivityTimeDeviceLock:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxDevicePasswordFailedAttempts:Ljava/lang/String;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxAttachmentSize:Ljava/lang/String;

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordHistory:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowStorageCard:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowCamera:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireDeviceEncryption:Ljava/lang/String;

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedApplications:Ljava/lang/String;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowWiFi:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowTextMessaging:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowPOPIMAPEmail:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowIrDA:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireManualSyncWhenRoaming:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowDesktopSync:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxCalendarAgeFilter:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowHTMLEmail:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxEmailAgeFilter:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxEmailBodyTruncationSize:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxEmailHTMLBodyTruncationSize:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEMessages:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMESoftCerts:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBrowser:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowConsumerEmail:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowRemoteDesktop:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowInternetSharing:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->UnapprovedInROMApplicationList:[Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->ApprovedApplicationList:[Ljava/lang/String;

    .line 205
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->protocolVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->code4131:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->code4133:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AEFrequencyType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AEFrequencyValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceWipeThreshold:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->CodewordFrequency:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinimumPasswordLength:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->PasswordComplexity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->PasswordRecoveryEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AttachmentsEnabled:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordLength:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxInactivityTimeDeviceLock:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxDevicePasswordFailedAttempts:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxAttachmentSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordHistory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowStorageCard:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowCamera:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireDeviceEncryption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedApplications:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowWiFi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowTextMessaging:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowPOPIMAPEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowIrDA:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireManualSyncWhenRoaming:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowDesktopSync:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxCalendarAgeFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowHTMLEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxEmailAgeFilter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxEmailBodyTruncationSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxEmailHTMLBodyTruncationSize:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEMessages:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMESoftCerts:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBrowser:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowConsumerEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowRemoteDesktop:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowInternetSharing:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->UnapprovedInROMApplicationList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->ApprovedApplicationList:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 135
    return-void
.end method

.class public Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;
.super Ljava/lang/Object;
.source "ProvisionUtil.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ProvisionFileUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aggregatePolicy(Ljava/util/ArrayList;)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;",
            ">;)",
            "Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;"
        }
    .end annotation

    .prologue
    .line 694
    .local p0, provisionDocList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;>;"
    new-instance v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-direct {v0}, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;-><init>()V

    .line 696
    .local v0, aggPolicyDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    const-string v3, "1"

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    .line 698
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    .line 699
    .local v1, doc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 701
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    .line 702
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordHistory:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordHistory:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordHistory:Ljava/lang/String;

    .line 703
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    .line 704
    invoke-static {}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->supportSDEncryption()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 705
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    .line 706
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    .line 708
    :cond_0
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireDeviceEncryption:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireDeviceEncryption:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireDeviceEncryption:Ljava/lang/String;

    .line 710
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->intCompare(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 712
    iget-object v3, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    .line 718
    :goto_1
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    .line 719
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordLength:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordLength:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordLength:Ljava/lang/String;

    .line 721
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxInactivityTimeDeviceLock:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxInactivityTimeDeviceLock:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxInactivityTimeDeviceLock:Ljava/lang/String;

    .line 722
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    .line 723
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxDevicePasswordFailedAttempts:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxDevicePasswordFailedAttempts:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxDevicePasswordFailedAttempts:Ljava/lang/String;

    .line 727
    :cond_1
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowWiFi:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowWiFi:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowWiFi:Ljava/lang/String;

    .line 728
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    .line 729
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowInternetSharing:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowInternetSharing:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowInternetSharing:Ljava/lang/String;

    .line 730
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowCamera:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowCamera:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowCamera:Ljava/lang/String;

    .line 731
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBrowser:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBrowser:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBrowser:Ljava/lang/String;

    .line 732
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowTextMessaging:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowTextMessaging:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowTextMessaging:Ljava/lang/String;

    .line 733
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowStorageCard:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowStorageCard:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowStorageCard:Ljava/lang/String;

    goto/16 :goto_0

    .line 714
    :cond_2
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    iget-object v4, v1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    goto/16 :goto_1

    .line 760
    .end local v1           #doc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :cond_3
    return-object v0
.end method

.method public static checkPasswordValid(Landroid/app/admin/DevicePolicyManager;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z
    .locals 3
    .parameter "dpManager"
    .parameter "provisionDoc"

    .prologue
    .line 796
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v1

    .line 797
    .local v1, passSufficient:Z
    const/4 v0, -0x1

    .line 798
    .local v0, expireDay:I
    iget-object v2, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 799
    iget-object v2, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 806
    :cond_0
    return v1
.end method

.method public static checkPolicySufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    .locals 9
    .parameter "context"
    .parameter "policyDoc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/eassvc/core/SyncException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x400

    .line 839
    const/4 v5, 0x0

    .line 840
    .local v5, sufficient:Z
    const-string v6, "device_policy"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 842
    .local v1, dpManager:Landroid/app/admin/DevicePolicyManager;
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 843
    const/4 v4, 0x0

    .line 844
    .local v4, passwordSufficient:Z
    new-instance v0, Landroid/content/ComponentName;

    const-class v6, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;

    invoke-direct {v0, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 845
    .local v0, deviceAdmin:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v2

    .line 846
    .local v2, easAdminEnabled:Z
    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v3

    .line 848
    .local v3, passSufficient:Z
    if-eqz v3, :cond_0

    .line 849
    const/4 v4, 0x1

    .line 852
    .end local v3           #passSufficient:Z
    :cond_0
    if-nez v4, :cond_1

    .line 853
    new-instance v6, Lcom/htc/android/mail/eassvc/core/SyncException;

    const-string v7, "enforcePolicy(): password not sufficient"

    invoke-direct {v6, v8, v7, p1}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    throw v6

    .line 855
    :cond_1
    invoke-static {}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->supportSDEncryption()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 856
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needEncryptSdCard(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 857
    new-instance v6, Lcom/htc/android/mail/eassvc/core/SyncException;

    const-string v7, "checkPolicySufficient(): SD Card Encryption not apply."

    invoke-direct {v6, v8, v7, p1}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    throw v6

    .line 860
    :cond_2
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needEncryptDisk(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 861
    new-instance v6, Lcom/htc/android/mail/eassvc/core/SyncException;

    const-string v7, "checkPolicySufficient(): Internal storage Encryption not apply."

    invoke-direct {v6, v8, v7, p1}, Lcom/htc/android/mail/eassvc/core/SyncException;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    throw v6

    .line 864
    .end local v0           #deviceAdmin:Landroid/content/ComponentName;
    .end local v2           #easAdminEnabled:Z
    .end local v4           #passwordSufficient:Z
    :cond_3
    return-void
.end method

.method public static deleteProvisionData(Landroid/content/Context;J)Z
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, provisionPreFile:Ljava/io/File;
    invoke-static {p0, p1, p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v0

    .line 290
    .local v0, dataFilePath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    .end local v1           #provisionPreFile:Ljava/io/File;
    const-string v2, "eas_provision.prefs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    .restart local v1       #provisionPreFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 293
    const/4 v2, 0x1

    .line 295
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static disableEASAdmin(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "isRemoveAdmin"

    .prologue
    .line 54
    sget-boolean v4, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "ProvisionFileUtil"

    const-string v5, "disableEASAdmin()"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    const-string v4, "device_policy"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 56
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;

    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    .local v2, mDeviceAdminSample:Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v0

    .line 58
    .local v0, adminActive:Z
    if-eqz v0, :cond_1

    .line 59
    const-wide/32 v4, 0x7fffffff

    invoke-virtual {v1, v2, v4, v5}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 61
    :cond_1
    if-eqz p1, :cond_2

    .line 62
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 64
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 65
    .local v3, pm:Landroid/content/pm/PackageManager;
    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 69
    if-eqz v0, :cond_3

    .line 70
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.intent.action.MAX_INACTIVITY_TIME_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    :cond_3
    return-void
.end method

.method public static enableEASAdmin(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 75
    sget-boolean v2, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ProvisionFileUtil"

    const-string v3, "enableEASAdmin()"

    invoke-static {v2, v3}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, deviceAdminSample:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v0, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 83
    return-void
.end method

.method public static enforceLimitationPolicyToAdmin(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    .locals 4
    .parameter "context"
    .parameter "dpManager"
    .parameter "provisionDoc"

    .prologue
    .line 588
    new-instance v0, Landroid/content/ComponentName;

    const-class v2, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;

    invoke-direct {v0, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 590
    .local v0, deviceAdmin:Landroid/content/ComponentName;
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowWiFi:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowWiFi:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/app/admin/HtcIfDevicePolicyManager;->setAllowWifi(Landroid/content/ComponentName;I)V

    .line 594
    :cond_0
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 596
    const-string v2, "0"

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 597
    const/4 v1, 0x0

    .line 603
    .local v1, status:I
    :goto_0
    invoke-interface {p1, v0, v1}, Landroid/app/admin/HtcIfDevicePolicyManager;->setAllowBT(Landroid/content/ComponentName;I)V

    .line 606
    .end local v1           #status:I
    :cond_1
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowInternetSharing:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 607
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowInternetSharing:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/app/admin/HtcIfDevicePolicyManager;->setAllowInternetSharing(Landroid/content/ComponentName;I)V

    .line 610
    :cond_2
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowTextMessaging:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 611
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowTextMessaging:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/app/admin/HtcIfDevicePolicyManager;->setAllowTextMessaging(Landroid/content/ComponentName;I)V

    .line 614
    :cond_3
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowCamera:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 615
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowCamera:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/app/admin/HtcIfDevicePolicyManager;->setAllowCamera(Landroid/content/ComponentName;I)V

    .line 618
    :cond_4
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBrowser:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 619
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBrowser:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/app/admin/HtcIfDevicePolicyManager;->setAllowBrowser(Landroid/content/ComponentName;I)V

    .line 622
    :cond_5
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowStorageCard:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 623
    iget-object v2, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowStorageCard:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v0, v2}, Landroid/app/admin/HtcIfDevicePolicyManager;->setAllowStorageCard(Landroid/content/ComponentName;I)V

    .line 625
    :cond_6
    return-void

    .line 598
    :cond_7
    const-string v2, "1"

    iget-object v3, p2, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 599
    const/4 v1, 0x2

    .restart local v1       #status:I
    goto :goto_0

    .line 601
    .end local v1           #status:I
    :cond_8
    const/4 v1, 0x1

    .restart local v1       #status:I
    goto :goto_0
.end method

.method public static enforcePolicyToAdmin(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    .locals 13
    .parameter "context"
    .parameter "provisionDoc"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 503
    const-string v10, "device_policy"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 504
    .local v2, dpManager:Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v10, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;

    invoke-direct {v1, p0, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 506
    .local v1, deviceAdmin:Landroid/content/ComponentName;
    const-string v10, "1"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 507
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxDevicePasswordFailedAttempts:Ljava/lang/String;

    if-nez v10, :cond_5

    .line 508
    invoke-virtual {v2, v1, v8}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 513
    :goto_0
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordLength:Ljava/lang/String;

    if-nez v10, :cond_6

    .line 514
    invoke-virtual {v2, v1, v8}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 518
    :goto_1
    invoke-static {p1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->getPasswordQuality(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)I

    move-result v10

    invoke-virtual {v2, v1, v10}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 521
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    if-nez v10, :cond_7

    .line 522
    invoke-interface {v2, v1, v9}, Landroid/app/admin/HtcIfDevicePolicyManager;->setPasswordAllowSimple(Landroid/content/ComponentName;Z)V

    .line 528
    :goto_2
    const-string v10, "1"

    iget-object v11, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 529
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    if-nez v10, :cond_8

    .line 530
    invoke-interface {v2, v1, v8}, Landroid/app/admin/HtcIfDevicePolicyManager;->setPasswordComplexity(Landroid/content/ComponentName;I)V

    .line 538
    :goto_3
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordHistory:Ljava/lang/String;

    if-nez v10, :cond_a

    .line 539
    invoke-interface {v2, v1, v8}, Landroid/app/admin/HtcIfDevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 540
    invoke-virtual {v2, v1, v8}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 546
    :goto_4
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    if-nez v10, :cond_b

    .line 547
    invoke-interface {v2, v1, v8}, Landroid/app/admin/HtcIfDevicePolicyManager;->setHTCPasswordExpiration(Landroid/content/ComponentName;I)V

    .line 553
    :goto_5
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxInactivityTimeDeviceLock:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 554
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxInactivityTimeDeviceLock:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    mul-int/lit16 v5, v10, 0x3e8

    .line 555
    .local v5, maxInactiveTime:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout"

    const/4 v12, -0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 556
    .local v7, systemInactiveTime:I
    int-to-long v10, v5

    invoke-virtual {v2, v1, v10, v11}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 558
    if-gt v7, v5, :cond_0

    if-gez v7, :cond_1

    :cond_0
    if-eqz v5, :cond_1

    .line 561
    :try_start_0
    invoke-static {p0, v5}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->resetScreenTime(Landroid/content/Context;I)V

    .line 562
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.htc.intent.action.MAX_INACTIVITY_TIME_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    .local v4, intent:Landroid/content/Intent;
    const-string v10, "com.htc.intent.extra.PREVIOUS_SCREEN_TIMEOUT"

    invoke-virtual {v4, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #maxInactiveTime:I
    .end local v7           #systemInactiveTime:I
    :cond_1
    :goto_6
    invoke-static {}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->supportSDEncryption()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 573
    const/4 v6, 0x0

    .line 574
    .local v6, sdEncryption:Z
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    const-string v11, "1"

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 575
    if-nez v6, :cond_2

    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    const-string v11, "1"

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_2
    move v6, v9

    .line 576
    :goto_7
    invoke-interface {v2, v1, v6}, Landroid/app/admin/HtcIfDevicePolicyManager;->setSDEncryptionEnable(Landroid/content/ComponentName;Z)V

    .line 578
    .end local v6           #sdEncryption:Z
    :cond_3
    iget-object v8, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireDeviceEncryption:Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 579
    iget-object v8, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireDeviceEncryption:Ljava/lang/String;

    const-string v9, "1"

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v2, v1, v8}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 583
    :cond_4
    invoke-static {p0, v2, p1}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->enforceLimitationPolicyToAdmin(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V

    .line 584
    return-void

    .line 510
    :cond_5
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MaxDevicePasswordFailedAttempts:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v1, v10}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    goto/16 :goto_0

    .line 516
    :cond_6
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordLength:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v1, v10}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    goto/16 :goto_1

    .line 524
    :cond_7
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSimpleDevicePassword:Ljava/lang/String;

    const-string v11, "1"

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 525
    .local v0, allowSimplePassword:Z
    invoke-interface {v2, v1, v0}, Landroid/app/admin/HtcIfDevicePolicyManager;->setPasswordAllowSimple(Landroid/content/ComponentName;Z)V

    goto/16 :goto_2

    .line 532
    .end local v0           #allowSimplePassword:Z
    :cond_8
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v2, v1, v10}, Landroid/app/admin/HtcIfDevicePolicyManager;->setPasswordComplexity(Landroid/content/ComponentName;I)V

    goto/16 :goto_3

    .line 535
    :cond_9
    invoke-interface {v2, v1, v8}, Landroid/app/admin/HtcIfDevicePolicyManager;->setPasswordComplexity(Landroid/content/ComponentName;I)V

    goto/16 :goto_3

    .line 542
    :cond_a
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordHistory:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v2, v1, v10}, Landroid/app/admin/HtcIfDevicePolicyManager;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 543
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordHistory:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v1, v10}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    goto/16 :goto_4

    .line 549
    :cond_b
    iget-object v10, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v2, v1, v10}, Landroid/app/admin/HtcIfDevicePolicyManager;->setHTCPasswordExpiration(Landroid/content/ComponentName;I)V

    goto/16 :goto_5

    .line 565
    .restart local v5       #maxInactiveTime:I
    .restart local v7       #systemInactiveTime:I
    :catch_0
    move-exception v3

    .line 566
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 567
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout"

    invoke-static {v10, v11, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    .end local v3           #e:Ljava/lang/Exception;
    .end local v5           #maxInactiveTime:I
    .end local v7           #systemInactiveTime:I
    .restart local v6       #sdEncryption:Z
    :cond_c
    move v6, v8

    .line 575
    goto/16 :goto_7
.end method

.method public static findDifferent(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Ljava/util/ArrayList;
    .locals 13
    .parameter "doc1"
    .parameter "doc2"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;",
            "Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v1, diffList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PROVISION_SUPPORTED:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v7, v0, v5

    .line 381
    .local v7, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 382
    .local v3, fld1:Ljava/lang/reflect/Field;
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 383
    .local v8, value1:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 384
    .local v4, fld2:Ljava/lang/reflect/Field;
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 385
    .local v9, value2:Ljava/lang/String;
    if-eqz v8, :cond_0

    if-nez v9, :cond_2

    .line 386
    :cond_0
    if-eq v8, v9, :cond_1

    .line 387
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v3           #fld1:Ljava/lang/reflect/Field;
    .end local v4           #fld2:Ljava/lang/reflect/Field;
    .end local v8           #value1:Ljava/lang/String;
    .end local v9           #value2:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 391
    .restart local v3       #fld1:Ljava/lang/reflect/Field;
    .restart local v4       #fld2:Ljava/lang/reflect/Field;
    .restart local v8       #value1:Ljava/lang/String;
    .restart local v9       #value2:Ljava/lang/String;
    :cond_2
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 392
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 394
    .end local v3           #fld1:Ljava/lang/reflect/Field;
    .end local v4           #fld2:Ljava/lang/reflect/Field;
    .end local v8           #value1:Ljava/lang/String;
    .end local v9           #value2:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 395
    .local v2, e:Ljava/lang/Exception;
    const-string v10, "ProvisionFileUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not supported!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 398
    .end local v2           #e:Ljava/lang/Exception;
    .end local v7           #name:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_4

    .line 399
    const/4 v1, 0x0

    .line 401
    .end local v1           #diffList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    return-object v1
.end method

.method public static getDeviceProvision(Landroid/content/Context;)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .locals 16
    .parameter "context"

    .prologue
    .line 305
    new-instance v14, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-direct {v14}, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;-><init>()V

    .line 306
    .local v14, provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    sget-boolean v0, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProvisionFileUtil"

    const-string v1, "getDeviceProvision() "

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 308
    .local v12, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 314
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 320
    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 321
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 324
    :cond_3
    sget-object v6, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PROVISION_SUPPORTED:[Ljava/lang/String;

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_6

    aget-object v13, v6, v10

    .line 326
    .local v13, name:Ljava/lang/String;
    :try_start_1
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 327
    .local v15, value:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 328
    .local v9, fld:Ljava/lang/reflect/Field;
    if-eqz v15, :cond_4

    .line 329
    invoke-virtual {v9, v14, v15}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 324
    .end local v9           #fld:Ljava/lang/reflect/Field;
    .end local v15           #value:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 317
    .end local v6           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v13           #name:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 318
    .local v8, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_5

    .line 321
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_5
    throw v0

    .line 331
    .restart local v6       #arr$:[Ljava/lang/String;
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v13       #name:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 332
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v0, "ProvisionFileUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 335
    .end local v8           #e:Ljava/lang/Exception;
    .end local v13           #name:Ljava/lang/String;
    :cond_6
    return-object v14
.end method

.method public static getPasswordQuality(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)I
    .locals 2
    .parameter "provisionDoc"

    .prologue
    .line 780
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 784
    const-string v0, "1"

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AlphanumericDevicePasswordRequired:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->MinDevicePasswordComplexCharacters:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 787
    const/high16 v0, 0x5

    .line 790
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x2

    goto :goto_0
.end method

.method public static getUnsupportList(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Ljava/util/ArrayList;
    .locals 3
    .parameter "policyDoc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 632
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v0, unsupportList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->supportSDEncryption()Z

    move-result v1

    if-nez v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 636
    :cond_1
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->DeviceEncryptionEnabled:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEMessages:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEMessages:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 645
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireSignedSMIMEMessages:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 647
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 648
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 651
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 654
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_6
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->UnapprovedInROMApplicationList:[Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->UnapprovedInROMApplicationList:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_7

    .line 657
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->UnapprovedInROMApplicationList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_7
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->ApprovedApplicationList:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->ApprovedApplicationList:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_8

    .line 660
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->ApprovedApplicationList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_8
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 663
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 665
    :cond_9
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedApplications:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedApplications:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 666
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowUnsignedApplications:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    :cond_a
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 669
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    :cond_b
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowPOPIMAPEmail:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowPOPIMAPEmail:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 672
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowPOPIMAPEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    :cond_c
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowIrDA:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowIrDA:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 675
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowIrDA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_d
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowDesktopSync:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowDesktopSync:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 678
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowDesktopSync:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_e
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMESoftCerts:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMESoftCerts:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 681
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowSMIMESoftCerts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    :cond_f
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowConsumerEmail:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowConsumerEmail:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 684
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowConsumerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_10
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowRemoteDesktop:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowRemoteDesktop:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 687
    sget-object v1, Lcom/htc/android/mail/eassvc/provision/EASProvision;->AllowRemoteDesktop:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 689
    :cond_11
    return-object v0
.end method

.method private static intCompare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "str1"
    .parameter "str2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 978
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 990
    :cond_0
    :goto_0
    return v2

    .line 980
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 981
    goto :goto_0

    .line 983
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 984
    .local v0, i1:I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 985
    .local v1, i2:I
    if-ne v0, v1, :cond_3

    .line 986
    const/4 v2, 0x0

    goto :goto_0

    .line 987
    :cond_3
    if-le v0, v1, :cond_0

    move v2, v3

    .line 988
    goto :goto_0
.end method

.method public static isAnyAccountProvision(Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;)Z
    .locals 4
    .parameter "exchangeList"

    .prologue
    const/4 v2, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/htc/android/mail/eassvc/common/ExchangeAccountList;->getAccountList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;

    .line 86
    .local v0, exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->account:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;->deleted:I

    if-eq v3, v2, :cond_0

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;->policySet:Lcom/htc/android/mail/eassvc/provision/EASPolicySet;

    iget-object v3, v3, Lcom/htc/android/mail/eassvc/provision/EASPolicySet;->provisionDoc:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-static {v3}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->needAdmin(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    .end local v0           #exSyncSources:Lcom/htc/android/mail/eassvc/common/ExchangeSyncSources;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEqual(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z
    .locals 13
    .parameter "doc1"
    .parameter "doc2"

    .prologue
    const/4 v9, 0x0

    .line 353
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PROVISION_SUPPORTED:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_5

    aget-object v6, v0, v4

    .line 355
    .local v6, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 356
    .local v2, fld1:Ljava/lang/reflect/Field;
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 357
    .local v7, value1:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 358
    .local v3, fld2:Ljava/lang/reflect/Field;
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 359
    .local v8, value2:Ljava/lang/String;
    if-eqz v7, :cond_0

    if-nez v8, :cond_4

    .line 360
    :cond_0
    if-ne v7, v8, :cond_2

    .line 353
    .end local v2           #fld1:Ljava/lang/reflect/Field;
    .end local v3           #fld2:Ljava/lang/reflect/Field;
    .end local v7           #value1:Ljava/lang/String;
    .end local v8           #value2:Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 363
    .restart local v2       #fld1:Ljava/lang/reflect/Field;
    .restart local v3       #fld2:Ljava/lang/reflect/Field;
    .restart local v7       #value1:Ljava/lang/String;
    .restart local v8       #value2:Ljava/lang/String;
    :cond_2
    sget-boolean v10, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "ProvisionFileUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "provision "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not the same.("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .end local v2           #fld1:Ljava/lang/reflect/Field;
    .end local v3           #fld2:Ljava/lang/reflect/Field;
    .end local v6           #name:Ljava/lang/String;
    .end local v7           #value1:Ljava/lang/String;
    .end local v8           #value2:Ljava/lang/String;
    :cond_3
    :goto_2
    return v9

    .line 367
    .restart local v2       #fld1:Ljava/lang/reflect/Field;
    .restart local v3       #fld2:Ljava/lang/reflect/Field;
    .restart local v6       #name:Ljava/lang/String;
    .restart local v7       #value1:Ljava/lang/String;
    .restart local v8       #value2:Ljava/lang/String;
    :cond_4
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 368
    sget-boolean v10, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v10, :cond_3

    const-string v10, "ProvisionFileUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "provision "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not the same("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 371
    .end local v2           #fld1:Ljava/lang/reflect/Field;
    .end local v3           #fld2:Ljava/lang/reflect/Field;
    .end local v7           #value1:Ljava/lang/String;
    .end local v8           #value2:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 372
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "ProvisionFileUtil"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not supported!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 375
    .end local v1           #e:Ljava/lang/Exception;
    .end local v6           #name:Ljava/lang/String;
    :cond_5
    const/4 v9, 0x1

    goto :goto_2
.end method

.method public static isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 339
    if-nez p0, :cond_1

    .line 340
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 342
    :goto_0
    return v0

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 342
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isFullySupport(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z
    .locals 3
    .parameter "policyDoc"

    .prologue
    const/4 v0, 0x0

    .line 410
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    invoke-static {}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->supportSDEncryption()Z

    move-result v1

    if-nez v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v0

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    :cond_2
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEMessages:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEMessages:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 423
    :cond_3
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptedSMIMEMessages:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    :cond_4
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireSignedSMIMEAlgorithm:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    :cond_5
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireEncryptionSMIMEAlgorithm:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 432
    :cond_6
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->UnapprovedInROMApplicationList:[Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->UnapprovedInROMApplicationList:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_0

    .line 435
    :cond_7
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->ApprovedApplicationList:[Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->ApprovedApplicationList:[Ljava/lang/String;

    array-length v1, v1

    if-gtz v1, :cond_0

    .line 438
    :cond_8
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 441
    :cond_9
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedApplications:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedApplications:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    :cond_a
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowUnsignedInstallationPackages:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    :cond_b
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowPOPIMAPEmail:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowPOPIMAPEmail:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    :cond_c
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowIrDA:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowIrDA:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    :cond_d
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowDesktopSync:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowDesktopSync:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 456
    :cond_e
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMEEncryptionAlgorithmNegotiation:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    :cond_f
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMESoftCerts:Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowSMIMESoftCerts:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    :cond_10
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowConsumerEmail:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowConsumerEmail:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    :cond_11
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowRemoteDesktop:Ljava/lang/String;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowRemoteDesktop:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isPasswordSufficient(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z
    .locals 9
    .parameter "context"
    .parameter "provisionDoc"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 810
    if-nez p1, :cond_1

    .line 834
    :cond_0
    :goto_0
    return v6

    .line 813
    :cond_1
    const-string v8, "device_policy"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 814
    .local v1, dpManager:Landroid/app/admin/DevicePolicyManager;
    new-instance v0, Landroid/content/ComponentName;

    const-class v8, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;

    invoke-direct {v0, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 816
    .local v0, deviceAdmin:Landroid/content/ComponentName;
    iget-object v2, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    .line 817
    .local v2, enablePassword:Ljava/lang/String;
    const-string v8, "1"

    invoke-static {v2, v8}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 820
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_2

    move v6, v7

    .line 822
    goto :goto_0

    .line 824
    :cond_2
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v5

    .line 825
    .local v5, passSufficient:Z
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordExpiration:Ljava/lang/String;

    .line 826
    .local v4, passExpire:Ljava/lang/String;
    const/4 v3, -0x1

    .line 827
    .local v3, expireDay:I
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 828
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 830
    :cond_3
    if-eqz v5, :cond_4

    if-lez v3, :cond_0

    invoke-static {p0, v3}, Lcom/htc/android/mail/eassvc/provision/EASDeviceAdmin;->isPasswordExpire(Landroid/content/Context;I)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_4
    move v6, v7

    .line 834
    goto :goto_0
.end method

.method private static maxInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 995
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1005
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 997
    .restart local p1
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, p0

    .line 998
    goto :goto_0

    .line 1000
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1001
    .local v0, i1:I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1002
    .local v1, i2:I
    if-lt v0, v1, :cond_0

    move-object p1, p0

    .line 1003
    goto :goto_0
.end method

.method private static minInt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 1010
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 1012
    .restart local p1
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object p1, p0

    .line 1013
    goto :goto_0

    .line 1015
    :cond_2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1016
    .local v0, i1:I
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1017
    .local v1, i2:I
    if-ge v0, v1, :cond_0

    move-object p1, p0

    .line 1020
    goto :goto_0
.end method

.method public static needAdmin(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z
    .locals 4
    .parameter "policyDoc"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 472
    if-nez p0, :cond_1

    .line 499
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    const-string v2, "1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 476
    goto :goto_0

    .line 478
    :cond_2
    const-string v2, "1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowWiFi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    move v0, v1

    .line 479
    goto :goto_0

    .line 481
    :cond_3
    const-string v2, "2"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBluetooth:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 482
    goto :goto_0

    .line 484
    :cond_4
    const-string v2, "1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowInternetSharing:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 485
    goto :goto_0

    .line 487
    :cond_5
    const-string v2, "1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowCamera:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    move v0, v1

    .line 488
    goto :goto_0

    .line 490
    :cond_6
    const-string v2, "1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowBrowser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 491
    goto :goto_0

    .line 493
    :cond_7
    const-string v2, "1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowTextMessaging:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move v0, v1

    .line 494
    goto :goto_0

    .line 496
    :cond_8
    const-string v2, "1"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->AllowStorageCard:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 497
    goto :goto_0
.end method

.method public static needEncryptDisk(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z
    .locals 7
    .parameter "context"
    .parameter "policyDoc"

    .prologue
    const/4 v3, 0x0

    .line 892
    const/4 v2, 0x0

    .line 893
    .local v2, need:Z
    iget-object v4, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireDeviceEncryption:Ljava/lang/String;

    const-string v5, "1"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 896
    .local v3, needDiskEncrypt:Z
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "data_encryption"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 898
    .local v0, deviceEncrypt:Z
    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 899
    const/4 v2, 0x1

    :cond_1
    move v3, v2

    .line 905
    .end local v0           #deviceEncrypt:Z
    .end local v3           #needDiskEncrypt:Z
    :goto_0
    return v3

    .line 901
    .restart local v3       #needDiskEncrypt:Z
    :catch_0
    move-exception v1

    .line 902
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static needEncryptSdCard(Landroid/content/Context;Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Z
    .locals 9
    .parameter "context"
    .parameter "policyDoc"

    .prologue
    const/4 v4, 0x0

    .line 866
    invoke-static {}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->supportSDEncryption()Z

    move-result v6

    if-nez v6, :cond_1

    .line 889
    :cond_0
    :goto_0
    return v4

    .line 869
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 870
    .local v5, status:Ljava/lang/String;
    invoke-static {}, Lcom/htc/android/mail/util/StorageControl;->isSDCardAvailable()Z

    move-result v2

    .line 871
    .local v2, isSDAvaliable:Z
    if-nez v2, :cond_2

    const-string v6, "mounted_ro"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 875
    :cond_2
    const/4 v3, 0x0

    .line 876
    .local v3, need:Z
    iget-object v6, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DevicePasswordEnabled:Ljava/lang/String;

    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->DeviceEncryptionEnabled:Ljava/lang/String;

    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->RequireStorageCardEncryption:Ljava/lang/String;

    const-string v7, "1"

    invoke-static {v6, v7}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    const/4 v4, 0x1

    .line 880
    .local v4, needSdEncrypt:Z
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sd_encryption"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 882
    .local v0, deviceEncrypt:Z
    if-eqz v4, :cond_5

    if-nez v0, :cond_5

    .line 883
    const/4 v3, 0x1

    :cond_5
    move v4, v3

    .line 889
    goto :goto_0

    .line 885
    .end local v0           #deviceEncrypt:Z
    :catch_0
    move-exception v1

    .line 886
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized printProvisionData121(JLcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    .locals 11
    .parameter "accountId"
    .parameter "provisionDoc"

    .prologue
    .line 95
    const-class v8, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PROVISION_SUPPORTED:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .local v5, name:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 98
    .local v2, fld:Ljava/lang/reflect/Field;
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 99
    .local v6, value:Ljava/lang/String;
    sget-boolean v7, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ProvisionFileUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Provision] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, p0, p1, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 95
    .end local v2           #fld:Ljava/lang/reflect/Field;
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    sget-boolean v7, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ProvisionFileUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Provision] Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "not support."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, p0, p1, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 95
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #name:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 104
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_1
    monitor-exit v8

    return-void
.end method

.method public static provisionDocToBundle(Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)Landroid/os/Bundle;
    .locals 11
    .parameter "provisionDoc"

    .prologue
    .line 764
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 765
    .local v1, bundle:Landroid/os/Bundle;
    sget-object v0, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PROVISION_SUPPORTED:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v0, v4

    .line 767
    .local v6, name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 768
    .local v3, fld:Ljava/lang/reflect/Field;
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 769
    .local v7, value:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 770
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    .end local v3           #fld:Ljava/lang/reflect/Field;
    .end local v7           #value:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 772
    :catch_0
    move-exception v2

    .line 773
    .local v2, e:Ljava/lang/Exception;
    sget-boolean v8, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "ProvisionFileUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[Provision] Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "not support."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/android/mail/eassvc/util/EASLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 776
    .end local v2           #e:Ljava/lang/Exception;
    .end local v6           #name:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static declared-synchronized readProvisionData(Landroid/content/Context;J)Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .locals 19
    .parameter "context"
    .parameter "accountId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 217
    const-class v16, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;

    monitor-enter v16

    :try_start_0
    sget-boolean v15, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v15, :cond_0

    const-string v15, "ProvisionFileUtil"

    const-string v17, "readProvisionData() "

    move-wide/from16 v0, p1

    move-object/from16 v2, v17

    invoke-static {v15, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 218
    :cond_0
    new-instance v11, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;

    invoke-direct {v11}, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    .local v11, provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    const/4 v9, 0x0

    .line 220
    .local v9, prefReader:Ljava/io/FileReader;
    const/4 v12, 0x0

    .line 223
    .local v12, provisionPreFile:Ljava/io/File;
    if-nez v12, :cond_1

    .line 224
    :try_start_1
    invoke-static/range {p0 .. p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v5

    .line 225
    .local v5, dataFilePath:Ljava/io/File;
    new-instance v13, Ljava/io/File;

    const-string v15, "eas_provision.prefs"

    invoke-direct {v13, v5, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .end local v12           #provisionPreFile:Ljava/io/File;
    .local v13, provisionPreFile:Ljava/io/File;
    move-object v12, v13

    .line 229
    .end local v5           #dataFilePath:Ljava/io/File;
    .end local v13           #provisionPreFile:Ljava/io/File;
    .restart local v12       #provisionPreFile:Ljava/io/File;
    :cond_1
    :try_start_2
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    .line 230
    sget-boolean v15, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v15, :cond_2

    const-string v15, "ProvisionFileUtil"

    const-string v17, "readProvisionData(): Do not have provision"

    move-wide/from16 v0, p1

    move-object/from16 v2, v17

    invoke-static {v15, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 231
    :cond_2
    const/4 v11, 0x0

    .line 275
    .end local v11           #provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    if-eqz v9, :cond_3

    .line 277
    :try_start_3
    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 284
    :cond_3
    :goto_0
    monitor-exit v16

    return-object v11

    .line 233
    .restart local v11       #provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :cond_4
    :try_start_4
    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 239
    .end local v9           #prefReader:Ljava/io/FileReader;
    .local v10, prefReader:Ljava/io/FileReader;
    :try_start_5
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 240
    .local v8, parser:Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v8, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 242
    const-string v15, "Provision"

    invoke-static {v8, v15}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x0

    .line 245
    .local v3, curTagName:Ljava/lang/String;
    const/4 v4, 0x0

    .line 247
    .local v4, curTagVal:Ljava/lang/String;
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_a

    .line 248
    const/4 v15, 0x2

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    .line 249
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 250
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 269
    :cond_5
    :goto_2
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 275
    .end local v3           #curTagName:Ljava/lang/String;
    .end local v4           #curTagVal:Ljava/lang/String;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catchall_0
    move-exception v15

    move-object v9, v10

    .end local v10           #prefReader:Ljava/io/FileReader;
    .restart local v9       #prefReader:Ljava/io/FileReader;
    :goto_3
    if-eqz v9, :cond_6

    .line 277
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 275
    :cond_6
    :goto_4
    :try_start_7
    throw v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 217
    .end local v9           #prefReader:Ljava/io/FileReader;
    .end local v11           #provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .end local v12           #provisionPreFile:Ljava/io/File;
    :catchall_1
    move-exception v15

    monitor-exit v16

    throw v15

    .line 234
    .restart local v9       #prefReader:Ljava/io/FileReader;
    .restart local v11       #provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    .restart local v12       #provisionPreFile:Ljava/io/File;
    :catch_0
    move-exception v6

    .line 235
    .local v6, e:Ljava/io/FileNotFoundException;
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 236
    const/4 v11, 0x0

    .line 275
    .end local v11           #provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    if-eqz v9, :cond_3

    .line 277
    :try_start_9
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_0

    .line 278
    :catch_1
    move-exception v6

    .line 279
    .local v6, e:Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 251
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #prefReader:Ljava/io/FileReader;
    .restart local v3       #curTagName:Ljava/lang/String;
    .restart local v4       #curTagVal:Ljava/lang/String;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #prefReader:Ljava/io/FileReader;
    .restart local v11       #provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :cond_7
    const/4 v15, 0x4

    :try_start_b
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v17

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 252
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v15, v0, :cond_5

    .line 253
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v4

    .line 255
    :try_start_c
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 256
    .local v7, fld:Ljava/lang/reflect/Field;
    sget-object v15, Lcom/htc/android/mail/eassvc/provision/EASProvision;->ApprovedApplicationList:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_8

    sget-object v15, Lcom/htc/android/mail/eassvc/provision/EASProvision;->UnapprovedInROMApplicationList:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 258
    :cond_8
    const-string v15, ","

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 259
    .local v14, values:[Ljava/lang/String;
    invoke-virtual {v7, v11, v14}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_2

    .line 263
    .end local v7           #fld:Ljava/lang/reflect/Field;
    .end local v14           #values:[Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 264
    .local v6, e:Ljava/lang/Exception;
    :try_start_d
    const-string v15, "ProvisionFileUtil"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " not supported!! "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-wide/from16 v0, p1

    move-object/from16 v2, v17

    invoke-static {v15, v0, v1, v2}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_2

    .line 261
    .end local v6           #e:Ljava/lang/Exception;
    .restart local v7       #fld:Ljava/lang/reflect/Field;
    :cond_9
    :try_start_e
    invoke-virtual {v7, v11, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_2

    .line 271
    .end local v7           #fld:Ljava/lang/reflect/Field;
    :cond_a
    :try_start_f
    sget-boolean v15, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v15, :cond_b

    .line 272
    move-wide/from16 v0, p1

    invoke-static {v0, v1, v11}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->printProvisionData121(JLcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 275
    :cond_b
    if-eqz v10, :cond_c

    .line 277
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :cond_c
    :goto_5
    move-object v9, v10

    .line 284
    .end local v10           #prefReader:Ljava/io/FileReader;
    .restart local v9       #prefReader:Ljava/io/FileReader;
    goto/16 :goto_0

    .line 278
    .end local v3           #curTagName:Ljava/lang/String;
    .end local v4           #curTagVal:Ljava/lang/String;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v6

    .line 279
    .local v6, e:Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 278
    .end local v6           #e:Ljava/io/IOException;
    .end local v11           #provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :catch_4
    move-exception v6

    .line 279
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 278
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #prefReader:Ljava/io/FileReader;
    .restart local v3       #curTagName:Ljava/lang/String;
    .restart local v4       #curTagVal:Ljava/lang/String;
    .restart local v8       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #prefReader:Ljava/io/FileReader;
    .restart local v11       #provisionData:Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;
    :catch_5
    move-exception v6

    .line 279
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_5

    .line 275
    .end local v3           #curTagName:Ljava/lang/String;
    .end local v4           #curTagVal:Ljava/lang/String;
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #prefReader:Ljava/io/FileReader;
    .restart local v9       #prefReader:Ljava/io/FileReader;
    :catchall_2
    move-exception v15

    goto/16 :goto_3
.end method

.method public static resetScreenTime(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "maxTimeout"

    .prologue
    .line 909
    const/4 v2, -0x1

    .line 910
    .local v2, maxDeviceMatch:I
    const/4 v5, 0x0

    .line 913
    .local v5, valueArray:[I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 914
    .local v3, r:Landroid/content/res/Resources;
    const-string v6, "screen_timeout_values"

    const-string v7, "array"

    const-string v8, "com.android.settings"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 915
    .local v4, resid:I
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->stringArrayToIntArray([Ljava/lang/String;)[I

    move-result-object v5

    .line 916
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 918
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_3

    .line 920
    aget v6, v5, v1

    if-gez v6, :cond_2

    .line 921
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    add-int/lit8 v8, v1, -0x1

    aget v8, v5, v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    add-int/lit8 v6, v1, -0x1

    aget v2, v5, v6

    .line 945
    :cond_0
    :goto_1
    if-lez v2, :cond_1

    .line 946
    if-le p1, v2, :cond_6

    .line 947
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 958
    .end local v1           #i:I
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    :cond_1
    :goto_2
    return-void

    .line 926
    .restart local v1       #i:I
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #resid:I
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    aget v8, v5, v1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 929
    aget v2, v5, v1

    .line 931
    goto :goto_1

    .line 932
    :cond_3
    if-nez v1, :cond_4

    const/4 v6, 0x0

    aget v6, v5, v6

    if-le v6, p1, :cond_4

    .line 933
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    const/4 v8, 0x0

    aget v8, v5, v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 935
    const/4 v6, 0x0

    aget v2, v5, v6

    .line 936
    goto :goto_1

    .line 937
    :cond_4
    aget v6, v5, v1

    if-gt v6, p1, :cond_5

    add-int/lit8 v6, v1, 0x1

    aget v6, v5, v6

    if-le v6, p1, :cond_5

    .line 939
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    aget v8, v5, v1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 941
    aget v2, v5, v1

    .line 942
    goto :goto_1

    .line 916
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 950
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_off_timeout"

    invoke-static {v6, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 955
    .end local v1           #i:I
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #resid:I
    :catch_0
    move-exception v0

    .line 956
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static stringArrayToIntArray([Ljava/lang/String;)[I
    .locals 3
    .parameter "strArr"

    .prologue
    .line 961
    if-nez p0, :cond_1

    .line 962
    const/4 v1, 0x0

    .line 968
    :cond_0
    return-object v1

    .line 964
    :cond_1
    array-length v2, p0

    new-array v1, v2, [I

    .line 965
    .local v1, intArr:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 966
    aget-object v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 965
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static supportSDEncryption()Z
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized writeProvisionData(Landroid/content/Context;JLcom/htc/android/mail/eassvc/provision/EASProvisionDoc;)V
    .locals 25
    .parameter "context"
    .parameter "accountId"
    .parameter "provisionDoc"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    const-class v24, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;

    monitor-enter v24

    :try_start_0
    sget-boolean v3, Lcom/htc/android/mail/eassvc/provision/ProvisionUtil;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "ProvisionFileUtil"

    const-string v4, "- writeProvisionData"

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;JLjava/lang/String;)V

    .line 109
    :cond_0
    if-nez p3, :cond_2

    .line 110
    const-string v3, "ProvisionFileUtil"

    const-string v4, "writeProvisionData failed: provisionDoc is null"

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :cond_1
    :goto_0
    monitor-exit v24

    return-void

    .line 113
    :cond_2
    const/16 v17, 0x0

    .line 114
    .local v17, provisionPreFile:Ljava/io/File;
    const/4 v12, 0x0

    .line 127
    .local v12, fos:Ljava/io/FileOutputStream;
    if-nez v17, :cond_3

    .line 128
    :try_start_1
    invoke-static/range {p0 .. p2}, Lcom/htc/android/mail/eassvc/util/AccountUtil;->getAccountConfigPath(Landroid/content/Context;J)Ljava/io/File;

    move-result-object v9

    .line 129
    .local v9, dataFilePath:Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string v3, "eas_provision.prefs"

    move-object/from16 v0, v18

    invoke-direct {v0, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .end local v17           #provisionPreFile:Ljava/io/File;
    .local v18, provisionPreFile:Ljava/io/File;
    move-object/from16 v17, v18

    .line 131
    .end local v9           #dataFilePath:Ljava/io/File;
    .end local v18           #provisionPreFile:Ljava/io/File;
    .restart local v17       #provisionPreFile:Ljava/io/File;
    :cond_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v21

    .line 132
    .local v21, tempFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 134
    new-instance v20, Ljava/io/File;

    invoke-direct/range {v20 .. v21}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v20, tempFile:Ljava/io/File;
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 137
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .local v13, fos:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v19, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 139
    .local v19, serializer:Lorg/xmlpull/v1/XmlSerializer;
    const-string v3, "utf-8"

    move-object/from16 v0, v19

    invoke-interface {v0, v13, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 140
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 141
    const-string v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v4, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 143
    const/4 v3, 0x0

    const-string v4, "Provision"

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    sget-object v8, Lcom/htc/android/mail/eassvc/common/EASSyncCommon;->EAS_PROVISION_SUPPORTED:[Ljava/lang/String;

    .local v8, arr$:[Ljava/lang/String;
    array-length v15, v8

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_1
    if-ge v14, v15, :cond_7

    aget-object v16, v8, v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    .local v16, name:Ljava/lang/String;
    :try_start_3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v11

    .line 147
    .local v11, fld:Ljava/lang/reflect/Field;
    sget-object v3, Lcom/htc/android/mail/eassvc/provision/EASProvision;->ApprovedApplicationList:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lcom/htc/android/mail/eassvc/provision/EASProvision;->UnapprovedInROMApplicationList:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 149
    :cond_4
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v0, v3

    check-cast v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 150
    .local v23, values:[Ljava/lang/String;
    if-eqz v23, :cond_5

    .line 151
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    const-string v3, ","

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 153
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    .end local v11           #fld:Ljava/lang/reflect/Field;
    .end local v23           #values:[Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 156
    .restart local v11       #fld:Ljava/lang/reflect/Field;
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 157
    .local v22, value:Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 158
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const/4 v3, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-interface {v0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 163
    .end local v11           #fld:Ljava/lang/reflect/Field;
    .end local v22           #value:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 164
    .local v10, e:Ljava/lang/Exception;
    :try_start_4
    const-string v3, "ProvisionFileUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not supported!!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1, v4}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 203
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #e:Ljava/lang/Exception;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v16           #name:Ljava/lang/String;
    .end local v19           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v10

    move-object v12, v13

    .line 204
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v20           #tempFile:Ljava/io/File;
    .end local v21           #tempFilePath:Ljava/lang/String;
    .local v10, e:Ljava/io/IOException;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v3, "ProvisionFileUtil"

    const-string v4, "WriteGlobalInfo: "

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1, v4, v10}, Lcom/htc/android/mail/eassvc/util/EASLog;->e(Ljava/lang/String;JLjava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 206
    if-eqz v12, :cond_1

    .line 208
    :try_start_6
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 209
    :catch_2
    move-exception v10

    .line 210
    :try_start_7
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 108
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .end local v17           #provisionPreFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v24

    throw v3

    .line 169
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v17       #provisionPreFile:Ljava/io/File;
    .restart local v19       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20       #tempFile:Ljava/io/File;
    .restart local v21       #tempFilePath:Ljava/lang/String;
    :cond_7
    :try_start_8
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->protocolVersion:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 170
    const/4 v3, 0x0

    const-string v4, "protocolVersion"

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/htc/android/mail/eassvc/provision/EASProvisionDoc;->protocolVersion:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    const/4 v3, 0x0

    const-string v4, "protocolVersion"

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    :cond_8
    const/4 v3, 0x0

    const-string v4, "Provision"

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    invoke-interface/range {v19 .. v19}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 179
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->flush()V

    .line 180
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V

    .line 185
    new-instance v3, Ljava/io/FileInputStream;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    .line 186
    .local v2, inChannel:Ljava/nio/channels/FileChannel;
    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v7

    .line 189
    .local v7, outChannel:Ljava/nio/channels/FileChannel;
    const-wide/16 v3, 0x0

    :try_start_9
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 193
    if-eqz v2, :cond_9

    .line 194
    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 195
    const/4 v2, 0x0

    .line 197
    :cond_9
    if-eqz v7, :cond_a

    .line 198
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    :goto_4
    const/4 v7, 0x0

    .line 202
    :cond_a
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 206
    if-eqz v13, :cond_b

    .line 208
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :cond_b
    :goto_5
    move-object v12, v13

    .line 213
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 190
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v10

    .line 191
    .restart local v10       #e:Ljava/io/IOException;
    :try_start_c
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 193
    if-eqz v2, :cond_c

    .line 194
    :try_start_d
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 195
    const/4 v2, 0x0

    .line 197
    :cond_c
    if-eqz v7, :cond_a

    .line 198
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1

    goto :goto_4

    .line 206
    .end local v2           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v7           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #e:Ljava/io/IOException;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v19           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v20           #tempFile:Ljava/io/File;
    .end local v21           #tempFilePath:Ljava/lang/String;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :goto_6
    if-eqz v12, :cond_d

    .line 208
    :try_start_e
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 206
    :cond_d
    :goto_7
    :try_start_f
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 193
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #inChannel:Ljava/nio/channels/FileChannel;
    .restart local v7       #outChannel:Ljava/nio/channels/FileChannel;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v19       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20       #tempFile:Ljava/io/File;
    .restart local v21       #tempFilePath:Ljava/lang/String;
    :catchall_2
    move-exception v3

    if-eqz v2, :cond_e

    .line 194
    :try_start_10
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 195
    const/4 v2, 0x0

    .line 197
    :cond_e
    if-eqz v7, :cond_f

    .line 198
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    const/4 v7, 0x0

    .line 193
    :cond_f
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    .line 209
    .end local v2           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v7           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v19           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v20           #tempFile:Ljava/io/File;
    .end local v21           #tempFilePath:Ljava/lang/String;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v10

    .line 210
    .restart local v10       #e:Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 209
    .end local v10           #e:Ljava/io/IOException;
    .end local v12           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #inChannel:Ljava/nio/channels/FileChannel;
    .restart local v7       #outChannel:Ljava/nio/channels/FileChannel;
    .restart local v8       #arr$:[Ljava/lang/String;
    .restart local v13       #fos:Ljava/io/FileOutputStream;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v19       #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v20       #tempFile:Ljava/io/File;
    .restart local v21       #tempFilePath:Ljava/lang/String;
    :catch_5
    move-exception v10

    .line 210
    .restart local v10       #e:Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_5

    .line 206
    .end local v2           #inChannel:Ljava/nio/channels/FileChannel;
    .end local v7           #outChannel:Ljava/nio/channels/FileChannel;
    .end local v8           #arr$:[Ljava/lang/String;
    .end local v10           #e:Ljava/io/IOException;
    .end local v13           #fos:Ljava/io/FileOutputStream;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v19           #serializer:Lorg/xmlpull/v1/XmlSerializer;
    .end local v20           #tempFile:Ljava/io/File;
    .end local v21           #tempFilePath:Ljava/lang/String;
    .restart local v12       #fos:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    goto :goto_6

    .line 203
    :catch_6
    move-exception v10

    goto/16 :goto_3
.end method

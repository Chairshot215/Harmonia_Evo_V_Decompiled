.class public Lcom/android/providers/contacts/VoicemailPermissions;
.super Ljava/lang/Object;
.source "VoicemailPermissions.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/providers/contacts/VoicemailPermissions;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method

.method private callerHasPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private packageHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"
    .parameter "permission"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/providers/contacts/VoicemailPermissions;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public callerHasFullAccess()Z
    .locals 1

    .prologue
    .line 41
    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public callerHasOwnVoicemailAccess()Z
    .locals 1

    .prologue
    .line 36
    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkCallerHasFullAccess()V
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasFullAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller must have permissions %s AND %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_0
    return-void
.end method

.method public checkCallerHasOwnVoicemailAccess()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/providers/contacts/VoicemailPermissions;->callerHasOwnVoicemailAccess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller must have permission: com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    return-void
.end method

.method public packageHasFullAccess(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 78
    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.voicemail.permission.READ_WRITE_ALL_VOICEMAIL"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public packageHasOwnVoicemailAccess(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 72
    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/VoicemailPermissions;->packageHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

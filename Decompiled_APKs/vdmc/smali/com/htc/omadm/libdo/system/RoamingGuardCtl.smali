.class public Lcom/htc/omadm/libdo/system/RoamingGuardCtl;
.super Ljava/lang/Object;
.source "RoamingGuardCtl.java"


# static fields
.field public static DEFAULT_FALSE:Ljava/lang/String; = null

.field public static DEFAULT_TRUE:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "RoamingGuardCtl"

.field public static ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

.field public static ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

.field private static me:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "domestic"

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    .line 19
    const-string v0, "international"

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    .line 20
    const-string v0, "Y"

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DEFAULT_TRUE:Ljava/lang/String;

    .line 21
    const-string v0, "N"

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DEFAULT_FALSE:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->me:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    .line 29
    const-string v0, "domestic"

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    .line 30
    const-string v0, "international"

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static Init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    new-instance v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-direct {v0, p0}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->me:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    .line 34
    return-void
.end method

.method public static getSingleton()Lcom/htc/omadm/libdo/system/RoamingGuardCtl;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->me:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    invoke-static {}, Lcom/htc/omadm/rule/Factory;->GetContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->me:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    .line 39
    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->me:Lcom/htc/omadm/libdo/system/RoamingGuardCtl;

    return-object v0
.end method

.method private transferData(Z)Ljava/lang/String;
    .locals 1
    .parameter "szData"

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    sget-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DEFAULT_TRUE:Ljava/lang/String;

    .line 51
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DEFAULT_FALSE:Ljava/lang/String;

    goto :goto_0
.end method

.method private transferData(Ljava/lang/String;)Z
    .locals 1
    .parameter "szData"

    .prologue
    .line 43
    sget-object v0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->DEFAULT_TRUE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "write"
    .parameter "szData"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    const-string v3, "RoamingGuardCtl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BarDomVoiceRoamingEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    if-eqz p1, :cond_1

    .line 59
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 60
    .local v0, value:Z
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 64
    .end local v0           #value:Z
    .end local p2
    :goto_1
    return-object p2

    .restart local v0       #value:Z
    .restart local p2
    :cond_0
    move v1, v2

    .line 60
    goto :goto_0

    .line 64
    .end local v0           #value:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 67
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BarDomVoiceRoamingForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    if-eqz p1, :cond_0

    .line 70
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 71
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 75
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public DomDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 187
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DomDataGuardEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz p1, :cond_0

    .line 190
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 191
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 195
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public DomDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 199
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DomDataGuardForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    if-eqz p1, :cond_0

    .line 202
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 203
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 207
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public DomDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "write"
    .parameter "szData"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 213
    const-string v3, "RoamingGuardCtl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DomDataRoamingEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    if-eqz p1, :cond_1

    .line 216
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 217
    .local v0, value:Z
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 221
    .end local v0           #value:Z
    .end local p2
    :goto_1
    return-object p2

    .restart local v0       #value:Z
    .restart local p2
    :cond_0
    move v1, v2

    .line 217
    goto :goto_0

    .line 221
    .end local v0           #value:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public DomDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 224
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DomDataRoamingForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    if-eqz p1, :cond_0

    .line 227
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 228
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 232
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public DomVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 237
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DomVoiceGuardEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    if-eqz p1, :cond_0

    .line 240
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 241
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 245
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public DomVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 249
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DomVoiceGuardForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    if-eqz p1, :cond_0

    .line 252
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 253
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setVoiceRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 257
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public DomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 261
    invoke-virtual {p0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->BarDomVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public DomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 264
    invoke-virtual {p0, p1, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->BarDomVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IntlDataGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 81
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntlDataGuardEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    if-eqz p1, :cond_0

    .line 84
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 89
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public IntlDataGuardForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 94
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntlDataGuardForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 98
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 102
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public IntlDataRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "write"
    .parameter "szData"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    const-string v3, "RoamingGuardCtl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IntlDataRoamingEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz p1, :cond_1

    .line 111
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 112
    .local v0, value:Z
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 116
    .end local v0           #value:Z
    .end local p2
    :goto_1
    return-object p2

    .restart local v0       #value:Z
    .restart local p2
    :cond_0
    move v1, v2

    .line 112
    goto :goto_0

    .line 116
    .end local v0           #value:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public IntlDataRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 120
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntlDataRoamingForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-eqz p1, :cond_0

    .line 123
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 124
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 128
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isDataRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public IntlDialingEnabled(Ljava/lang/String;)V
    .locals 4
    .parameter "szData"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 270
    .local v0, value:Z
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntlDialingEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public IntlDialingForced(Ljava/lang/String;)V
    .locals 4
    .parameter "szData"

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 275
    .local v0, value:Z
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntlDialingForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return-void
.end method

.method public IntlVoiceGuardEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 135
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntlVoiceGuardEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_0

    .line 138
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 139
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 143
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingGuardAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public IntlVoiceGuardForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 147
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntlVoiceGuardForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    if-eqz p1, :cond_0

    .line 150
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 151
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setVoiceRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 155
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingGuardBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public IntlVoiceRoamingEnabled(ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "write"
    .parameter "szData"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    const-string v3, "RoamingGuardCtl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IntlVoiceRoamingEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    if-eqz p1, :cond_1

    .line 164
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 165
    .local v0, value:Z
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    invoke-static {v3, v4, v1}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 169
    .end local v0           #value:Z
    .end local p2
    :goto_1
    return-object p2

    .restart local v0       #value:Z
    .restart local p2
    :cond_0
    move v1, v2

    .line 165
    goto :goto_0

    .line 169
    .end local v0           #value:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingAllowed(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public IntlVoiceRoamingForced(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "write"
    .parameter "szData"

    .prologue
    .line 173
    const-string v1, "RoamingGuardCtl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IntlVoiceRoamingForced: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/omadm/util/DMLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-eqz p1, :cond_0

    .line 176
    invoke-direct {p0, p2}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Ljava/lang/String;)Z

    move-result v0

    .line 177
    .local v0, value:Z
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->setVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 181
    .end local v0           #value:Z
    .end local p2
    :goto_0
    return-object p2

    .restart local p2
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/htc/wrap/android/provider/HtcWrapSettings$Secure;->isVoiceRoamingBlocked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/htc/omadm/libdo/system/RoamingGuardCtl;->transferData(Z)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

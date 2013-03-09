.class public Lcom/htc/reportagent/util/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final ROM_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final _DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "[0-9]+[\\.][0-9]+[\\.][0-9]+[\\.][0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/reportagent/util/Security;->ROM_VERSION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isRomVersionLegal(Ljava/lang/String;)Z
    .locals 3
    .parameter "buildDesc"

    .prologue
    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    .line 19
    :cond_0
    sget-object v2, Lcom/htc/reportagent/util/Security;->ROM_VERSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 20
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    .line 27
    .local v0, found:Z
    goto :goto_0
.end method

.method public static isSecureROM()Z
    .locals 7

    .prologue
    .line 31
    const-string v5, ""

    invoke-static {v5}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 32
    .local v4, romDesc:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/reportagent/util/Security;->isRomVersionLegal(Ljava/lang/String;)Z

    move-result v1

    .line 33
    .local v1, isRomVersionLegal:Z
    invoke-static {}, Lcom/htc/reportagent/util/Utils;->isUnlockedDevice()Z

    move-result v3

    .line 34
    .local v3, isUnlockedDevice:Z
    invoke-static {}, Lcom/htc/reportagent/pbdata/DeviceInfoHelper;->isHackerDevice()Z

    move-result v0

    .line 35
    .local v0, isHackedSN:Z
    if-eqz v1, :cond_1

    if-nez v3, :cond_1

    if-nez v0, :cond_1

    const/4 v2, 0x1

    .line 36
    .local v2, isSecure:Z
    :goto_0
    if-nez v2, :cond_0

    .line 37
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRomVersionLegal = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isUnlockedDevice = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isHackedSN = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " => isSecure = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/htc/reportagent/util/Log;->d(Ljava/lang/String;)I

    .line 39
    :cond_0
    return v2

    .line 35
    .end local v2           #isSecure:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

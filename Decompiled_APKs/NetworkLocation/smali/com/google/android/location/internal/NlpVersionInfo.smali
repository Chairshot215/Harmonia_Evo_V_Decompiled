.class public final Lcom/google/android/location/internal/NlpVersionInfo;
.super Ljava/lang/Object;
.source "NlpVersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;
    }
.end annotation


# static fields
.field public static final UNAVAILABLE:Lcom/google/android/location/internal/NlpVersionInfo;


# instance fields
.field public final apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

.field public final intent:Landroid/content/Intent;

.field public final maxProtocolVersion:I

.field public final minProtocolVersion:I

.field public final releaseVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 51
    new-instance v0, Lcom/google/android/location/internal/NlpVersionInfo;

    sget-object v1, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->NONE:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    const/4 v5, 0x0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/internal/NlpVersionInfo;-><init>(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;IIILandroid/content/Intent;)V

    sput-object v0, Lcom/google/android/location/internal/NlpVersionInfo;->UNAVAILABLE:Lcom/google/android/location/internal/NlpVersionInfo;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;IIILandroid/content/Intent;)V
    .locals 0
    .parameter "apk"
    .parameter "min"
    .parameter "max"
    .parameter "release"
    .parameter "intent"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/android/location/internal/NlpVersionInfo;->apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    .line 57
    iput p2, p0, Lcom/google/android/location/internal/NlpVersionInfo;->minProtocolVersion:I

    .line 58
    iput p3, p0, Lcom/google/android/location/internal/NlpVersionInfo;->maxProtocolVersion:I

    .line 59
    iput p4, p0, Lcom/google/android/location/internal/NlpVersionInfo;->releaseVersion:I

    .line 60
    iput-object p5, p0, Lcom/google/android/location/internal/NlpVersionInfo;->intent:Landroid/content/Intent;

    .line 61
    return-void
.end method

.method public static getNlpVersionInfo(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;Landroid/content/Context;)Lcom/google/android/location/internal/NlpVersionInfo;
    .locals 12
    .parameter "apk"
    .parameter "context"

    .prologue
    .line 76
    sget-object v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->NONE:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    if-ne p0, v0, :cond_0

    .line 77
    sget-object v0, Lcom/google/android/location/internal/NlpVersionInfo;->UNAVAILABLE:Lcom/google/android/location/internal/NlpVersionInfo;

    .line 97
    :goto_0
    return-object v0

    .line 79
    :cond_0
    new-instance v8, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->apkName:Ljava/lang/String;

    const-string v1, "com.google.android.location.internal.server.NetworkLocationService"

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .local v8, name:Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 84
    .local v9, pm:Landroid/content/pm/PackageManager;
    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {v9, v8, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 89
    .local v10, serviceInfo:Landroid/content/pm/ServiceInfo;
    iget-object v7, v10, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 90
    .local v7, metaData:Landroid/os/Bundle;
    if-eqz v7, :cond_1

    .line 91
    const-string v0, "minProtocolVersion"

    const v1, 0x7fffffff

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 92
    .local v2, minVersion:I
    const-string v0, "maxProtocolVersion"

    const/high16 v1, -0x8000

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 93
    .local v3, maxVersion:I
    const-string v0, "releaseVersion"

    const/4 v1, -0x1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 94
    .local v4, releaseVersion:I
    new-instance v5, Landroid/content/Intent;

    const-string v0, "nlpServiceIntent"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v5, intent:Landroid/content/Intent;
    new-instance v0, Lcom/google/android/location/internal/NlpVersionInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/location/internal/NlpVersionInfo;-><init>(Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;IIILandroid/content/Intent;)V

    goto :goto_0

    .line 85
    .end local v2           #minVersion:I
    .end local v3           #maxVersion:I
    .end local v4           #releaseVersion:I
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #metaData:Landroid/os/Bundle;
    .end local v10           #serviceInfo:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v6

    .line 86
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "NlpVersionInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, " not found"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    sget-object v0, Lcom/google/android/location/internal/NlpVersionInfo;->UNAVAILABLE:Lcom/google/android/location/internal/NlpVersionInfo;

    goto :goto_0

    .line 97
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7       #metaData:Landroid/os/Bundle;
    .restart local v10       #serviceInfo:Landroid/content/pm/ServiceInfo;
    :cond_1
    sget-object v0, Lcom/google/android/location/internal/NlpVersionInfo;->UNAVAILABLE:Lcom/google/android/location/internal/NlpVersionInfo;

    goto :goto_0
.end method


# virtual methods
.method public compatible(I)Z
    .locals 1
    .parameter "protocolVersion"

    .prologue
    .line 65
    iget v0, p0, Lcom/google/android/location/internal/NlpVersionInfo;->minProtocolVersion:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/location/internal/NlpVersionInfo;->maxProtocolVersion:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/android/location/internal/NlpVersionInfo;->apk:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " minProtocolVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/NlpVersionInfo;->minProtocolVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " maxProtocolVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/NlpVersionInfo;->maxProtocolVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " releaseVersion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/location/internal/NlpVersionInfo;->releaseVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

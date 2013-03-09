.class public final enum Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;
.super Ljava/lang/Enum;
.source "NlpVersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/internal/NlpVersionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NlpApk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

.field public static final enum ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

.field public static final enum NONE:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;


# instance fields
.field public final apkName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    const-string v1, "ANDROID"

    const-string v2, "com.google.android.location"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    .line 26
    new-instance v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    const-string v1, "NONE"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->NONE:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    sget-object v1, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->ANDROID:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->NONE:Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->$VALUES:[Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "apkName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->apkName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;
    .locals 1
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->$VALUES:[Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    invoke-virtual {v0}, [Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/internal/NlpVersionInfo$NlpApk;

    return-object v0
.end method

.class public final enum Lcom/android/settings/framework/util/log/HtcLog$LogType;
.super Ljava/lang/Enum;
.source "HtcLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/util/log/HtcLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/framework/util/log/HtcLog$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/framework/util/log/HtcLog$LogType;

.field public static final enum ASSERT:Lcom/android/settings/framework/util/log/HtcLog$LogType;

.field public static final enum DEBUG:Lcom/android/settings/framework/util/log/HtcLog$LogType;

.field public static final enum ERROR:Lcom/android/settings/framework/util/log/HtcLog$LogType;

.field public static final enum INFO:Lcom/android/settings/framework/util/log/HtcLog$LogType;

.field public static final enum VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

.field public static final enum WARN:Lcom/android/settings/framework/util/log/HtcLog$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 70
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/framework/util/log/HtcLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 78
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/framework/util/log/HtcLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->DEBUG:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 86
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/framework/util/log/HtcLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->INFO:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 94
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;

    const-string v1, "WARN"

    invoke-direct {v0, v1, v6}, Lcom/android/settings/framework/util/log/HtcLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->WARN:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 102
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v7}, Lcom/android/settings/framework/util/log/HtcLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->ERROR:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 112
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;

    const-string v1, "ASSERT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/framework/util/log/HtcLog$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->ASSERT:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    .line 65
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/framework/util/log/HtcLog$LogType;

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog$LogType;->VERBOSE:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog$LogType;->DEBUG:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog$LogType;->INFO:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog$LogType;->WARN:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings/framework/util/log/HtcLog$LogType;->ERROR:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/framework/util/log/HtcLog$LogType;->ASSERT:Lcom/android/settings/framework/util/log/HtcLog$LogType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->$VALUES:[Lcom/android/settings/framework/util/log/HtcLog$LogType;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/framework/util/log/HtcLog$LogType;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/framework/util/log/HtcLog$LogType;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/framework/util/log/HtcLog$LogType;->$VALUES:[Lcom/android/settings/framework/util/log/HtcLog$LogType;

    invoke-virtual {v0}, [Lcom/android/settings/framework/util/log/HtcLog$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/framework/util/log/HtcLog$LogType;

    return-object v0
.end method

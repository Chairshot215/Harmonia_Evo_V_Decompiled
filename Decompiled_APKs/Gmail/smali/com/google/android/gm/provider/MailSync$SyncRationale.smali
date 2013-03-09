.class public final enum Lcom/google/android/gm/provider/MailSync$SyncRationale;
.super Ljava/lang/Enum;
.source "MailSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncRationale"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/MailSync$SyncRationale;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum LABEL:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

.field public static final enum UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "LABEL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LABEL:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 109
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "DURATION"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 110
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 114
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 115
    new-instance v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    const-string v1, "LOCAL_CHANGE"

    invoke-direct {v0, v1, v6}, Lcom/google/android/gm/provider/MailSync$SyncRationale;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    .line 107
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gm/provider/MailSync$SyncRationale;

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LABEL:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->DURATION:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->NONE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->UNKNOWN:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gm/provider/MailSync$SyncRationale;->LOCAL_CHANGE:Lcom/google/android/gm/provider/MailSync$SyncRationale;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->$VALUES:[Lcom/google/android/gm/provider/MailSync$SyncRationale;

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
    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/MailSync$SyncRationale;
    .locals 1
    .parameter

    .prologue
    .line 107
    const-class v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/MailSync$SyncRationale;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/google/android/gm/provider/MailSync$SyncRationale;->$VALUES:[Lcom/google/android/gm/provider/MailSync$SyncRationale;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/MailSync$SyncRationale;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/MailSync$SyncRationale;

    return-object v0
.end method

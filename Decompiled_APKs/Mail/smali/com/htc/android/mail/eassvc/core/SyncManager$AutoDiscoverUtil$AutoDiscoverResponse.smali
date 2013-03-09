.class final enum Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;
.super Ljava/lang/Enum;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AutoDiscoverResponse"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

.field public static final enum ERROR:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

.field public static final enum REDIRECT:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

.field public static final enum SETTINGS:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1321
    new-instance v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->ERROR:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    new-instance v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    const-string v1, "SETTINGS"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->SETTINGS:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    new-instance v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    const-string v1, "REDIRECT"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->REDIRECT:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    .line 1320
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    sget-object v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->ERROR:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->SETTINGS:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->REDIRECT:Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->$VALUES:[Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

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
    .line 1320
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;
    .locals 1
    .parameter "name"

    .prologue
    .line 1320
    const-class v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;
    .locals 1

    .prologue
    .line 1320
    sget-object v0, Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->$VALUES:[Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    invoke-virtual {v0}, [Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/eassvc/core/SyncManager$AutoDiscoverUtil$AutoDiscoverResponse;

    return-object v0
.end method

.class final enum Lcom/google/android/gm/WaitActivity$WaitMode;
.super Ljava/lang/Enum;
.source "WaitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/WaitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WaitMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/WaitActivity$WaitMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/WaitActivity$WaitMode;

.field public static final enum UNKNOWN:Lcom/google/android/gm/WaitActivity$WaitMode;

.field public static final enum WAIT_FOR_MANUAL_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;

.field public static final enum WAIT_FOR_SETTINGS:Lcom/google/android/gm/WaitActivity$WaitMode;

.field public static final enum WAIT_FOR_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/google/android/gm/WaitActivity$WaitMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/WaitActivity$WaitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/WaitActivity$WaitMode;->UNKNOWN:Lcom/google/android/gm/WaitActivity$WaitMode;

    .line 47
    new-instance v0, Lcom/google/android/gm/WaitActivity$WaitMode;

    const-string v1, "WAIT_FOR_SETTINGS"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/WaitActivity$WaitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_SETTINGS:Lcom/google/android/gm/WaitActivity$WaitMode;

    .line 48
    new-instance v0, Lcom/google/android/gm/WaitActivity$WaitMode;

    const-string v1, "WAIT_FOR_SYNC"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/WaitActivity$WaitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;

    .line 49
    new-instance v0, Lcom/google/android/gm/WaitActivity$WaitMode;

    const-string v1, "WAIT_FOR_MANUAL_SYNC"

    invoke-direct {v0, v1, v5}, Lcom/google/android/gm/WaitActivity$WaitMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_MANUAL_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gm/WaitActivity$WaitMode;

    sget-object v1, Lcom/google/android/gm/WaitActivity$WaitMode;->UNKNOWN:Lcom/google/android/gm/WaitActivity$WaitMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_SETTINGS:Lcom/google/android/gm/WaitActivity$WaitMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gm/WaitActivity$WaitMode;->WAIT_FOR_MANUAL_SYNC:Lcom/google/android/gm/WaitActivity$WaitMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/android/gm/WaitActivity$WaitMode;->$VALUES:[Lcom/google/android/gm/WaitActivity$WaitMode;

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
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/WaitActivity$WaitMode;
    .locals 1
    .parameter

    .prologue
    .line 45
    const-class v0, Lcom/google/android/gm/WaitActivity$WaitMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/WaitActivity$WaitMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/WaitActivity$WaitMode;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/google/android/gm/WaitActivity$WaitMode;->$VALUES:[Lcom/google/android/gm/WaitActivity$WaitMode;

    invoke-virtual {v0}, [Lcom/google/android/gm/WaitActivity$WaitMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/WaitActivity$WaitMode;

    return-object v0
.end method

.class public final enum Lcom/google/android/maps/NetworkConnectivityListener$State;
.super Ljava/lang/Enum;
.source "MapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/maps/NetworkConnectivityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/maps/NetworkConnectivityListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/maps/NetworkConnectivityListener$State;

.field public static final enum CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

.field public static final enum NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

.field public static final enum UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;

    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/maps/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    new-instance v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    const-string v1, "NOT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/maps/NetworkConnectivityListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/maps/NetworkConnectivityListener$State;

    sget-object v1, Lcom/google/android/maps/NetworkConnectivityListener$State;->UNKNOWN:Lcom/google/android/maps/NetworkConnectivityListener$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/maps/NetworkConnectivityListener$State;->CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/maps/NetworkConnectivityListener$State;->NOT_CONNECTED:Lcom/google/android/maps/NetworkConnectivityListener$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->$VALUES:[Lcom/google/android/maps/NetworkConnectivityListener$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 1

    const-class v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public static values()[Lcom/google/android/maps/NetworkConnectivityListener$State;
    .locals 1

    sget-object v0, Lcom/google/android/maps/NetworkConnectivityListener$State;->$VALUES:[Lcom/google/android/maps/NetworkConnectivityListener$State;

    invoke-virtual {v0}, [Lcom/google/android/maps/NetworkConnectivityListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/maps/NetworkConnectivityListener$State;

    return-object v0
.end method

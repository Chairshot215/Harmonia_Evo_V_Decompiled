.class public final enum Lcom/google/android/location/os/Event$Kind;
.super Ljava/lang/Enum;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/location/os/Event$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/location/os/Event$Kind;

.field public static final enum CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

.field public static final enum OS_GENERATED:Lcom/google/android/location/os/Event$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/google/android/location/os/Event$Kind;

    const-string v1, "OS_GENERATED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/location/os/Event$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    new-instance v0, Lcom/google/android/location/os/Event$Kind;

    const-string v1, "CLIENT_GENERATED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/location/os/Event$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/location/os/Event$Kind;

    sget-object v1, Lcom/google/android/location/os/Event$Kind;->OS_GENERATED:Lcom/google/android/location/os/Event$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/location/os/Event$Kind;->CLIENT_GENERATED:Lcom/google/android/location/os/Event$Kind;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/location/os/Event$Kind;->$VALUES:[Lcom/google/android/location/os/Event$Kind;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/location/os/Event$Kind;
    .locals 1
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/google/android/location/os/Event$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/os/Event$Kind;

    return-object v0
.end method

.method public static values()[Lcom/google/android/location/os/Event$Kind;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/location/os/Event$Kind;->$VALUES:[Lcom/google/android/location/os/Event$Kind;

    invoke-virtual {v0}, [Lcom/google/android/location/os/Event$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/location/os/Event$Kind;

    return-object v0
.end method

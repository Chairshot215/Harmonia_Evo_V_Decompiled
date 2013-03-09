.class public final enum Lcom/google/android/finsky/activities/InstrumentActivity$Mode;
.super Ljava/lang/Enum;
.source "InstrumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/InstrumentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/activities/InstrumentActivity$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

.field public static final enum ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

.field public static final enum UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    .line 60
    new-instance v0, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    sget-object v1, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->ADD:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->UPDATE:Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->$VALUES:[Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/activities/InstrumentActivity$Mode;
    .locals 1
    .parameter

    .prologue
    .line 56
    const-class v0, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/finsky/activities/InstrumentActivity$Mode;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->$VALUES:[Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    invoke-virtual {v0}, [Lcom/google/android/finsky/activities/InstrumentActivity$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/activities/InstrumentActivity$Mode;

    return-object v0
.end method

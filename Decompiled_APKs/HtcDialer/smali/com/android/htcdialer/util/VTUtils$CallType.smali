.class public final enum Lcom/android/htcdialer/util/VTUtils$CallType;
.super Ljava/lang/Enum;
.source "VTUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/util/VTUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/htcdialer/util/VTUtils$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/htcdialer/util/VTUtils$CallType;

.field public static final enum VIDEO_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

.field public static final enum VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/android/htcdialer/util/VTUtils$CallType;

    const-string v1, "VOICE_CALL"

    invoke-direct {v0, v1, v2}, Lcom/android/htcdialer/util/VTUtils$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    .line 52
    new-instance v0, Lcom/android/htcdialer/util/VTUtils$CallType;

    const-string v1, "VIDEO_CALL"

    invoke-direct {v0, v1, v3}, Lcom/android/htcdialer/util/VTUtils$CallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->VIDEO_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/htcdialer/util/VTUtils$CallType;

    sget-object v1, Lcom/android/htcdialer/util/VTUtils$CallType;->VOICE_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/htcdialer/util/VTUtils$CallType;->VIDEO_CALL:Lcom/android/htcdialer/util/VTUtils$CallType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->$VALUES:[Lcom/android/htcdialer/util/VTUtils$CallType;

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
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/htcdialer/util/VTUtils$CallType;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/android/htcdialer/util/VTUtils$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/util/VTUtils$CallType;

    return-object v0
.end method

.method public static values()[Lcom/android/htcdialer/util/VTUtils$CallType;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/htcdialer/util/VTUtils$CallType;->$VALUES:[Lcom/android/htcdialer/util/VTUtils$CallType;

    invoke-virtual {v0}, [Lcom/android/htcdialer/util/VTUtils$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/util/VTUtils$CallType;

    return-object v0
.end method

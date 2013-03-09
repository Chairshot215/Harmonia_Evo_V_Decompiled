.class final enum Lcom/android/phone/InCallScreen$InCallScreenActionType;
.super Ljava/lang/Enum;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InCallScreenActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallScreen$InCallScreenActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallScreen$InCallScreenActionType;

.field public static final enum VIEW_CONTACT:Lcom/android/phone/InCallScreen$InCallScreenActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    new-instance v0, Lcom/android/phone/InCallScreen$InCallScreenActionType;

    const-string v1, "VIEW_CONTACT"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallScreen$InCallScreenActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenActionType;->VIEW_CONTACT:Lcom/android/phone/InCallScreen$InCallScreenActionType;

    .line 352
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/phone/InCallScreen$InCallScreenActionType;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenActionType;->VIEW_CONTACT:Lcom/android/phone/InCallScreen$InCallScreenActionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/InCallScreen$InCallScreenActionType;->$VALUES:[Lcom/android/phone/InCallScreen$InCallScreenActionType;

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
    .line 352
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallScreen$InCallScreenActionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 352
    const-class v0, Lcom/android/phone/InCallScreen$InCallScreenActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallScreen$InCallScreenActionType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallScreen$InCallScreenActionType;
    .locals 1

    .prologue
    .line 352
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenActionType;->$VALUES:[Lcom/android/phone/InCallScreen$InCallScreenActionType;

    invoke-virtual {v0}, [Lcom/android/phone/InCallScreen$InCallScreenActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallScreen$InCallScreenActionType;

    return-object v0
.end method

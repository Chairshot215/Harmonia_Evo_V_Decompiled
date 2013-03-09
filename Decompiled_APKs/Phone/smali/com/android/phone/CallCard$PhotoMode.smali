.class final enum Lcom/android/phone/CallCard$PhotoMode;
.super Ljava/lang/Enum;
.source "CallCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PhotoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/CallCard$PhotoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/CallCard$PhotoMode;

.field public static final enum PEOPLE:Lcom/android/phone/CallCard$PhotoMode;

.field public static final enum UNKNOWN:Lcom/android/phone/CallCard$PhotoMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 257
    new-instance v0, Lcom/android/phone/CallCard$PhotoMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallCard$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$PhotoMode;->UNKNOWN:Lcom/android/phone/CallCard$PhotoMode;

    .line 258
    new-instance v0, Lcom/android/phone/CallCard$PhotoMode;

    const-string v1, "PEOPLE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/CallCard$PhotoMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/CallCard$PhotoMode;->PEOPLE:Lcom/android/phone/CallCard$PhotoMode;

    .line 256
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/phone/CallCard$PhotoMode;

    sget-object v1, Lcom/android/phone/CallCard$PhotoMode;->UNKNOWN:Lcom/android/phone/CallCard$PhotoMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/CallCard$PhotoMode;->PEOPLE:Lcom/android/phone/CallCard$PhotoMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/CallCard$PhotoMode;->$VALUES:[Lcom/android/phone/CallCard$PhotoMode;

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
    .line 256
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/CallCard$PhotoMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 256
    const-class v0, Lcom/android/phone/CallCard$PhotoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard$PhotoMode;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/CallCard$PhotoMode;
    .locals 1

    .prologue
    .line 256
    sget-object v0, Lcom/android/phone/CallCard$PhotoMode;->$VALUES:[Lcom/android/phone/CallCard$PhotoMode;

    invoke-virtual {v0}, [Lcom/android/phone/CallCard$PhotoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/CallCard$PhotoMode;

    return-object v0
.end method

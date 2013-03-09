.class final enum Lcom/android/keychain/KeyChainActivity$State;
.super Ljava/lang/Enum;
.source "KeyChainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keychain/KeyChainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/keychain/KeyChainActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/keychain/KeyChainActivity$State;

.field public static final enum INITIAL:Lcom/android/keychain/KeyChainActivity$State;

.field public static final enum UNLOCK_REQUESTED:Lcom/android/keychain/KeyChainActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/android/keychain/KeyChainActivity$State;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/android/keychain/KeyChainActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    new-instance v0, Lcom/android/keychain/KeyChainActivity$State;

    const-string v1, "UNLOCK_REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/android/keychain/KeyChainActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/keychain/KeyChainActivity$State;->UNLOCK_REQUESTED:Lcom/android/keychain/KeyChainActivity$State;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/keychain/KeyChainActivity$State;

    sget-object v1, Lcom/android/keychain/KeyChainActivity$State;->INITIAL:Lcom/android/keychain/KeyChainActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/keychain/KeyChainActivity$State;->UNLOCK_REQUESTED:Lcom/android/keychain/KeyChainActivity$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/keychain/KeyChainActivity$State;->$VALUES:[Lcom/android/keychain/KeyChainActivity$State;

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
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/keychain/KeyChainActivity$State;
    .locals 1
    .parameter "name"

    .prologue
    .line 66
    const-class v0, Lcom/android/keychain/KeyChainActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/keychain/KeyChainActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/android/keychain/KeyChainActivity$State;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/keychain/KeyChainActivity$State;->$VALUES:[Lcom/android/keychain/KeyChainActivity$State;

    invoke-virtual {v0}, [Lcom/android/keychain/KeyChainActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/keychain/KeyChainActivity$State;

    return-object v0
.end method

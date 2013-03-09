.class final enum Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;
.super Ljava/lang/Enum;
.source "SaveNumberToExistContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/SaveNumberToExistContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SAVE_ATTRIBUTE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

.field public static final enum MAIL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

.field public static final enum PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

.field public static final enum POSTAL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    new-instance v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    const-string v1, "PHONE_NUMBER"

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    .line 116
    new-instance v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    const-string v1, "MAIL"

    invoke-direct {v0, v1, v3}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->MAIL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    .line 117
    new-instance v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    const-string v1, "POSTAL"

    invoke-direct {v0, v1, v4}, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->POSTAL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    sget-object v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->PHONE_NUMBER:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->MAIL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->POSTAL:Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->$VALUES:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

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
    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;
    .locals 1
    .parameter "name"

    .prologue
    .line 114
    const-class v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    return-object v0
.end method

.method public static values()[Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->$VALUES:[Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    invoke-virtual {v0}, [Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htccontacts/SaveNumberToExistContactActivity$SAVE_ATTRIBUTE;

    return-object v0
.end method

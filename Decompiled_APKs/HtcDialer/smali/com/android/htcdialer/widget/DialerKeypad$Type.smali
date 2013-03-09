.class public final enum Lcom/android/htcdialer/widget/DialerKeypad$Type;
.super Ljava/lang/Enum;
.source "DialerKeypad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/widget/DialerKeypad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/htcdialer/widget/DialerKeypad$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/htcdialer/widget/DialerKeypad$Type;

.field public static final enum DIAL_KEYPAD:Lcom/android/htcdialer/widget/DialerKeypad$Type;

.field public static final enum HANDWRITING:Lcom/android/htcdialer/widget/DialerKeypad$Type;

.field public static final enum HANDWRITING_FULL:Lcom/android/htcdialer/widget/DialerKeypad$Type;

.field public static final enum UNDEFINEDE:Lcom/android/htcdialer/widget/DialerKeypad$Type;


# instance fields
.field public index:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;

    const-string v1, "UNDEFINEDE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/htcdialer/widget/DialerKeypad$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->UNDEFINEDE:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    .line 54
    new-instance v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;

    const-string v1, "HANDWRITING"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/htcdialer/widget/DialerKeypad$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    .line 55
    new-instance v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;

    const-string v1, "HANDWRITING_FULL"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/htcdialer/widget/DialerKeypad$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING_FULL:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    .line 56
    new-instance v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;

    const-string v1, "DIAL_KEYPAD"

    invoke-direct {v0, v1, v6, v5}, Lcom/android/htcdialer/widget/DialerKeypad$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->DIAL_KEYPAD:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/htcdialer/widget/DialerKeypad$Type;

    sget-object v1, Lcom/android/htcdialer/widget/DialerKeypad$Type;->UNDEFINEDE:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/htcdialer/widget/DialerKeypad$Type;->HANDWRITING_FULL:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/htcdialer/widget/DialerKeypad$Type;->DIAL_KEYPAD:Lcom/android/htcdialer/widget/DialerKeypad$Type;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->$VALUES:[Lcom/android/htcdialer/widget/DialerKeypad$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "i"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/htcdialer/widget/DialerKeypad$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/htcdialer/widget/DialerKeypad$Type;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/android/htcdialer/widget/DialerKeypad$Type;->$VALUES:[Lcom/android/htcdialer/widget/DialerKeypad$Type;

    invoke-virtual {v0}, [Lcom/android/htcdialer/widget/DialerKeypad$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/htcdialer/widget/DialerKeypad$Type;

    return-object v0
.end method

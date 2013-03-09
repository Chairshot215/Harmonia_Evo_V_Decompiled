.class public final enum Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;
.super Ljava/lang/Enum;
.source "XT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/XT9IME/XT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WCLSELECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

.field public static final enum ADD_WORD_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

.field public static final enum CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

.field public static final enum DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

.field public static final enum WCL_ADDWORD_BTN:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

.field public static final enum WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 201
    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const-string v1, "WORDS"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const-string v1, "DROP_DOWN_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const-string v1, "ADD_WORD_BUTTON"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ADD_WORD_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const-string v1, "CLOSE_BUTTON"

    invoke-direct {v0, v1, v5}, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    new-instance v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const-string v1, "WCL_ADDWORD_BTN"

    invoke-direct {v0, v1, v6}, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WCL_ADDWORD_BTN:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WORDS:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->DROP_DOWN_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->ADD_WORD_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->CLOSE_BUTTON:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->WCL_ADDWORD_BTN:Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->$VALUES:[Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

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
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 201
    const-class v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;
    .locals 1

    .prologue
    .line 201
    sget-object v0, Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->$VALUES:[Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    invoke-virtual {v0}, [Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/htcime/XT9IME/XT9IME$WCLSELECTION;

    return-object v0
.end method

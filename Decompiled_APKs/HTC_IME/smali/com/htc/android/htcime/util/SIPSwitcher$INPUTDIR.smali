.class public final enum Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;
.super Ljava/lang/Enum;
.source "SIPSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcime/util/SIPSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INPUTDIR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

.field public static final enum CURRENT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

.field public static final enum NEXT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

.field public static final enum PREV:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 703
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    const-string v1, "CURRENT"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->CURRENT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    .line 704
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v3}, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->NEXT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    .line 705
    new-instance v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    const-string v1, "PREV"

    invoke-direct {v0, v1, v4}, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->PREV:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    .line 702
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->CURRENT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->NEXT:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->PREV:Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->$VALUES:[Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

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
    .line 702
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;
    .locals 1
    .parameter "name"

    .prologue
    .line 702
    const-class v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    return-object v0
.end method

.method public static values()[Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;
    .locals 1

    .prologue
    .line 702
    sget-object v0, Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->$VALUES:[Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    invoke-virtual {v0}, [Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/htcime/util/SIPSwitcher$INPUTDIR;

    return-object v0
.end method

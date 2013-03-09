.class public final enum Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;
.super Ljava/lang/Enum;
.source "EditMessagePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

.field public static final enum AUDIO:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

.field public static final enum IMAGE:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

.field public static final enum RAW:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

.field public static final enum SLIDESHOW:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

.field public static final enum VIDEO:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    const-string v1, "SLIDESHOW"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->SLIDESHOW:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    .line 16
    new-instance v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->IMAGE:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    .line 17
    new-instance v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->VIDEO:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    .line 18
    new-instance v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    const-string v1, "AUDIO"

    invoke-direct {v0, v1, v5}, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->AUDIO:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    .line 19
    new-instance v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    const-string v1, "RAW"

    invoke-direct {v0, v1, v6}, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->RAW:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    sget-object v1, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->SLIDESHOW:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->IMAGE:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->VIDEO:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->AUDIO:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->RAW:Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->$VALUES:[Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;
    .locals 1
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    return-object v0
.end method

.method public static values()[Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->$VALUES:[Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    invoke-virtual {v0}, [Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/ui/EditMessagePanel$OnActionHappenedListener$AttachedType;

    return-object v0
.end method

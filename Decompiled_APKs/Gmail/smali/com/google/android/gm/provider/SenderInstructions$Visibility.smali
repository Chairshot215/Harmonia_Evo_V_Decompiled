.class public final enum Lcom/google/android/gm/provider/SenderInstructions$Visibility;
.super Ljava/lang/Enum;
.source "SenderInstructions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/SenderInstructions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Visibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/SenderInstructions$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/provider/SenderInstructions$Visibility;

.field public static final enum HIDDEN:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

.field public static final enum SKIPPED:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

.field public static final enum VISIBLE:Lcom/google/android/gm/provider/SenderInstructions$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gm/provider/SenderInstructions$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->VISIBLE:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 27
    new-instance v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    const-string v1, "SKIPPED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/gm/provider/SenderInstructions$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->SKIPPED:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 28
    new-instance v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/gm/provider/SenderInstructions$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->HIDDEN:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    sget-object v1, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->VISIBLE:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->SKIPPED:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->HIDDEN:Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->$VALUES:[Lcom/google/android/gm/provider/SenderInstructions$Visibility;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/SenderInstructions$Visibility;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/SenderInstructions$Visibility;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/gm/provider/SenderInstructions$Visibility;->$VALUES:[Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/SenderInstructions$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/SenderInstructions$Visibility;

    return-object v0
.end method

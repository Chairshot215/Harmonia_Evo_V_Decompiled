.class public final enum Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
.super Ljava/lang/Enum;
.source "SpeechController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/SpeechController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QueuingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

.field public static final enum INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

.field public static final enum QUEUE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

.field public static final enum UNINTERRUPTIBLE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    new-instance v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const-string v1, "INTERRUPT"

    invoke-direct {v0, v1, v2}, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    new-instance v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const-string v1, "QUEUE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->QUEUE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    new-instance v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    const-string v1, "UNINTERRUPTIBLE"

    invoke-direct {v0, v1, v4}, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->UNINTERRUPTIBLE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    .line 99
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    sget-object v1, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->INTERRUPT:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->QUEUE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->UNINTERRUPTIBLE:Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->ENUM$VALUES:[Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    .locals 2
    .parameter "ordinal"

    .prologue
    .line 109
    invoke-static {}, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->values()[Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    move-result-object v0

    .line 111
    .local v0, values:[Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    .line 112
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 115
    :goto_0
    return-object v1

    :cond_1
    aget-object v1, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    return-object v0
.end method

.method public static values()[Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;->ENUM$VALUES:[Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/marvin/talkback/SpeechController$QueuingMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.class public Lcom/google/android/talk/util/Markup$Smileys;
.super Ljava/lang/Object;
.source "Markup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/util/Markup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Smileys"
.end annotation


# static fields
.field public static ANGEL:I

.field public static COOL:I

.field public static CRYING:I

.field public static EMBARRASSED:I

.field public static FOOT_IN_MOUTH:I

.field public static HAPPY:I

.field public static KISSING:I

.field public static LAUGHING:I

.field public static LIPS_ARE_SEALED:I

.field public static MONEY_MOUTH:I

.field public static SAD:I

.field public static SURPRISED:I

.field public static TONGUE_STICKING_OUT:I

.field public static UNDECIDED:I

.field public static WINKING:I

.field public static WTF:I

.field public static YELLING:I

.field private static final sIconIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/talk/util/Markup$Smileys;->sIconIds:[I

    .line 90
    const/4 v0, 0x0

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->HAPPY:I

    .line 91
    const/4 v0, 0x1

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->SAD:I

    .line 92
    const/4 v0, 0x2

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->WINKING:I

    .line 93
    const/4 v0, 0x3

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->TONGUE_STICKING_OUT:I

    .line 94
    const/4 v0, 0x4

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->SURPRISED:I

    .line 95
    const/4 v0, 0x5

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->KISSING:I

    .line 96
    const/4 v0, 0x6

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->YELLING:I

    .line 97
    const/4 v0, 0x7

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->COOL:I

    .line 98
    const/16 v0, 0x8

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->MONEY_MOUTH:I

    .line 99
    const/16 v0, 0x9

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->FOOT_IN_MOUTH:I

    .line 100
    const/16 v0, 0xa

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->EMBARRASSED:I

    .line 101
    const/16 v0, 0xb

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->ANGEL:I

    .line 102
    const/16 v0, 0xc

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->UNDECIDED:I

    .line 103
    const/16 v0, 0xd

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->CRYING:I

    .line 104
    const/16 v0, 0xe

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->LIPS_ARE_SEALED:I

    .line 105
    const/16 v0, 0xf

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->LAUGHING:I

    .line 106
    const/16 v0, 0x10

    sput v0, Lcom/google/android/talk/util/Markup$Smileys;->WTF:I

    return-void

    .line 70
    :array_0
    .array-data 0x4
        0x2at 0x0t 0x2t 0x7ft
        0x32t 0x0t 0x2t 0x7ft
        0x37t 0x0t 0x2t 0x7ft
        0x35t 0x0t 0x2t 0x7ft
        0x34t 0x0t 0x2t 0x7ft
        0x2ct 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
        0x30t 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
        0x25t 0x0t 0x2t 0x7ft
        0x36t 0x0t 0x2t 0x7ft
        0x27t 0x0t 0x2t 0x7ft
        0x2et 0x0t 0x2t 0x7ft
        0x2dt 0x0t 0x2t 0x7ft
        0x38t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSmileyResource(I)I
    .locals 1
    .parameter "which"

    .prologue
    .line 109
    sget-object v0, Lcom/google/android/talk/util/Markup$Smileys;->sIconIds:[I

    aget v0, v0, p0

    return v0
.end method

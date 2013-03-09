.class final enum Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
.super Ljava/lang/Enum;
.source "CursorGranularityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/CursorGranularityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CursorGranularity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHARACTER:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

.field public static final enum DEFAULT:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

.field private static final synthetic ENUM$VALUES:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

.field public static final enum PARAGRAPH:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

.field public static final enum WORD:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;


# instance fields
.field public final id:I

.field public final resId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 37
    new-instance v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    const-string v1, "DEFAULT"

    const/high16 v2, -0x8000

    const v3, 0x7f09008e

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->DEFAULT:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    .line 38
    new-instance v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    const-string v1, "CHARACTER"

    .line 39
    const v2, 0x7f09008b

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;-><init>(Ljava/lang/String;III)V

    .line 38
    sput-object v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->CHARACTER:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    .line 40
    new-instance v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    const-string v1, "WORD"

    .line 41
    const v2, 0x7f09008c

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;-><init>(Ljava/lang/String;III)V

    .line 40
    sput-object v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->WORD:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    .line 42
    new-instance v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    const-string v1, "PARAGRAPH"

    .line 44
    const/16 v2, 0x8

    .line 45
    const v3, 0x7f09008d

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;-><init>(Ljava/lang/String;III)V

    .line 44
    sput-object v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->PARAGRAPH:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    sget-object v1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->DEFAULT:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->CHARACTER:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->WORD:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->PARAGRAPH:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->ENUM$VALUES:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 62
    iput p3, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->id:I

    .line 63
    iput p4, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->resId:I

    .line 64
    return-void
.end method

.method public static extractFromMask(ILjava/util/ArrayList;)V
    .locals 6
    .parameter "bitmask"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;>;"
    invoke-static {}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->values()[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    move-result-object v1

    .line 98
    .local v1, values:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 99
    sget-object v2, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->DEFAULT:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 106
    return-void

    .line 101
    :cond_0
    aget-object v0, v1, v2

    .line 102
    .local v0, value:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    iget v4, v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->id:I

    and-int/2addr v4, p0

    iget v5, v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->id:I

    if-ne v4, v5, :cond_1

    .line 103
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getNextBestGranularity(Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    .locals 7
    .parameter "requested"
    .parameter "node"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getMovementGranularities()I

    move-result v0

    .line 79
    .local v0, bitmask:I
    invoke-static {}, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->values()[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 92
    sget-object v1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->DEFAULT:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    :goto_1
    return-object v1

    .line 79
    :cond_0
    aget-object v1, v3, v2

    .line 80
    .local v1, granularity:Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    iget v5, v1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->id:I

    iget v6, p0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->id:I

    if-ge v5, v6, :cond_2

    .line 79
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    :cond_2
    iget v5, v1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->id:I

    and-int/2addr v5, v0

    iget v6, v1, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->id:I

    if-ne v5, v6, :cond_1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    return-object v0
.end method

.method public static values()[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;->ENUM$VALUES:[Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    array-length v1, v0

    new-array v2, v1, [Lcom/google/android/marvin/talkback/CursorGranularityManager$CursorGranularity;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

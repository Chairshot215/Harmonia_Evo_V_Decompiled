.class public final enum Lcom/google/android/gm/provider/Gmail$PersonalLevel;
.super Ljava/lang/Enum;
.source "Gmail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/Gmail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonalLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gm/provider/Gmail$PersonalLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/gm/provider/Gmail$PersonalLevel;

.field public static final enum NOT_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

.field public static final enum ONLY_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

.field public static final enum TO_ME_AND_OTHERS:Lcom/google/android/gm/provider/Gmail$PersonalLevel;


# instance fields
.field private mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2629
    new-instance v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    const-string v1, "NOT_TO_ME"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->NOT_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2630
    new-instance v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    const-string v1, "TO_ME_AND_OTHERS"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->TO_ME_AND_OTHERS:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2631
    new-instance v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    const-string v1, "ONLY_TO_ME"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gm/provider/Gmail$PersonalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->ONLY_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2628
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    sget-object v1, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->NOT_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->TO_ME_AND_OTHERS:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->ONLY_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->$VALUES:[Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "level"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 2635
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2636
    iput p3, p0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->mLevel:I

    .line 2637
    return-void
.end method

.method public static fromInt(I)Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    .locals 3
    .parameter "level"

    .prologue
    .line 2644
    packed-switch p0, :pswitch_data_0

    .line 2649
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a personal level"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2645
    :pswitch_0
    sget-object v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->NOT_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    .line 2647
    :goto_0
    return-object v0

    .line 2646
    :pswitch_1
    sget-object v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->TO_ME_AND_OTHERS:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    goto :goto_0

    .line 2647
    :pswitch_2
    sget-object v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->ONLY_TO_ME:Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    goto :goto_0

    .line 2644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    .locals 1
    .parameter

    .prologue
    .line 2628
    const-class v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gm/provider/Gmail$PersonalLevel;
    .locals 1

    .prologue
    .line 2628
    sget-object v0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->$VALUES:[Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    invoke-virtual {v0}, [Lcom/google/android/gm/provider/Gmail$PersonalLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gm/provider/Gmail$PersonalLevel;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 2640
    iget v0, p0, Lcom/google/android/gm/provider/Gmail$PersonalLevel;->mLevel:I

    return v0
.end method

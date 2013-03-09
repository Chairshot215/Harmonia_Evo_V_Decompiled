.class public final enum Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;
.super Ljava/lang/Enum;
.source "GmailProviderWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/GmailProviderWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersonalLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

.field public static final enum NOT_TO_ME:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

.field public static final enum ONLY_TO_ME:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

.field public static final enum TO_ME_AND_OTHERS:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;


# instance fields
.field private final mLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 591
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    const-string v1, "NOT_TO_ME"

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->NOT_TO_ME:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    .line 592
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    const-string v1, "TO_ME_AND_OTHERS"

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->TO_ME_AND_OTHERS:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    .line 593
    new-instance v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    const-string v1, "ONLY_TO_ME"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->ONLY_TO_ME:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    .line 590
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->NOT_TO_ME:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->TO_ME_AND_OTHERS:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->ONLY_TO_ME:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->$VALUES:[Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

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
    .line 597
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 598
    iput p3, p0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->mLevel:I

    .line 599
    return-void
.end method

.method static synthetic access$400(I)Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 590
    invoke-static {p0}, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->fromInt(I)Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    move-result-object v0

    return-object v0
.end method

.method private static fromInt(I)Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;
    .locals 3
    .parameter "level"

    .prologue
    .line 606
    packed-switch p0, :pswitch_data_0

    .line 611
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

    .line 607
    :pswitch_0
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->NOT_TO_ME:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    .line 609
    :goto_0
    return-object v0

    .line 608
    :pswitch_1
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->TO_ME_AND_OTHERS:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    goto :goto_0

    .line 609
    :pswitch_2
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->ONLY_TO_ME:Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    goto :goto_0

    .line 606
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;
    .locals 1
    .parameter

    .prologue
    .line 590
    const-class v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    return-object v0
.end method

.method public static values()[Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;
    .locals 1

    .prologue
    .line 590
    sget-object v0, Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->$VALUES:[Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    invoke-virtual {v0}, [Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/talk/GmailProviderWrapper$PersonalLevel;

    return-object v0
.end method

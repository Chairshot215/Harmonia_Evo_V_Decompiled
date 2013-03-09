.class Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;
.super Ljava/lang/Object;
.source "WebContentFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Action"
.end annotation


# static fields
.field private static final ACTION_MASK:I = -0x1000000

.field private static final ACTION_OFFSET:I = 0x18

.field private static final FIRST_ARGUMENT_MASK:I = 0xff0000

.field private static final FIRST_ARGUMENT_OFFSET:I = 0x10

.field private static final SECOND_ARGUMENT_MASK:I = 0xff00

.field private static final SECOND_ARGUMENT_OFFSET:I = 0x8

.field private static final THIRD_ARGUMENT_MASK:I = 0xff

.field private static final THIRD_ARGUMENT_OFFSET:I


# instance fields
.field private mActionCode:I

.field private mFirstArgument:I

.field private mSecondArgument:I

.field private mThirdArgument:I

.field final synthetic this$0:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;


# direct methods
.method private constructor <init>(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->this$0:Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;-><init>(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter;)V

    return-void
.end method

.method static synthetic access$1(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)I
    .locals 1
    .parameter

    .prologue
    .line 220
    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->mActionCode:I

    return v0
.end method

.method static synthetic access$2(Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;)I
    .locals 1
    .parameter

    .prologue
    .line 222
    iget v0, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->mSecondArgument:I

    return v0
.end method


# virtual methods
.method public init(Ljava/lang/String;)V
    .locals 4
    .parameter "encodedActionString"

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 230
    .local v0, encodedAction:I
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 235
    const/high16 v2, -0x100

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x18

    iput v2, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->mActionCode:I

    .line 236
    const/high16 v2, 0xff

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->mFirstArgument:I

    .line 237
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->mSecondArgument:I

    .line 238
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/marvin/talkback/formatter/WebContentFormatter$Action;->mThirdArgument:I

    .line 239
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v1

    .line 232
    .local v1, nfe:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

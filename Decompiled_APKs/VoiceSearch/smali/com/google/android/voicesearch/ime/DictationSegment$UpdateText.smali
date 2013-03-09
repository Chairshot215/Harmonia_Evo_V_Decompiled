.class public Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;
.super Ljava/lang/Object;
.source "DictationSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/voicesearch/ime/DictationSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateText"
.end annotation


# instance fields
.field private final mDeleteChars:I

.field private final mNewText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/google/android/voicesearch/ime/DictationSegment;


# direct methods
.method public constructor <init>(Lcom/google/android/voicesearch/ime/DictationSegment;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "deleteChars"
    .parameter "newText"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->this$0:Lcom/google/android/voicesearch/ime/DictationSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput p2, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mDeleteChars:I

    .line 278
    iput-object p3, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mNewText:Ljava/lang/CharSequence;

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    iget v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mDeleteChars:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 272
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mNewText:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "ic"

    .prologue
    .line 285
    if-nez p1, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mDeleteChars:I

    if-lez v0, :cond_2

    .line 293
    iget v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mDeleteChars:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mNewText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/voicesearch/ime/DictationSegment$UpdateText;->mNewText:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

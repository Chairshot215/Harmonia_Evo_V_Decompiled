.class public Lcom/android/mms/ui/NewBlockNumberActivity$MyTokenizer;
.super Ljava/lang/Object;
.source "NewBlockNumberActivity.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/NewBlockNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyTokenizer"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 241
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "text"
    .parameter "cursor"

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "text"

    .prologue
    .line 245
    return-object p1
.end method

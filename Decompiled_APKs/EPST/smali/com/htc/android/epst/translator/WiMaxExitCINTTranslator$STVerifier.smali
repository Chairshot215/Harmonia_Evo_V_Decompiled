.class public Lcom/htc/android/epst/translator/WiMaxExitCINTTranslator$STVerifier;
.super Ljava/lang/Object;
.source "WiMaxExitCINTTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/WiMaxExitCINTTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "STVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/WiMaxExitCINTTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/WiMaxExitCINTTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/epst/translator/WiMaxExitCINTTranslator$STVerifier;->this$0:Lcom/htc/android/epst/translator/WiMaxExitCINTTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 4
    .parameter "input"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_0
    move v1, v2

    .line 55
    :cond_1
    :goto_0
    return v1

    .line 50
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, nValue:I
    if-ltz v0, :cond_3

    const/16 v3, 0x8

    if-le v0, v3, :cond_1

    :cond_3
    move v1, v2

    .line 52
    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxExitCINTTranslator$STVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f0400ed

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

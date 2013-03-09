.class public Lcom/htc/android/epst/translator/WiMaxExitDelayTranslator$STVerifier;
.super Ljava/lang/Object;
.source "WiMaxExitDelayTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/WiMaxExitDelayTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "STVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/WiMaxExitDelayTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/WiMaxExitDelayTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/epst/translator/WiMaxExitDelayTranslator$STVerifier;->this$0:Lcom/htc/android/epst/translator/WiMaxExitDelayTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 4
    .parameter "input"

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, nValue:I
    if-ltz v0, :cond_0

    const/16 v2, 0x258

    if-gt v0, v2, :cond_0

    .line 55
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxExitDelayTranslator$STVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f0400ef

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

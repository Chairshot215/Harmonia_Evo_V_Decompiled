.class public Lcom/htc/android/epst/translator/DSAURLTranslator$URLVerifier;
.super Ljava/lang/Object;
.source "DSAURLTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/DSAURLTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "URLVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/DSAURLTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/DSAURLTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/htc/android/epst/translator/DSAURLTranslator$URLVerifier;->this$0:Lcom/htc/android/epst/translator/DSAURLTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 5
    .parameter "input"

    .prologue
    const/4 v4, 0x7

    const/4 v1, 0x0

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x80

    if-gt v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, nValue:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/android/epst/translator/DSAURLTranslator$URLVerifier;->this$0:Lcom/htc/android/epst/translator/DSAURLTranslator;

    #getter for: Lcom/htc/android/epst/translator/DSAURLTranslator;->gHttp:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/epst/translator/DSAURLTranslator;->access$000(Lcom/htc/android/epst/translator/DSAURLTranslator;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/android/epst/translator/DSAURLTranslator$URLVerifier;->this$0:Lcom/htc/android/epst/translator/DSAURLTranslator;

    #getter for: Lcom/htc/android/epst/translator/DSAURLTranslator;->gHttps:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/android/epst/translator/DSAURLTranslator;->access$100(Lcom/htc/android/epst/translator/DSAURLTranslator;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 59
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/DSAURLTranslator$URLVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f04005a

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

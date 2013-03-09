.class public Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;
.super Ljava/lang/Object;
.source "WiMaxNAITranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/WiMaxNAITranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NAIVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/WiMaxNAITranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/WiMaxNAITranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;->this$0:Lcom/htc/android/epst/translator/WiMaxNAITranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 5
    .parameter "input"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    iget-object v3, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;->this$0:Lcom/htc/android/epst/translator/WiMaxNAITranslator;

    #calls: Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckNAIFormat(Ljava/lang/String;)Z
    invoke-static {v3, p1}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->access$000(Lcom/htc/android/epst/translator/WiMaxNAITranslator;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 48
    :cond_1
    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, nNAI:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 52
    iget-object v3, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;->this$0:Lcom/htc/android/epst/translator/WiMaxNAITranslator;

    aget-object v4, v0, v1

    #calls: Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckMACFormat(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->access$100(Lcom/htc/android/epst/translator/WiMaxNAITranslator;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;->this$0:Lcom/htc/android/epst/translator/WiMaxNAITranslator;

    aget-object v4, v0, v2

    #calls: Lcom/htc/android/epst/translator/WiMaxNAITranslator;->bCheckRealmFormat(Ljava/lang/String;)Z
    invoke-static {v3, v4}, Lcom/htc/android/epst/translator/WiMaxNAITranslator;->access$200(Lcom/htc/android/epst/translator/WiMaxNAITranslator;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    .line 60
    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/WiMaxNAITranslator$NAIVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f0400d5

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

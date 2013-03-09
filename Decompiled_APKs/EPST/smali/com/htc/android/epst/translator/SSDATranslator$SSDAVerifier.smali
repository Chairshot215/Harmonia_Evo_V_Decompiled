.class public Lcom/htc/android/epst/translator/SSDATranslator$SSDAVerifier;
.super Ljava/lang/Object;
.source "SSDATranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/SSDATranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSDAVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/SSDATranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/SSDATranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/htc/android/epst/translator/SSDATranslator$SSDAVerifier;->this$0:Lcom/htc/android/epst/translator/SSDATranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 6
    .parameter "input"

    .prologue
    const/4 v3, 0x0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v3

    .line 36
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 37
    .local v1, num:J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_0

    .line 40
    const/4 v3, 0x1

    goto :goto_0

    .line 42
    .end local v1           #num:J
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "SSDATranslator"

    const-string v5, "parsing input exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/SSDATranslator$SSDAVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f04004b

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

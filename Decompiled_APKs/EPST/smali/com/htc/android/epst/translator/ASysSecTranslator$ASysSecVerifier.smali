.class public Lcom/htc/android/epst/translator/ASysSecTranslator$ASysSecVerifier;
.super Ljava/lang/Object;
.source "ASysSecTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/ASysSecTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ASysSecVerifier"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ASysSecVerifier"


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/ASysSecTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/ASysSecTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/android/epst/translator/ASysSecTranslator$ASysSecVerifier;->this$0:Lcom/htc/android/epst/translator/ASysSecTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 4
    .parameter "input"

    .prologue
    .line 36
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 37
    .local v1, num:I
    const/16 v2, 0x2b1

    if-gt v2, v1, :cond_0

    const/16 v2, 0x2b6

    if-gt v1, v2, :cond_0

    .line 38
    const/4 v2, 0x1

    .line 44
    .end local v1           #num:I
    :goto_0
    return v2

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "ASysSecVerifier"

    const-string v3, "parsing input exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/ASysSecTranslator$ASysSecVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f04002c

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

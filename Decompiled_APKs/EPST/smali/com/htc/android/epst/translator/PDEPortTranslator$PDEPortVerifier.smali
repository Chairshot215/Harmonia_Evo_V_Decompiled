.class public Lcom/htc/android/epst/translator/PDEPortTranslator$PDEPortVerifier;
.super Ljava/lang/Object;
.source "PDEPortTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/PDEPortTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PDEPortVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/PDEPortTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/PDEPortTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/htc/android/epst/translator/PDEPortTranslator$PDEPortVerifier;->this$0:Lcom/htc/android/epst/translator/PDEPortTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 4
    .parameter "input"

    .prologue
    .line 33
    const/16 v2, 0xa

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 34
    .local v1, num:I
    if-ltz v1, :cond_0

    const v2, 0xffff

    if-gt v1, v2, :cond_0

    .line 35
    const/4 v2, 0x1

    .line 41
    .end local v1           #num:I
    :goto_0
    return v2

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "PDEPortTranslator"

    const-string v3, "parsing input exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
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
    .line 45
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/PDEPortTranslator$PDEPortVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f040045

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

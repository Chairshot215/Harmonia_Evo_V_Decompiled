.class public Lcom/htc/android/epst/translator/SidTranslator$SIDVerifier;
.super Ljava/lang/Object;
.source "SidTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/SidTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIDVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/SidTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/SidTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/htc/android/epst/translator/SidTranslator$SIDVerifier;->this$0:Lcom/htc/android/epst/translator/SidTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 5
    .parameter "input"

    .prologue
    const/4 v2, 0x0

    .line 52
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 54
    .local v1, value:I
    if-ltz v1, :cond_0

    const/16 v3, 0x7fff

    if-le v1, v3, :cond_1

    .line 65
    .end local v1           #value:I
    :cond_0
    :goto_0
    return v2

    .line 60
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SidTranslator"

    const-string v4, "parsing input exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 65
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #value:I
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/SidTranslator$SIDVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f04003a

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

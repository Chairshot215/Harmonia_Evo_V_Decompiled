.class public Lcom/htc/android/epst/translator/DSSServerPortTranslator$PortVerifier;
.super Ljava/lang/Object;
.source "DSSServerPortTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/DSSServerPortTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PortVerifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/translator/DSSServerPortTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/DSSServerPortTranslator;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/android/epst/translator/DSSServerPortTranslator$PortVerifier;->this$0:Lcom/htc/android/epst/translator/DSSServerPortTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 4
    .parameter "input"

    .prologue
    .line 46
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 47
    .local v1, mInput:I
    const v2, 0xffff

    if-gt v1, v2, :cond_0

    if-gez v1, :cond_1

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 54
    .end local v1           #mInput:I
    :goto_0
    return v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DSSServerPortTranslator"

    const-string v3, "parsing input exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 1
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/htc/android/epst/translator/DSSServerPortTranslator$PortVerifier;->check(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v0

    const v1, 0x7f040047

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

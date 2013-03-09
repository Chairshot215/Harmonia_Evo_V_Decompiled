.class public Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;
.super Ljava/lang/Object;
.source "SidNidTranslator.java"

# interfaces
.implements Lcom/htc/android/epst/InputVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/epst/translator/SidNidTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SIDNIDVerifier"
.end annotation


# instance fields
.field private prompt:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/android/epst/translator/SidNidTranslator;


# direct methods
.method public constructor <init>(Lcom/htc/android/epst/translator/SidNidTranslator;)V
    .locals 1
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;->this$0:Lcom/htc/android/epst/translator/SidNidTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;->prompt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public check(Ljava/lang/String;)Z
    .locals 6
    .parameter "input"

    .prologue
    .line 49
    const/4 v2, 0x1

    .line 50
    .local v2, ret:Z
    const-string v4, "/"

    const/4 v5, 0x2

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, inputArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 52
    aget-object v3, v1, v0

    .line 53
    .local v3, value:Ljava/lang/String;
    invoke-virtual {p0, v3, v0}, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;->check(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v4

    const v5, 0x7f040039

    invoke-virtual {v4, v5}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;->prompt:Ljava/lang/String;

    .line 60
    .end local v3           #value:Ljava/lang/String;
    :cond_0
    return v2

    .line 51
    .restart local v3       #value:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public check(Ljava/lang/String;I)Z
    .locals 5
    .parameter "input"
    .parameter "partIndex"

    .prologue
    .line 66
    const/4 v1, 0x1

    .line 69
    .local v1, ret:Z
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 71
    .local v2, value:I
    if-nez p2, :cond_3

    .line 72
    if-ltz v2, :cond_0

    const/16 v3, 0x7fff

    if-le v2, v3, :cond_1

    .line 73
    :cond_0
    const/4 v1, 0x0

    .line 90
    .end local v2           #value:I
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 91
    if-nez p2, :cond_6

    .line 92
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04003a

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;->prompt:Ljava/lang/String;

    .line 102
    :cond_2
    :goto_1
    return v1

    .line 76
    .restart local v2       #value:I
    :cond_3
    const/4 v3, 0x1

    if-ne p2, v3, :cond_5

    .line 77
    if-ltz v2, :cond_4

    const v3, 0xffff

    if-le v2, v3, :cond_1

    .line 78
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 85
    .end local v2           #value:I
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 87
    const-string v3, "SidNidTranslator"

    const-string v4, "parsing input exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 94
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    if-nez p2, :cond_7

    .line 95
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f04003b

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;->prompt:Ljava/lang/String;

    goto :goto_1

    .line 98
    :cond_7
    invoke-static {}, Lcom/htc/android/epst/Utility;->getSingleton()Lcom/htc/android/epst/Utility;

    move-result-object v3

    const v4, 0x7f040039

    invoke-virtual {v3, v4}, Lcom/htc/android/epst/Utility;->getResourceString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;->prompt:Ljava/lang/String;

    goto :goto_1
.end method

.method public getPrompt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/android/epst/translator/SidNidTranslator$SIDNIDVerifier;->prompt:Ljava/lang/String;

    return-object v0
.end method

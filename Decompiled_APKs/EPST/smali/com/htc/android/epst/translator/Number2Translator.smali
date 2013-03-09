.class public Lcom/htc/android/epst/translator/Number2Translator;
.super Lcom/htc/android/epst/translator/NumberTranslator;
.source "Number2Translator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/htc/android/epst/translator/NumberTranslator;-><init>()V

    .line 6
    const-string v0, "100"

    iput-object v0, p0, Lcom/htc/android/epst/translator/Number2Translator;->ADDRESS:Ljava/lang/String;

    .line 7
    return-void
.end method

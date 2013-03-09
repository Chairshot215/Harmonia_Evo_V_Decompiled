.class public Lcom/htc/android/epst/translator/SidNid16Translator;
.super Lcom/htc/android/epst/translator/SidNidTranslator;
.source "SidNid16Translator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/htc/android/epst/translator/SidNidTranslator;-><init>()V

    .line 5
    const/16 v0, 0xf

    iput v0, p0, Lcom/htc/android/epst/translator/SidNid16Translator;->INDEX:I

    .line 6
    return-void
.end method

.class public Lcom/futuredial/parser/NParser;
.super Ljava/lang/Object;
.source "NParser.java"

# interfaces
.implements Lcom/futuredial/IParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CombineMultiFields(Lcom/futuredial/publicobj/ItemArray;)V
    .locals 0
    .parameter "iaUnCompleted"

    .prologue
    .line 14
    return-void
.end method

.method public initModule(Landroid/content/Context;ILjava/lang/String;)I
    .locals 1
    .parameter "application"
    .parameter "contentType"
    .parameter "parsePolicy"

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public parse(ILjava/lang/String;Lcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "content"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public parse(I[BILcom/futuredial/publicobj/ItemArray;Lcom/futuredial/publicobj/ItemArray;)I
    .locals 1
    .parameter "contentType"
    .parameter "result"
    .parameter "reslength"
    .parameter "iaComplete"
    .parameter "iaUnCompleted"

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method
